require "../spec_helper"

describe Simple8b::Encoder do
  context "pack" do
    encoder = Simple8b::Encoder.new

    it "packs 240 ints using 0 bits each" do
      encoder.pack240(Slice(UInt64).new(240, 1_u64)).should eq 0_u64
    end

    it "packs 120 ints using 0 bits each" do
      encoder.pack120(Slice(UInt64).new(120, 1_u64)).should eq 1_u64 << 60
    end

    it "packs 60 ints using 1 bit each" do
      max = (1_u64 << 1) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack60(ints).should eq 2_u64 << 60 | 1152921504606846975
    end

    it "packs 30 ints using 2 bit each" do
      max = (1_u64 << 2) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack30(ints).should eq 3_u64 << 60 | 1152921504606846975
    end

    it "packs 20 ints using 3 bit each" do
      max = (1_u64 << 3) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack20(ints).should eq 4_u64 << 60 | 1152921504606846975
    end

    it "packs 15 ints using 4 bit each" do
      max = (1_u64 << 4) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack15(ints).should eq 5_u64 << 60 | 1152921504606846975
    end

    it "packs 12 ints using 5 bit each" do
      max = (1_u64 << 5) - 1
      ints = Slice(UInt64).new(12, max)
      encoder.pack12(ints).should eq 6_u64 << 60 | 1152921504606846975
    end

    it "packs 10 ints using 6 bit each" do
      max = (1_u64 << 6) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack10(ints).should eq 7_u64 << 60 | 1152921504606846975
    end

    it "packs 8 ints using 7 bit each" do
      max = (1_u64 << 7) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack8(ints).should eq (8_u64 << 60 | (1_u64 << 56) - 1) # you loose 4 bits
    end

    it "packs 7 ints using 8 bit each" do
      max = (1_u64 << 8) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack7(ints).should eq (9_u64 << 60 | (1_u64 << 56) - 1) # you loose 4 bits
    end

    it "packs 6 ints using 10 bit each" do
      max = (1_u64 << 10) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack6(ints).should eq 10_u64 << 60 | 1152921504606846975
    end

    it "packs 5 ints using 12 bit each" do
      max = (1_u64 << 12) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack5(ints).should eq 11_u64 << 60 | 1152921504606846975
    end

    it "packs 4 ints using 15 bit each" do
      max = (1_u64 << 15) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack4(ints).should eq 12_u64 << 60 | 1152921504606846975
    end

    it "packs 3 ints using 20 bits each" do
      max = (1_u64 << 20) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack3(ints).should eq 13_u64 << 60 | 1152921504606846975
    end

    it "packs 2 ints using 30 bits each" do
      max = (1_u64 << 30) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack2(ints).should eq 14_u64 << 60 | 1152921504606846975
    end

    it "packs 1 ints using 60 bits each" do
      max = (1_u64 << 60) - 1
      ints = Slice(UInt64).new(60, max)
      encoder.pack1(ints).should eq 15_u64 << 60 | 1152921504606846975
    end
  end
end
