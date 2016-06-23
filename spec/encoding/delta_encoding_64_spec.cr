require "../spec_helper"

describe DeltaEncoding64 do
  it "encodes and decodes a block" do
    encoder = DeltaEncoding64::Encoder.new
    4.times do |i|
      encoder.write_integer(i.to_i64)
    end
    encoder.flush

    io = MemoryIO.new
    encoder.to_io(io)
    io.rewind
    decoder = DeltaEncoding64::Decoder.new(io)

    decoder.values.to_a.should eq [0, 1, 2, 3]
  end

  it "encodes and decodes 1 value" do
    encoder = DeltaEncoding64::Encoder.new
    encoder.write_integer(1_i64)
    encoder.flush

    io = MemoryIO.new
    encoder.to_io(io)
    io.rewind
    decoder = DeltaEncoding64::Decoder.new(io)

    decoder.values.to_a.should eq [1]
  end


  it "it consumes all bytes when reading" do
    encoder = DeltaEncoding64::Encoder.new
    257.times do |i|
      encoder.write_integer(rand(1466666000).to_i64)
    end
    encoder.flush

    io = MemoryIO.new
    encoder.to_io(io)
    io.rewind

    decoder   = DeltaEncoding64::Decoder.new(io)
    decoder.values.size.should eq 257

    io.pos.should eq io.size
  end
end
