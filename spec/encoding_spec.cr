require "./spec_helper"

describe Encoding do
  it "can write multiple decoded bytes to an IO" do
    timestamps = [0_i64, 0_i64, 86400_i64, 86400_i64]
    uuids = [394360224, -833431868, -1972139552, 792205646]
    integers = [394360224_i64, -833431868_i64, -1972139552_i64, 792205646_i64]

    timestamp_encoder = DeltaEncoding64::Encoder.new
    timestamps.each do |timestamp|
      timestamp_encoder.write_integer(timestamp)
    end
    timestamp_encoder.flush

    uuid_encoder = DeltaEncoding::Encoder.new
    uuids.each do |uuid|
      uuid_encoder.write_integer(uuid)
    end
    uuid_encoder.flush

    integer_encoder = DeltaEncoding64::Encoder.new
    integers.each do |integer|
      integer_encoder.write_integer(integer)
    end
    integer_encoder.flush

    io = IO::Memory.new
    timestamp_encoder.to_io(io)
    uuid_encoder.to_io(io)
    integer_encoder.to_io(io)

    io.rewind

    decoder = DeltaEncoding64::Decoder.new(io)
    decoder.values.should eq timestamps
    decoder = DeltaEncoding::Decoder.new(io)
    decoder.values.should eq uuids
    decoder = DeltaEncoding64::Decoder.new(io)
    decoder.values.should eq integers
  end
end
