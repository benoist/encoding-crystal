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

module DeltaEncoding
  def self.encode_zig_zag_var_int(value)
    VLQ.encode(ZigZag.encode32(value))
  end

  def self.decode_zig_zag_var_int(io)
    ZigZag.decode32(VLQ.decode(io).to_u32)
  end

  def self.bits_required(value)
    bits_required = 0_u8
    sample = value
    while sample > 0
      sample >>= 1
      bits_required += 1
    end
    bits_required
  end

  class Encoder
    MAX_BITWIDTH = 32

    getter :first_value
    getter :previous_value
    getter :bit_widths
    getter :total_value_count
    getter :delta_values_to_flush
    getter :min_delta_in_current_block
    getter :deltas

    def initialize(@block_size = 128, @mini_block_size = 4)
      @mini_block_size_in_values = @block_size / @mini_block_size
      @output = MemoryIO.new
      @bit_widths = Array(UInt8).new
      @total_value_count = 0
      @delta_values_to_flush = 0

      @deltas = Array(Int32).new(128)
      @mini_block_buffer = MemoryIO.new
      @first_value = 0
      @previous_value = 0
      @min_delta_in_current_block = Int32::MAX
    end

    def write_integer(value)
      @total_value_count += 1

      if @total_value_count == 1
        @first_value = value
        @previous_value = @first_value
        return
      end

      delta = value - @previous_value
      @previous_value = value

      @deltas << delta
      @delta_values_to_flush += 1

      if delta < @min_delta_in_current_block
        @min_delta_in_current_block = delta
      end

      if @block_size == @delta_values_to_flush
        flush
      end
    end

    def flush
      @delta_values_to_flush.times do |i|
        @deltas[i] = @deltas[i] - @min_delta_in_current_block
      end

      write_min_delta

      mini_blocks_to_flush = mini_block_count_to_flush(@delta_values_to_flush)

      calculate_bit_widths_for_delta_block_buffer(mini_blocks_to_flush)

      @bit_widths.each do |bit_width|
        @output.write_bytes(bit_width.to_u8, IO::ByteFormat::LittleEndian)
      end

      mini_blocks_to_flush.times do
        # puts @deltas[0, 8]
      end
    end

    def mini_block_count_to_flush(number_count)
      (number_count / @mini_block_size_in_values.to_f).ceil.to_i
    end

    def write_min_delta
      # puts "min delta = #{@min_delta_in_current_block}"
      @output.write(DeltaEncoding.encode_zig_zag_var_int(@min_delta_in_current_block))
    end

    def calculate_bit_widths_for_delta_block_buffer(mini_blocks_to_flush)
      mini_blocks_to_flush.times do |index|
        mask = 0
        mini_start = index * 4

        # The end of current mini block could be the end of current block(deltaValuesToFlush) buffer when data is not aligned to mini block
        mini_end = {(index + 1) * 4, @delta_values_to_flush}.min

        (mini_start...mini_end).each do |i|
          mask |= @deltas[i]
        end

        @bit_widths << DeltaEncoding.bits_required(mask)
      end
    end
  end

  class Decoder
  end
end
