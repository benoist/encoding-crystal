require "../../spec_helper"

describe DeltaEncoding::Encoder do
  context "write_integer" do
    it "sets the first and previous value if its the first integer" do
      encoder = DeltaEncoding::Encoder.new
      encoder.write_integer(7)
      encoder.first_value.should eq 7
      encoder.previous_value.should eq 7
    end

    it "stores the deltas after the second value" do
      encoder = DeltaEncoding::Encoder.new
      encoder.write_integer(7)
      encoder.pos.should eq 0
      encoder.write_integer(5)
      encoder.pos.should eq 1
      encoder.deltas[0].should eq -2
    end

    it "updates the minimum delta if required" do
      encoder = DeltaEncoding::Encoder.new
      encoder.write_integer(7)
      encoder.min_delta.should eq Int32::MAX
      encoder.write_integer(5)
      encoder.min_delta.should eq -2
    end

    it "flushes after writing n integers where n == block size" do
      encoder = DeltaEncoding::Encoder.new(128, 4)
      values = Slice(Int32).new(129) { 1 }
      values.each do |i|
        encoder.write_integer(i)
      end
      encoder.blocks_buffer.size.should be > 0
      encoder.pos.should eq 0
    end
  end
end
