require "../src/simple8b"

$summary_umpacked = 0.to_u64

def test_decode(name, count, data)
  io = MemoryIO.new
  data.each do |integer|
    io.write_bytes(integer, IO::ByteFormat::BigEndian)
  end

  t = Time.now
  print name
  res = 0
  count.times do |i|
    io.rewind
    slice = Slice(UInt64).new(1000) { io.read_bytes(UInt64, IO::ByteFormat::BigEndian) }
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
