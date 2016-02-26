require "../spec_helper"

describe ZigZag do
  context "encode64" do
    it "encodes int64" do
      ZigZag.encode64(1).should be_a(UInt64)
      ZigZag.encode64(0).should eq 0
      ZigZag.encode64(-1).should eq 1
      ZigZag.encode64(1).should eq 2
      ZigZag.encode64(Int64::MIN).should eq UInt64::MAX
      ZigZag.encode64(Int64::MAX).should eq UInt64::MAX - 1
    end
  end

  context "encode32" do
    it "encodes int32" do
      ZigZag.encode32(1).should be_a(UInt32)
      ZigZag.encode32(0).should eq 0
      ZigZag.encode32(-1).should eq 1
      ZigZag.encode32(1).should eq 2
      ZigZag.encode32(Int32::MIN).should eq UInt32::MAX
      ZigZag.encode32(Int32::MAX).should eq UInt32::MAX - 1
    end
  end

  context "decode64" do
    it "decodes uint64" do
      ZigZag.decode64(1_u64).should be_a(Int64)
      ZigZag.decode64(0_u64).should eq 0
      ZigZag.decode64(1_u64).should eq -1
      ZigZag.decode64(2_u64).should eq 1
      ZigZag.decode64(UInt64::MAX).should eq Int64::MIN
      ZigZag.decode64(UInt64::MAX - 1).should eq Int64::MAX
    end
  end

  context "decode32" do
    it "decodes uint32" do
      ZigZag.decode32(1_u32).should be_a(Int32)
      ZigZag.decode32(0_u32).should eq 0
      ZigZag.decode32(1_u32).should eq -1
      ZigZag.decode32(2_u32).should eq 1
      ZigZag.decode32(UInt32::MAX).should eq Int32::MIN
      ZigZag.decode32(UInt32::MAX - 1).should eq Int32::MAX
    end
  end
end
