require "../src/encoding/bit_packing"

$summary_umpacked = 0.to_u64

def test_decode(name, count, bit_width, data)
  io = MemoryIO.new
  encoder = BitPacking::Encoder.new(io, bit_width)
  encoder.write(data)
  # encoder.flush

  t = Time.now
  print name
  res = 0
  count.times do |i|
    io.rewind
    decoder = BitPacking::Decoder.new(io, bit_width)
    slice = decoder.read(Slice(Int32).new(1000))
    res += slice.size
  end
  puts " = #{res}, #{Time.now - t}"
  $summary_umpacked += res
end

t = Time.now

# test_decode("increasing integers", 10000, 10, Slice(Int32).new(1000) { |n| n })
test_decode("small integers", 100000, 1, Slice(Int32).new(1000) { |n| 1 })

puts "Summary items decoded: #{$summary_umpacked}"
puts "Summary time: #{Time.now - t}"
