# This encoding is adapted from the Binary packing described in "Decoding billions of integers per second through vectorization" (http://arxiv.org/pdf/1209.2137v5.pdf) by D. Lemire and L. Boytsov
# <block size in values> <number of miniblocks in a block> <total value count> <first value>
#
#  * the block size is a multiple of 128 stored as VLQ int
#  * the miniblock count per block is a diviser of the block size stored as VLQ int the number of values in the miniblock is a multiple of 32.
#  * the total value count is stored as a VLQ int
#  * the first value is stored as a zigzag VLQ int

# Each block contains
#
# <min delta> <list of bitwidths of miniblocks> <miniblocks>
#
# * the min delta is a VLQ int (we compute a minimum as we need positive integers for bit packing)
# * the bitwidth of each block is stored as a byte
# * each miniblock is a list of bit packed ints according to the bit width stored at the beginning of the block

require "./vlq"
require "./zig_zag"
require "./bit_packing"

module DeltaEncoding
  class InvalidHeader < Exception
  end

  def self.encode_zig_zag_var_int(value)
    VLQ.encode(ZigZag.encode32(value))
  end

  def self.decode_zig_zag_var_int(io)
    ZigZag.decode32(VLQ.decode(io).to_u32)
  end

  def self.bits_required(value)
    bits_required = 0_u8
    sample = value
    if sample > 0
      while sample > 0 && bits_required < 32
        sample >>= 1
        bits_required += 1
      end
    else
      while sample < 0 && bits_required < 32
        sample >>= 1
        bits_required += 1
      end
    end
    bits_required
  end

  class Encoder
    MAX_BITWIDTH = 32

    getter first_value : Int32
    getter previous_value : Int32
    getter bit_widths : Slice(UInt8)
    getter total_count : Int32
    getter min_delta : Int32
    getter deltas : Slice(Int32)
    getter pos : Int32
    getter blocks_buffer : IO::Memory

    @mini_block_size : Int32

    def initialize(@block_size = 128, @mini_blocks = 4)
      @mini_block_size = @block_size / @mini_blocks
      @blocks_buffer = IO::Memory.new
      @bit_widths = Slice(UInt8).new(4, 0_u8)
      @total_count = 0

      @deltas = Slice(Int32).new(@block_size, 0)
      @pos = 0

      @first_value = 0
      @previous_value = 0
      @min_delta = Int32::MAX
    end

    def write_integer(value)
      @total_count += 1

      if @total_count == 1
        @first_value = value
        @previous_value = @first_value
        return
      end

      delta = value - @previous_value
      @previous_value = value

      @deltas[@pos] = delta
      @pos += 1

      @min_delta = {delta, @min_delta}.min

      _flush if @block_size == @pos
    end

    def flush
      return if @pos == 0
      extra_to_write = @block_size - @pos
      extra_to_write.times { write_integer(@previous_value + @min_delta) }
      @total_count -= extra_to_write
    end

    def _flush
      return if @pos == 0

      @pos.times do |i|
        @deltas[i] = @deltas[i] - @min_delta
      end

      write_min_delta

      mini_blocks_to_flush = mini_block_count_to_flush(@pos)

      calculate_bit_widths_for_delta_block_buffer(mini_blocks_to_flush)

      mini_blocks_to_flush.times do |index|
        @blocks_buffer.write_bytes(@bit_widths[index], IO::ByteFormat::LittleEndian)
      end

      mini_blocks_to_flush.times do |index|
        bit_width = @bit_widths[index]
        if bit_width > 0
          packed = BitPacking.pack32values(@deltas[0, 32], bit_width)

          packed.each do |value|
            @blocks_buffer.write_bytes(value, IO::ByteFormat::LittleEndian)
          end
        end
        @deltas += 32
      end

      @min_delta = Int32::MAX
      @deltas = Slice(Int32).new(@block_size, 0)
      @bit_widths = Slice(UInt8).new(4, 0_u8)
      @pos = 0
    end

    def mini_block_count_to_flush(number_count)
      (number_count / @mini_block_size.to_f).ceil.to_i
    end

    def write_min_delta
      @blocks_buffer.write(DeltaEncoding.encode_zig_zag_var_int(@min_delta))
    end

    def calculate_bit_widths_for_delta_block_buffer(mini_blocks_to_flush)
      mini_blocks_to_flush.times do |index|
        max = @deltas[index * @mini_block_size, @mini_block_size].map { |delta| DeltaEncoding.bits_required(delta) }.max
        @bit_widths[index] = max
      end
    end

    def bytes
      io = IO::Memory.new
      to_io(io)
      io.to_slice
    end

    def to_io(io)
      io.write(VLQ.encode(@block_size))
      io.write(VLQ.encode(@mini_blocks))
      io.write(VLQ.encode(@total_count))
      io.write(DeltaEncoding.encode_zig_zag_var_int(@first_value))

      @blocks_buffer.rewind
      IO.copy(@blocks_buffer, io)
    end
  end

  class Decoder
    getter block_size : Int32
    getter mini_blocks : Int32
    getter first_value : Int32
    getter previous_value : Int32
    getter bit_widths : Slice(UInt8)
    getter total_count : Int32
    getter min_delta : Int32
    getter deltas : Slice(Int32)

    # getter pos : Int32

    def initialize(@io : IO)
      @block_size = VLQ.decode(@io).to_i
      @mini_blocks = VLQ.decode(@io).to_i

      if @block_size == 0 || @mini_blocks == 0 || @block_size / @mini_blocks != 32
        raise InvalidHeader.new("Invalid header #{@block_size} #{@mini_blocks}")
      end

      @total_count = VLQ.decode(@io).to_i
      @values_read = 0
      @first_value = DeltaEncoding.decode_zig_zag_var_int(@io).to_i
      @previous_value = @first_value

      @min_delta = 0
      @bit_widths = Slice(UInt8).new(0)
      @deltas = Slice(Int32).new(0, 0)

      read_block if @total_count > 1
    end

    def values
      values = Array(Int32).new(@total_count, 0)
      @total_count.times do |i|
        values[i] = read_integer
      end
      flush
      values
    end

    def read_integer
      check_read

      @values_read += 1
      return @first_value if @values_read == 1

      read_deltas if @deltas.size == 0

      value = @previous_value + @deltas[0]
      @previous_value = value
      @deltas += 1
      value
    end

    def check_read
      if all_read?
        raise "All values read"
      end
    end

    def all_read?
      @values_read == @total_count
    end

    def read_block
      @min_delta = DeltaEncoding.decode_zig_zag_var_int(@io)
      @bit_widths = Slice(UInt8).new(@mini_blocks)

      @mini_blocks.times do |i|
        @bit_widths[i] = @io.read_bytes(UInt8)
      end
    end

    def flush
      @bit_widths.each do |bit_width|
        bit_width = bit_width.to_i
        packed = Slice(UInt32).new(bit_width, 0_u32)
        bit_width.times do |i|
          packed[i] = UInt32.from_io(@io, IO::ByteFormat::SystemEndian)
        end
      end
    end

    def read_deltas
      read_block if @bit_widths.size == 0

      packed = Slice(UInt32).new(@bit_widths[0].to_i, 0_u32)
      @bit_widths[0].to_i.times do |i|
        packed[i] = UInt32.from_io(@io, IO::ByteFormat::SystemEndian)
      end

      if @bit_widths[0] > 0
        @deltas = BitPacking.unpack32values(packed, @bit_widths[0])
      else
        @deltas = Slice(Int32).new(32, 0)
      end

      @deltas.size.times do |i|
        @deltas[i] = (@deltas[i] + @min_delta).to_i
      end

      @bit_widths += 1
    end
  end
end
