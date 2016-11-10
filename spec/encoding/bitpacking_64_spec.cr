require "../spec_helper"

describe BitPacking64 do
  {% for i in 1..64 %}
  context "pack{{i.id}}" do
    it "packs 8 values using {{i}} bits each" do
      slice = Slice(Int64).new(64, (2_i64**{{i - 1}}_i64 - 1).to_i64)
      packed = BitPacking64.pack{{i.id}}(slice)
      unpacked = BitPacking64.unpack{{i.id}}(packed)
      unpacked.should eq slice
    end
  end
  {% end %}
end
