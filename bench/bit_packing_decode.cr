require "../src/encoding/bit_packing"

$summary_umpacked = 0.to_u64

def test_decode(name, count, bit_width, data)
  bytes = BitPacking.pack32values(data, bit_width)

  t = Time.now
  print name
  res = 0
  count.times do |i|
    values = BitPacking.unpack32values(bytes, bit_width)
    res += values.size
  end
  puts " = #{res}, #{Time.now - t}"
  $summary_umpacked += res
end

t = Time.now

test_decode("increasing integers", 100_000_000 / 32, 10, Slice(Int32).new(32) { |n| n })
test_decode("small integers", 100_000_000 / 32, 1, Slice(Int32).new(32) { |n| 1 })
test_decode("large integers", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| 1 << 31 })
test_decode("timestamps", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

puts "Summary items decoded: #{$summary_umpacked}"
puts "Summary time: #{Time.now - t}"
