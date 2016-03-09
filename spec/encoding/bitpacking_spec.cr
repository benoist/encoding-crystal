require "../spec_helper"

describe BitPacking do
  {% for i in 1..32 %}
  context "pack{{i.id}}" do
    it "packs 8 values using {{i}} bits each" do
      slice = Slice(Int32).new(32, (2**{{i - 1}} - 1).to_i)
      packed = BitPacking.pack{{i.id}}(slice)
      unpacked = BitPacking.unpack{{i.id}}(packed)
      unpacked.should eq slice
    end
  end
  {% end %}
end
