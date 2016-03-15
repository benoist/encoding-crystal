require "../src/encoding/bit_packing_64"

$summary_packed = 0.to_u64

def test_encode(name, count, bit_width, data)
  t = Time.now
  print name
  res = 0
  values_written = 0.to_i64
  count.times do |i|
    bytes = BitPacking64.pack64values(data, bit_width)
    values_written += data.size
    res += bytes.size
  end
  puts " = #{values_written} values taking #{res / 1024 / 1024} Mb, #{Time.now - t}"
  $summary_packed += res
end

t = Time.now

test_encode("increasing integers", 100_000_000 / 64, 10, Slice(Int64).new(64) { |n| n.to_i64 })
test_encode("small integers", 100_000_000 / 64, 1, Slice(Int64).new(64) { |n| 1.to_i64 })
test_encode("large integers", 100_000_000 / 64, 64, Slice(Int64).new(64) { |n| (1 << 31).to_i64 })
test_encode("timestamps", 100_000_000 / 64, 64, Slice(Int64).new(64) { |n| t.epoch.to_i64 })

puts "Summary packed size: #{$summary_packed / 1024 / 1024} Mb"
puts "Summary time: #{Time.now - t}"
