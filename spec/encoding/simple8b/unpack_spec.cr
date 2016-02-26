require "../../spec_helper"

describe Simple8b::Decoder do
  context "unpack" do
    decoder = Simple8b::Decoder.new(MemoryIO.new)

    it "packs 240 ints using 0 bits each" do
      decoder.unpack240(0_u64).should eq Slice(UInt64).new(240, 1_u64)
    end

    it "packs 120 ints using 0 bits each" do
      decoder.unpack120(1_u64 << 60).should eq Slice(UInt64).new(120, 1_u64)
    end

    it "packs 60 ints using 1 bit each" do
      max = (1_u64 << 1) - 1
      ints = Slice(UInt64).new(60, max)
      decoder.unpack60(2_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 30 ints using 2 bit each" do
      max = (1_u64 << 2) - 1
      ints = Slice(UInt64).new(30, max)
      decoder.unpack30(3_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 20 ints using 3 bit each" do
      max = (1_u64 << 3) - 1
      ints = Slice(UInt64).new(20, max)
      decoder.unpack20(4_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 15 ints using 4 bit each" do
      max = (1_u64 << 4) - 1
      ints = Slice(UInt64).new(15, max)
      decoder.unpack15(5_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 12 ints using 5 bit each" do
      max = (1_u64 << 5) - 1
      ints = Slice(UInt64).new(12, max)
      decoder.unpack12(6_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 10 ints using 6 bit each" do
      max = (1_u64 << 6) - 1
      ints = Slice(UInt64).new(10, max)
      decoder.unpack10(7_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 8 ints using 7 bit each" do
      max = (1_u64 << 7) - 1
      ints = Slice(UInt64).new(8, max)
      decoder.unpack8(8_u64 << 60 | (1_u64 << 56) - 1).should eq ints # you loose 4 bits
    end

    it "packs 7 ints using 8 bit each" do
      max = (1_u64 << 8) - 1
      ints = Slice(UInt64).new(7, max)
      decoder.unpack7(9_u64 << 60 | (1_u64 << 56) - 1).should eq ints # you loose 4 bits
    end

    it "packs 6 ints using 10 bit each" do
      max = (1_u64 << 10) - 1
      ints = Slice(UInt64).new(6, max)
      decoder.unpack6(10_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 5 ints using 12 bit each" do
      max = (1_u64 << 12) - 1
      ints = Slice(UInt64).new(5, max)
      decoder.unpack5(11_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 4 ints using 15 bit each" do
      max = (1_u64 << 15) - 1
      ints = Slice(UInt64).new(4, max)
      decoder.unpack4(12_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 3 ints using 20 bits each" do
      max = (1_u64 << 20) - 1
      ints = Slice(UInt64).new(3, max)
      decoder.unpack3(13_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 2 ints using 30 bits each" do
      max = (1_u64 << 30) - 1
      ints = Slice(UInt64).new(2, max)
      decoder.unpack2(14_u64 << 60 | 1152921504606846975).should eq ints
    end

    it "packs 1 ints using 60 bits each" do
      max = (1_u64 << 60) - 1
      ints = Slice(UInt64).new(1, max)
      decoder.unpack1(15_u64 << 60 | 1152921504606846975).should eq ints
    end
  end
end
