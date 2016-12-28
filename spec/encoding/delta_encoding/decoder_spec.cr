require "../../spec_helper"

def encoded
  encoder = DeltaEncoding::Encoder.new(128, 4)
  values = Slice(Int32).new(257) { |i| i == 0 ? 0 : i == 1 ? -1 : i - 2 }
  values.each do |i|
    encoder.write_integer(i)
  end

  io = IO::Memory.new
  encoder.to_io(io)
  io.rewind
  io
end

describe DeltaEncoding::Decoder do
  it "reads the values from the header and the header of the mini block" do
    decoder = DeltaEncoding::Decoder.new(encoded)
    decoder.block_size.should eq 128
    decoder.mini_blocks.should eq 4
    decoder.total_count.should eq 257
    decoder.first_value.should eq 0
    decoder.min_delta.should eq -1
    decoder.bit_widths.should eq Slice(UInt8).new(4, 2_u8)
  end

  context "read integer" do
    it "reads the next integer" do
      decoder = DeltaEncoding::Decoder.new(encoded)

      decoder.read_integer.should eq 0
      decoder.read_integer.should eq -1
      (254).times do |i|
        decoder.read_integer.should eq i
      end
    end
  end

  context "values" do
    it "returns a slice with all values" do
      decoder = DeltaEncoding::Decoder.new(encoded)
      decoder.values.should eq Slice(Int32).new(257) { |i| i == 0 ? 0 : i == 1 ? -1 : i - 2 }
    end
  end
end
