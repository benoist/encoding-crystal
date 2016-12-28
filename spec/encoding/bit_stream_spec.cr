require "../spec_helper"

describe BitStream do
  context "write_bit" do
    it "writes a bit to the current byte" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      bit_stream.write_bit(true)
      bit_stream.write_bit(true)
      bit_stream.current_byte.should eq 0b11000000
    end

    it "writes a byte to the io" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      8.times { bit_stream.write_bit(true) }
      io.to_slice.should eq Slice(UInt8).new(1, 255_u8)
    end
  end

  context "write_byte" do
    it "writes the possible bits to the current byte" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      bit_stream.write_bit(true)
      bit_stream.write_bit(true)
      bit_stream.write_byte(255_u8)

      io.to_slice.should eq Slice(UInt8).new(1, 255_u8)
      bit_stream.current_byte.should eq 0b11000000
    end
  end

  context "write_bits" do
    it "writes n bits from the value to the stream" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      bit_stream.write_bits((2 ** 9 - 1).to_u64, 9)
      io.to_slice.should eq Slice(UInt8).new(1, 255_u8)
      bit_stream.current_byte.should eq 0b10000000
    end
  end

  context "flush" do
    it "writes the current byte and adds the remaining bits with ones" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      bit_stream.write_bit(true)
      bit_stream.write_bit(true)
      bit_stream.flush(true)
      io.to_slice.should eq Slice(UInt8).new(1, 255_u8)
    end

    it "writes the current byte and adds the remaining bits with ones" do
      io = IO::Memory.new
      bit_stream = BitStream.new(io, :write)
      bit_stream.write_bit(true)
      bit_stream.write_bit(true)
      bit_stream.flush(false)
      io.to_slice.should eq Slice(UInt8).new(1, 192_u8)
    end
  end

  context "read_bit" do
    it "returns true if a bit is 1" do
      io = IO::Memory.new(Slice(UInt8).new(1, 255_u8))
      bit_stream = BitStream.new(io, :read)
      bit_stream.read_bit.should eq true
    end

    it "returns false if a bit is 0" do
      io = IO::Memory.new(Slice(UInt8).new(1, 0_u8))
      bit_stream = BitStream.new(io, :read)
      bit_stream.read_bit.should eq false
    end
  end

  context "read_byte" do
    it "reads the first byte" do
      io = IO::Memory.new(Slice(UInt8).new(1, 255_u8))
      bit_stream = BitStream.new(io, :read)
      bit_stream.read_byte.should eq 255_u8
    end

    it "reads a 8 bits and returns a byte" do
      io = IO::Memory.new(Slice(UInt8).new(2, 255_u8))
      bit_stream = BitStream.new(io, :read)
      bit_stream.read_bit
      bit_stream.read_byte.should eq 255_u8
      bit_stream.current_byte.should eq 0b11111110
    end
  end

  context "read_bits" do
    it "reads n bits from the stream" do
      io = IO::Memory.new(Slice(UInt8).new(2, 255_u8))
      bit_stream = BitStream.new(io, :read)
      bit_stream.read_bits(3).should eq 0b111
    end
  end
end
