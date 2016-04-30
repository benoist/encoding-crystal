require "../src/bit_packing_64"

$summary_umpacked = 0.to_u64

def test_decode(name, count, bit_width, data)
  bytes = BitPacking64.pack64values(data, bit_width)

  t = Time.now
  print name
  res = 0
  count.times do |i|
    values = BitPacking64.unpack64values(bytes, bit_width)
    res += values.size
  end
  puts " = #{res}, #{Time.now - t}"
  $summary_umpacked += res
end

t = Time.now

test_decode("increasing integers", 100_000_000 / 64, 10, Slice(Int64).new(64) { |n| n.to_i64 })
test_decode("small integers", 100_000_000 / 64, 1, Slice(Int64).new(64) { |n| 1.to_i64 })
test_decode("large integers", 100_000_000 / 64, 64, Slice(Int64).new(64) { |n| (1 << 31).to_i64 })
test_decode("timestamps", 100_000_000 / 64, 64, Slice(Int64).new(64) { |n| t.epoch.to_i64 })

puts "Summary items decoded: #{$summary_umpacked}"
puts "Summary time: #{Time.now - t}"
