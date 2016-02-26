require "../src/encoding/simple8b"

$summary_umpacked = 0.to_u64

def test_decode(name, count, data)
  io = MemoryIO.new
  encoder = Simple8b::Encoder.new(io)
  encoder.write(data)
  encoder.flush

  t = Time.now
  print name
  res = 0
  count.times do |i|
    io.rewind
    decoder = Simple8b::Decoder.new(io)
    slice = decoder.read(Slice(UInt64).new(1000))
    res += slice.size
  end
  puts " = #{res}, #{Time.now - t}"
  $summary_umpacked += res
end

t = Time.now

test_decode("increasing integers", 10000, Slice(UInt64).new(1000) { |n| n.to_u64 })
test_decode("small integers", 100000, Slice(UInt64).new(1000) { |n| 2.to_u64 })

puts "Summary items decoded: #{$summary_umpacked}"
puts "Summary time: #{Time.now - t}"
