class BitStream
  property :current_byte

  def self.reader(io)
    new(io, :read)
  end

  def self.writer(io)
    new(io, :write)
  end

  def initialize(@io, read_or_write)
    @current_byte = 0_u8
    @count = read_or_write == :read ? 0 : 8
  end

  def read_bit
    if @count == 0
      @current_byte = @io.read_byte.not_nil!
      @count = 8
    end

    @count -= 1
    bit = @current_byte & 0x80
    @current_byte <<= 1
    bit != 0
  end

  def read_byte
    if @count == 0
      @current_byte = @io.read_byte.not_nil!
      return @current_byte
    end

    byte = @current_byte

    @current_byte = @io.read_byte.not_nil!

    byte |= @current_byte >> @count
    @current_byte <<= 8 - @count

    byte
  end

  def read_bits(bits)
    value = 0_u64

    while bits >= 8
      value = (value << 8) | read_byte
      bits -= 8
    end

    while bits > 0
      byte = read_bit
      value <<= 1_u8
      if byte
        value |= 1_u8
      end
      bits -= 1
    end
    value
  end

  def write_bit(bit : Bool)
    if bit
      @current_byte |= 1_u8 << (@count - 1)
    end

    @count -= 1

    if @count == 0
      @io.write_byte(@current_byte)
      @current_byte = 0_u8
      @count = 8
    end
  end

  def write_byte(byte : UInt8)
    @current_byte |= byte >> (8 - @count)

    @io.write_byte(@current_byte)

    @current_byte = byte << @count
  end

  def write_bits(value : UInt64, bits)
    value <<= 64 - bits

    while bits >= 8
      write_byte (value >> 56).to_u8
      value <<= 8
      bits -= 8
    end

    while bits > 0
      write_bit((value >> 63) == 1)
      value <<= 1
      bits -= 1
    end
  end

  def flush(bit)
    @count.times { write_bit(bit) }
  end

  def to_s(io : IO)
    io << "BitStream["
    @io.to_slice.map(&.to_s(2).rjust(8, '0')).each do |bits|
      io << bits
    end
    io << (@current_byte).to_s(2)
    io << "]"
  end
end
