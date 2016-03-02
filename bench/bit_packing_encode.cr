require "../src/encoding/bit_packing"

$summary_packed = 0.to_u64

def test_encode(name, count, bit_width, data)
  t = Time.now
  print name
  res = 0
  count.times do |i|
    encoder = BitPacking::Encoder.new(bit_width)
    encoder.write(data)
    res += encoder.bytes.size
  end
  puts " = #{res / 1024 / 1024} Mb, #{Time.now - t}"
  $summary_packed += res
end

t = Time.now

test_encode("increasing integers", 10000, 10, Slice(Int32).new(1000) { |n| n })
test_encode("small integers", 100000, 1, Slice(Int32).new(1000) { |n| 1 })
test_encode("large integers", 10000, 32, Slice(Int32).new(1000) { |n| 1 << 31 })
test_encode("timestamps", 10000, 32, Slice(Int32).new(1000) { |n| t.epoch.to_i })

puts "Summary packed size: #{$summary_packed / 1024 / 1024} Mb"
puts "Summary time: #{Time.now - t}"
