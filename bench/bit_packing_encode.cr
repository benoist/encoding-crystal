require "../src/bit_packing"
require "../src/bit_stream"

$summary_packed = 0.to_u64

def test_encode(name, count, bit_width, data)
  t = Time.now
  print name
  res = 0
  values_written = 0.to_i64
  count.times do |i|
    bytes = BitPacking.pack32values(data, bit_width)
    values_written += data.size
    res += bytes.size * 4
  end
  puts " = #{values_written} values taking #{res / 1024 / 1024} Mb, #{Time.now - t}"
  $summary_packed += res
end

def test_bitstream(name, count, bit_width, data)
  t = Time.now
    print name
    res = 0
    values_written = 0.to_i64
    count.times do |i|
      io = MemoryIO.new
      writer = BitStream.writer(io)
      data.each do |value|
        writer.write_bits(value, bit_width)
      end
      values_written += data.size
      res += io.size
    end
    puts " = #{values_written} values taking #{res / 1024 / 1024} Mb, #{Time.now - t}"
    $summary_packed += res
end

t = Time.now

test_encode("increasing integers", 100_000_000 / 32, 10, Slice(Int32).new(32) { |n| n })
test_encode("small integers", 100_000_000 / 32, 1, Slice(Int32).new(32) { |n| 1 })
test_encode("large integers", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| 1 << 31 })
test_encode("timestamps", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

test_bitstream("increasing integers", 100_000_000 / 32, 10, Slice(Int32).new(32) { |n| n })
test_bitstream("small integers", 100_000_000 / 32, 1, Slice(Int32).new(32) { |n| 1 })
test_bitstream("large integers", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| 1 << 31 })
test_bitstream("timestamps", 100_000_000 / 32, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

puts "Summary packed size: #{$summary_packed / 1024 / 1024} Mb"
puts "Summary time: #{Time.now - t}"
