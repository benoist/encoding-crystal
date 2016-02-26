require "../src/encoding/simple8b"

$summary_packed = 0.to_u64

def test_encode(name, count, data)
  t = Time.now
  print name
  res = 0
  count.times do |i|
    io = MemoryIO.new
    data.each do |integer|
      io.write_bytes(integer, IO::ByteFormat::BigEndian)
    end
    res += io.size
  end
  puts " = #{res / 1024 / 1024} Mb, #{Time.now - t}"
  $summary_packed += res
end

t = Time.now

test_encode("increasing integers", 10000, Slice(UInt64).new(1000) { |n| n.to_u64 })
test_encode("small integers", 100000, Slice(UInt64).new(1000) { |n| 2.to_u64 })

puts "Summary packed size: #{$summary_packed / 1024 / 1024} Mb"
puts "Summary time: #{Time.now - t}"
