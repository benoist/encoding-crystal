module VLQ # Variable-length quantity https://en.wikipedia.org/wiki/Variable-length_quantity
  MAX_BYTES = 16

  def self.encode(value)
    return Slice(UInt8).new(1, 0_u8) if value == 0

    bytes = Slice(UInt8).new(MAX_BYTES)
    pos = MAX_BYTES
    while value > 0
      byte = 0b01111111_u8 & value
      byte |= 0b10000000_u8 if pos < MAX_BYTES
      value >>= 7
      bytes[pos - 1] = byte
      pos -= 1
    end
    bytes + pos
  end

  def self.decode(slice : Slice(UInt8))
    decode(MemoryIO.new(slice))
  end

  def self.decode(io : IO)
    byte = uninitialized UInt8
    io.read(Slice.new(pointerof(byte), 1))

    value = 0_u64
    while byte >> 7 == 1
      value |= 0b01111111 & byte
      value <<= 7
      io.read(Slice.new(pointerof(byte), 1))
    end
    value |= 0b01111111 & byte
  end
end
