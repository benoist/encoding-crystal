require "../spec_helper"

describe VLQ do
  context "encode" do
    it "returns a slice of 0 if value is 0" do
      VLQ.encode(0).should eq Slice(UInt8).new(1, 0_u8)
    end

    it "returns a slice of 1 byte if the value is <= 127" do
      VLQ.encode(1).should eq Slice(UInt8).new(1, 1_u8)
      VLQ.encode(127).should eq Slice(UInt8).new(1, 127_u8)
    end

    it "returns a slice of 2 byte if the value is <= #{2**14 - 1}" do
      VLQ.encode(127).should eq Slice(UInt8).new(1, 127_u8)
      VLQ.encode((2**14 - 1).to_i).should eq as_slice(UInt8[255, 127])
    end

    it "returns a slice of 3 bytes if the value <= " do
      VLQ.encode(106_903).should eq as_slice(UInt8[134, 195, 23])
      VLQ.encode((2**21 - 1).to_i).should eq as_slice(UInt8[255, 255, 127])
    end
  end

  context "decode" do
    it "decodes from a slice with 2 bytes" do
      VLQ.decode(as_slice(UInt8[127])).should eq 127
    end

    it "decodes from a slice with 2 bytes" do
      VLQ.decode(as_slice(UInt8[255, 127])).should eq (2**14 - 1)
    end

    it "decodes from a slice with 3 bytes" do
      VLQ.decode(as_slice(UInt8[255, 255, 127])).should eq (2**21 - 1)
    end
  end
end
