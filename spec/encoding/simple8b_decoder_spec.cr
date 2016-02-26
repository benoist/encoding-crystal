require "../spec_helper"

describe Simple8b::Decoder do
  context "decode" do
    decoder = Simple8b::Decoder.new(MemoryIO.new)
    it "decodes ints using 1 bits with max value #{(1_u64 << 1) - 1}" do
      decoder.decode((2_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(60, (1_u64 << 1) - 1), 60})
    end

    it "decodes ints using 2 bits with max value #{(1_u64 << 2) - 1}" do
      decoder.decode((3_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(30, (1_u64 << 2) - 1), 30})
    end

    it "decodes ints using 3 bits with max value #{(1_u64 << 3) - 1}" do
      decoder.decode((4_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(20, (1_u64 << 3) - 1), 20})
    end

    it "decodes ints using 4 bits with max value #{(1_u64 << 4) - 1}" do
      decoder.decode((5_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(15, (1_u64 << 4) - 1), 15})
    end

    it "decodes ints using 5 bits with max value #{(1_u64 << 5) - 1}" do
      decoder.decode((6_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(12, (1_u64 << 5) - 1), 12})
    end

    it "decodes ints using 6 bits with max value #{(1_u64 << 6) - 1}" do
      decoder.decode((7_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(10, (1_u64 << 6) - 1), 10})
    end

    it "decodes ints using 7 bits with max value #{(1_u64 << 7) - 1}" do
      decoder.decode((8_u64 << 60 | (1_u64 << 56) - 1)).should eq({Slice(UInt64).new(8, (1_u64 << 7) - 1), 8})
    end

    it "decodes ints using 8 bits with max value #{(1_u64 << 8) - 1}" do
      decoder.decode((9_u64 << 60 | (1_u64 << 56) - 1)).should eq({Slice(UInt64).new(7, (1_u64 << 8) - 1), 7})
    end

    it "decodes ints using 10 bits with max value #{(1_u64 << 10) - 1}" do
      decoder.decode((10_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(6, (1_u64 << 10) - 1), 6})
    end

    it "decodes ints using 12 bits with max value #{(1_u64 << 12) - 1}" do
      decoder.decode((11_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(5, (1_u64 << 12) - 1), 5})
    end

    it "decodes ints using 15 bits with max value #{(1_u64 << 15) - 1}" do
      decoder.decode((12_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(4, (1_u64 << 15) - 1), 4})
    end

    it "decodes ints using 20 bits with max value #{(1_u64 << 20) - 1}" do
      decoder.decode((13_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(3, (1_u64 << 20) - 1), 3})
    end

    it "decodes ints using 30 bits with max value #{(1_u64 << 30) - 1}" do
      decoder.decode((14_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(2, (1_u64 << 30) - 1), 2})
    end

    it "decodes ints using 60 bits with max value #{(1_u64 << 60) - 1}" do
      decoder.decode((15_u64 << 60 | (1_u64 << 60) - 1)).should eq({Slice(UInt64).new(1, (1_u64 << 60) - 1), 1})
    end
  end

  context "read" do
    it "reads an integer from the io" do
      io = MemoryIO.new
      io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
      io.rewind
      decoder = Simple8b::Decoder.new(io)

      decoder.read.should eq 1_u64
    end

    it "reads a slice of integers from the io" do
      io = MemoryIO.new
      io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
      io.rewind
      decoder = Simple8b::Decoder.new(io)

      decoder.read(Slice(UInt64).new(240)).should eq Slice(UInt64).new(60, 1_u64)
    end
  end

  context "has_more?" do
    it "return true if the io contains more bytes" do
      io = MemoryIO.new
      io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
      io.rewind
      decoder = Simple8b::Decoder.new(io)
      decoder.has_more?.should eq true
    end

    it "return true if the buffer contains more integers" do
      io = MemoryIO.new
      io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
      io.rewind
      decoder = Simple8b::Decoder.new(io)
      decoder.read
      decoder.has_more?.should eq true
    end

    it "returns false if the io and buffer are empty" do
      io = MemoryIO.new
      io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
      io.rewind
      decoder = Simple8b::Decoder.new(io)
      decoder.read(Slice(UInt64).new(240))

      decoder.has_more?.should eq false
    end
  end
end
