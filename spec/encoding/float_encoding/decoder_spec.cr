require "../../spec_helper"

def new_decoder(values = [1, 2])
  io = MemoryIO.new
  encoder = FloatEncoding::Encoder.new(io)
  values.each do |value|
    encoder.push(value)
  end
  encoder.finish
  io.rewind
  io.rewind
  FloatEncoding::Decoder.new(io)
end

describe FloatEncoding::Decoder do
  it "reads the first value" do
    decoder = new_decoder
    decoder.value.should eq 1.0
  end

  context "next" do
    it "set the value if there is a next value" do
      decoder = new_decoder
      decoder.next
      decoder.value.should eq 1.0
      decoder.next
      decoder.value.should eq 2.0
    end

    it "returns false if there is no next value" do
      values = [1.0, 2.0, 3.0]
      decoder = new_decoder(values)
      values.each do |value|
        decoder.next.should eq true
        decoder.value.should eq value
      end
      decoder.next.should eq false
    end
  end
end
