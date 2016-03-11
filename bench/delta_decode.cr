require "../src/encoding/delta_encoding"

$summary_umpacked = 0.to_u64

def test_decode(name, count, data)
  encoder = DeltaEncoding::Encoder.new
  data.each do |integer|
    encoder.write_integer(integer)
  end
  encoder.flush
  io = MemoryIO.new
  encoder.to_io(io)

  t = Time.now
  print name
  res = 0
  count.times do |i|
    io.rewind
    encoder = DeltaEncoding::Decoder.new(io)
    res += encoder.values.size
  end
  puts " = #{res}, #{Time.now - t}"
  $summary_umpacked += res
end

t = Time.now

test_decode("increasing integers", 100000, Slice(Int32).new(1000) { |n| rand(1..(n+1)) })
test_decode("small integers", 100000, Slice(Int32).new(1000) { |n| 2 })
test_decode("large integers", 100000, Slice(Int32).new(1000) { |n| 1 << 31 })

test_decode("random integers", 100000, Slice(Int32).new(1000) { |n| rand(1..12345) })
test_decode("timestamps", 100000, Slice(Int32).new(1000) { |n| t.epoch.to_i })

puts "Summary packed size: #{$summary_umpacked}"
puts "Summary time: #{Time.now - t}"
