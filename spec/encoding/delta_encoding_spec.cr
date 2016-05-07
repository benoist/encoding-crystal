require "../spec_helper"

describe DeltaEncoding do
  it "encodes and decodes a block" do
    encoder = DeltaEncoding::Encoder.new
    4.times do |i|
      encoder.write_integer(i)
    end
    encoder.flush

    io = MemoryIO.new
    encoder.to_io(io)
    io.rewind
    decoder = DeltaEncoding::Decoder.new(io)

    decoder.values.to_a.should eq [0, 1, 2, 3]
  end
end
