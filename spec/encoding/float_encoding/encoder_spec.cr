require "../../spec_helper"

def new_encoder(io = MemoryIO.new)
  encoder = FloatEncoding::Encoder.new(io)
end

describe FloatEncoding::Encoder do
  context "finished?" do
    it "returns false if not finished" do
      encoder = new_encoder
      encoder.finished?.should eq false
    end

    it "returns true if finished" do
      encoder = new_encoder
      encoder.finish
      encoder.finished?.should eq true
    end
  end

  context "push first value" do
    it "stores the previous value" do
      encoder = new_encoder
      encoder.push(1)
      encoder.previous_value.should be_a(Float64)
      encoder.previous_value.should eq 1.0
    end

    it "marks first as false" do
      encoder = new_encoder
      encoder.first.should eq true
      encoder.push(1)
      encoder.first.should eq false
    end

    it "write the bits to the bit_stream" do
      io = MemoryIO.new
      encoder = new_encoder(io)
      encoder.push(1)
      io.rewind
      bits = BitStream.reader(io).read_bits(64)
      Encoding.float64frombits(bits).should eq 1.0
    end
  end

  context "push the next value" do
    context "when value matches the previous" do
      it "writes a zero bit to the bit stream" do
        io = MemoryIO.new
        encoder = new_encoder(io)
        encoder.push(1)
        encoder.push(1)
        encoder.finish
        io.rewind
        reader = BitStream.reader(io)
        reader.read_bits(64)
        reader.read_bit.should eq false
      end
    end

    context "when value does not match" do
      it "writes the required bits to the bit stream" do
        io = MemoryIO.new
        encoder = new_encoder(io)
        encoder.push(1)
        encoder.push(2)
        encoder.finish
        io.rewind
        reader = BitStream.reader(io)
        reader.read_bits(64)
        reader.read_bit.should eq true

        # 1.0 = 0011111111110000000000000000000000000000000000000000000000000000
        # 2.0 = 0100000000000000000000000000000000000000000000000000000000000000
        # XOR = 0111111111110000000000000000000000000000000000000000000000000000
        # 1 leading bit, 11 significant bits meaning 0b11111111111 = 2047

        reader.read_bit.should eq true
        reader.read_bits(5).should eq 1
        reader.read_bits(6).should eq 11
        reader.read_bits(11).should eq 2047
      end
    end
  end
end
