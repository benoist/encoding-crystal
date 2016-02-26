# Package simple8b implements the 64bit integer encoding algoritm as published
# by Ann and Moffat in "Index compression using 64-bit words", Softw. Pract. Exper. 2010; 40:131–147
# It is capable of encoding multiple integers with values betweeen 0 and to 1^60 -1, in a single word.# Simple8b is 64bit word-sized encoder that packs multiple integers into a single word using
# a 4 bit selector values and up to 60 bits for the remaining values.  Integers are encoded using
# the following table:
# ┌──────────────┬─────────────────────────────────────────────────────────────┐
# │   Selector   │       0    1   2   3   4   5   6   7  8  9  0 11 12 13 14 15│
# ├──────────────┼─────────────────────────────────────────────────────────────┤
# │     Bits     │       0    0   1   2   3   4   5   6  7  8 10 12 15 20 30 60│
# ├──────────────┼─────────────────────────────────────────────────────────────┤
# │      N       │     240  120  60  30  20  15  12  10  8  7  6  5  4  3  2  1│
# ├──────────────┼─────────────────────────────────────────────────────────────┤
# │   Wasted Bits│      60   60   0   0   0   0  12   0  4  4  0  0  0  0  0  0│
# └──────────────┴─────────────────────────────────────────────────────────────┘
# For example, when the number of values can be encoded using 4 bits, selected 5 is encoded in the
# 4 most significant bits followed by 15 values encoded used 4 bits each in the remaing 60 bits.
#
# Ported from https://github.com/jwilder/encoding

require "../encoding/simple8b/*"

module Simple8b
  class Error < Exception
  end

  class UnpackError < Error
  end

  class PackError < Error
  end

  MAX_VALUE = (1_u64 << 60) - 1

  class Encoder
    include Pack

    getter :bytes
    getter :buffer

    def self.new
      new(MemoryIO.new)
    end

    def initialize(@io)
      @buffer = Slice(UInt64).new(240)
      @pos = 0
    end

    def write(integer : Int::Unsigned)
      if @pos == @buffer.size
        flush
      end
      @buffer[@pos] = integer.to_u64
      @pos += 1
    end

    def write(ints : Slice(UInt64))
      ints.each do |integer|
        write(integer)
      end
    end

    def flush
      while @buffer.size > 0
        encoded, num_ints = encode(@buffer)
        @io.write_bytes(encoded, IO::ByteFormat::BigEndian)
        @buffer += num_ints
      end

      @buffer = Slice(UInt64).new(240)
      @pos = 0
    end

    def bytes
      flush
      @io.to_slice
    end

    def encode(ints)
      if can_pack(ints, 240, 0)
        {pack240(ints), 240}
      elsif can_pack(ints, 120, 0)
        {pack120(ints), 120}
      elsif can_pack(ints, 60, 1)
        {pack60(ints[0, 60]), 60}
      elsif can_pack(ints, 30, 2)
        {pack30(ints[0, 30]), 30}
      elsif can_pack(ints, 20, 3)
        {pack20(ints[0, 20]), 20}
      elsif can_pack(ints, 15, 4)
        {pack15(ints[0, 15]), 15}
      elsif can_pack(ints, 12, 5)
        {pack12(ints[0, 12]), 12}
      elsif can_pack(ints, 10, 6)
        {pack10(ints[0, 10]), 10}
      elsif can_pack(ints, 8, 7)
        {pack8(ints[0, 8]), 8}
      elsif can_pack(ints, 7, 8)
        {pack7(ints[0, 7]), 7}
      elsif can_pack(ints, 6, 10)
        {pack6(ints[0, 6]), 6}
      elsif can_pack(ints, 5, 12)
        {pack5(ints[0, 5]), 5}
      elsif can_pack(ints, 4, 15)
        {pack4(ints[0, 4]), 4}
      elsif can_pack(ints, 3, 20)
        {pack3(ints[0, 3]), 3}
      elsif can_pack(ints, 2, 30)
        {pack2(ints[0, 2]), 2}
      elsif can_pack(ints, 1, 60)
        {pack1(ints[0, 1]), 1}
      else
        if ints.size > 0
          raise IndexError.new
        end
        return 0, 0, nil
      end
    end

    def can_pack(ints, n, bits)
      return false if ints.size < n

      return ints.all?(&.==(1)) if bits == 0

      size = {n, ints.size}.min

      max = (1_u64 << bits) - 1
      ints[0, size].all?(&.<=(max))
    end
  end

  class Decoder
    include Unpack

    def initialize(@io)
      @buffer = Slice(UInt64).new(0)
    end

    def has_more?
      @io.tell < @io.bytesize || @buffer.size > 0
    end

    def read(slice)
      pos = 0
      while pos < slice.size
        value = read
        if value
          slice[pos] = value
          pos += 1
        else
          break
        end
      end
      slice[0, pos]
    end

    def read
      if @buffer.size == 0
        return nil if @io.tell >= @io.bytesize
        @buffer, _ = decode(@io.read_bytes(UInt64, IO::ByteFormat::BigEndian))
      end
      value = @buffer[0]
      @buffer += 1
      value
    end

    def decode(encoded)
      selector = encoded >> 60
      case selector
      when 0
        {unpack240(encoded), 240}
      when 1
        {unpack120(encoded), 120}
      when 2
        {unpack60(encoded), 60}
      when 3
        {unpack30(encoded), 30}
      when 4
        {unpack20(encoded), 20}
      when 5
        {unpack15(encoded), 15}
      when 6
        {unpack12(encoded), 12}
      when 7
        {unpack10(encoded), 10}
      when 8
        {unpack8(encoded), 8}
      when 9
        {unpack7(encoded), 7}
      when 10
        {unpack6(encoded), 6}
      when 11
        {unpack5(encoded), 5}
      when 12
        {unpack4(encoded), 4}
      when 13
        {unpack3(encoded), 3}
      when 14
        {unpack2(encoded), 2}
      when 15
        {unpack1(encoded), 1}
      else
        raise UnpackError.new("Invalid selector: #{selector}")
      end
    end
  end
end
