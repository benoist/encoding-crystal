require "../spec_helper"

describe Simple8b::Encoder do
  context "write" do
    it "writes an integer to the buffer" do
      encoder = Simple8b::Encoder.new
      encoder.write(1_u64)
      encoder.flush
      slice = encoder.bytes

      io = MemoryIO.new(slice)
      io.read_bytes(UInt64, IO::ByteFormat::BigEndian).should eq 2305843009213693953_u64
    end

    it "writes a slice of integers to the buffer" do
      encoder = Simple8b::Encoder.new
      encoder.write(Slice(UInt64).new(60, 1_u64))
      encoder.flush
      slice = encoder.bytes

      io = MemoryIO.new(slice)
      io.read_bytes(UInt64, IO::ByteFormat::BigEndian).should eq 3458764513820540927_u64
    end
  end

  context "encode" do
    encoder = Simple8b::Encoder.new

    it "encodes ints using 1 bits with max value #{(1_u64 << 1) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 1) - 1)).should eq({(2_u64 << 60 | (1_u64 << 60) - 1), 60})
    end

    it "encodes ints using 2 bits with max value #{(1_u64 << 2) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 2) - 1)).should eq({(3_u64 << 60 | (1_u64 << 60) - 1), 30})
    end

    it "encodes ints using 3 bits with max value #{(1_u64 << 3) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 3) - 1)).should eq({(4_u64 << 60 | (1_u64 << 60) - 1), 20})
    end

    it "encodes ints using 4 bits with max value #{(1_u64 << 4) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 4) - 1)).should eq({(5_u64 << 60 | (1_u64 << 60) - 1), 15})
    end

    it "encodes ints using 5 bits with max value #{(1_u64 << 5) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 5) - 1)).should eq({(6_u64 << 60 | (1_u64 << 60) - 1), 12})
    end

    it "encodes ints using 6 bits with max value #{(1_u64 << 6) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 6) - 1)).should eq({(7_u64 << 60 | (1_u64 << 60) - 1), 10})
    end

    it "encodes ints using 7 bits with max value #{(1_u64 << 7) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 7) - 1)).should eq({(8_u64 << 60 | (1_u64 << 56) - 1), 8})
    end

    it "encodes ints using 8 bits with max value #{(1_u64 << 8) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 8) - 1)).should eq({(9_u64 << 60 | (1_u64 << 56) - 1), 7})
    end

    it "encodes ints using 10 bits with max value #{(1_u64 << 10) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 10) - 1)).should eq({(10_u64 << 60 | (1_u64 << 60) - 1), 6})
    end

    it "encodes ints using 12 bits with max value #{(1_u64 << 12) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 12) - 1)).should eq({(11_u64 << 60 | (1_u64 << 60) - 1), 5})
    end

    it "encodes ints using 15 bits with max value #{(1_u64 << 15) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 15) - 1)).should eq({(12_u64 << 60 | (1_u64 << 60) - 1), 4})
    end

    it "encodes ints using 20 bits with max value #{(1_u64 << 20) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 20) - 1)).should eq({(13_u64 << 60 | (1_u64 << 60) - 1), 3})
    end

    it "encodes ints using 30 bits with max value #{(1_u64 << 30) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 30) - 1)).should eq({(14_u64 << 60 | (1_u64 << 60) - 1), 2})
    end

    it "encodes ints using 60 bits with max value #{(1_u64 << 60) - 1}" do
      encoder.encode(Slice(UInt64).new(60, (1_u64 << 60) - 1)).should eq({(15_u64 << 60 | (1_u64 << 60) - 1), 1})
    end
  end

  context "can_pack" do
    encoder = Simple8b::Encoder.new

    it "checks selector 0,1 using 0 bits (only values 1)" do
      encoder.can_pack(Slice(UInt64).new(2, 1_u64), 2, 0).should eq true
      encoder.can_pack(Slice(UInt64).new(2, 2_u64), 2, 0).should eq false
    end

    {% for bits in [1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 15, 20, 30, 60] %}
      max = (1_u64 << {{bits.id}}) - 1
      it "checks using {{bits.id}} bits with max value #{(1_u64 << {{bits.id}}) - 1}" do
        encoder.can_pack(Slice(UInt64).new(2, (1_u64 << {{bits.id}}) - 1), 2, {{bits.id}}).should eq true
        encoder.can_pack(Slice(UInt64).new(2, max + 1), 2, {{bits.id}}).should eq false
      end
    {% end %}
  end
end
