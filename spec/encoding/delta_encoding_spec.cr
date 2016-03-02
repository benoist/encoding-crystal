require "../spec_helper"

describe DeltaEncoding do
  context "bits_required" do
    it "returns the number of bits required to decode a value" do
      DeltaEncoding.bits_required(1).should eq 1
      DeltaEncoding.bits_required((2**8 - 1).to_i).should eq 8
      DeltaEncoding.bits_required((2**9 - 1).to_i).should eq 9
    end
  end

  context "decode zig zag var int" do
    it "returns the zig zag encoded var int" do
      slice = Slice(UInt8).new(1, 0b00000100_u8) # ZigZag shifts one bit
      io = MemoryIO.new(slice)
      DeltaEncoding.decode_zig_zag_var_int(io).should eq 2
    end
  end

  context "encode zig zag var int" do
    it "returns a zig zag encoded var int" do
      slice = Slice(UInt8).new(1, 0b00000100_u8) # ZigZag shifts one bit
      DeltaEncoding.encode_zig_zag_var_int(2).should eq slice
    end
  end
end
