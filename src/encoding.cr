module Encoding
  def self.float64bits(value)
    p = pointerof(value).as(UInt64*)
    p[0]
  end

  def self.float64frombits(bits)
    p = pointerof(bits).as(Float64*)
    p[0]
  end

  def self.leading_zeros(value)
    count = 1_u8

    if (value >> 32) == 0
      count = count + 32
      value = value << 32
    end

    if (value >> (32 + 16)) == 0
      count = count + 16
      value = value << 16
    end

    if (value >> (32 + 16 + 8)) == 0
      count = count + 8
      value = value << 8
    end

    if (value >> (32 + 16 + 8 + 4)) == 0
      count = count + 4
      value = value << 4
    end

    if (value >> (32 + 16 + 8 + 4 + 2)) == 0
      count = count + 2
      value = value << 2
    end

    count - (value >> 63)
  end

  def self.trailing_zeros(value)
    if value == 0
      return 64_u8
    end

    count = 0_u8

    if (value & 0x00000000FFFFFFFF) == 0
      count = count + 32
      value = value >> 32
    end
    if (value & 0x000000000000FFFF) == 0
      count = count + 16
      value = value >> 16
    end
    if (value & 0x00000000000000FF) == 0
      count = count + 8
      value = value >> 8
    end
    if (value & 0x000000000000000F) == 0
      count = count + 4
      value = value >> 4
    end
    if (value & 0x0000000000000003) == 0
      count = count + 2
      value = value >> 2
    end
    if (value & 0x0000000000000001) == 0
      count = count + 1
    end

    count
  end
end
