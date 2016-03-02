require "../spec_helper"

describe BitPacking do
  context "Encoder" do
    context "write" do
      it "writes integers to the io" do
        encoder = BitPacking::Encoder.new(1)
        slice = Slice(Int32).new(8, 1)
        3.times do
          encoder.write(slice)
        end
        encoder.bytes.should eq Slice(UInt8).new(3, 255_u8)
      end
    end
  end

  context "Decoder" do
    context "read" do
      it "writes integers to the io" do
        io = MemoryIO.new(Slice(UInt8).new(3, 255_u8))
        decoder = BitPacking::Decoder.new(io, 1)
        slice = Slice(Int32).new(24)
        decoder.read(slice)
        slice.should eq(Slice(Int32).new(24, 1))
      end
    end
  end

  {% for i in 1..32 %}
  context "pack{{i.id}}" do
    it "packs 8 values using {{i}} bits each" do
      slice = Slice(Int32).new(8, (2**{{i - 1}} - 1).to_i)
      packed = BitPacking.pack{{i.id}}(slice)
      BitPacking.unpack{{i.id}}(packed).should eq slice
    end
  end
  {% end %}
end
