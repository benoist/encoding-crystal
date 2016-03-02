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
      encoder.deltas.size.should eq 0
      encoder.write_integer(5)
      encoder.deltas.size.should eq 1
      encoder.deltas[0].should eq -2
    end

    it "updates the minimum delta if required" do
      encoder = DeltaEncoding::Encoder.new
      encoder.write_integer(7)
      encoder.min_delta_in_current_block.should eq Int32::MAX
      encoder.write_integer(5)
      encoder.min_delta_in_current_block.should eq -2
    end

    it "flushes after writing n integers where n == block size" do
      encoder = DeltaEncoding::Encoder.new(8, 1)
      [7, 5, 3, 1, 2, 3, 4, 5].each do |i|
        encoder.write_integer(i)
      end
      encoder.flush
    end
  end
end
