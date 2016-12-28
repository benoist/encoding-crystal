require "../src/bit_packing"
require "../src/bit_stream"

module BitPackingEncode
  module Global
    @@summary_packed = 0_u64

    def self.summary_packed
      @@summary_packed
    end

    def self.summary_packed=(value)
      @@summary_packed = value
    end
  end

  def self.test_encode(name, count, bit_width, data)
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
    Global.summary_packed += res
  end

  def self.test_bitstream(name, count, bit_width, data)
    t = Time.now
    print name
    res = 0
    values_written = 0.to_i64
    count.times do |i|
      io = IO::Memory.new
      writer = BitStream.writer(io)
      data.each do |value|
        writer.write_bits(value, bit_width)
      end
      values_written += data.size
      res += io.size
    end
    puts " = #{values_written} values taking #{res / 1024 / 1024} Mb, #{Time.now - t}"
    Global.summary_packed += res
  end

  t = Time.now

  puts self
  test_encode("increasing integers", 100_000, 10, Slice(Int32).new(32) { |n| n })
  test_encode("small integers", 100_000, 1, Slice(Int32).new(32) { |n| 1 })
  test_encode("large integers", 100_000, 32, Slice(Int32).new(32) { |n| 1 << 31 })
  test_encode("timestamps", 100_000, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

  test_bitstream("increasing integers", 100_000, 10, Slice(Int32).new(32) { |n| n })
  test_bitstream("small integers", 100_000, 1, Slice(Int32).new(32) { |n| 1 })
  test_bitstream("large integers", 100_000, 32, Slice(Int32).new(32) { |n| 1 << 31 })
  test_bitstream("timestamps", 100_000, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

  puts "Summary packed size: #{Global.summary_packed / 1024 / 1024} Mb"
  puts "Summary time: #{Time.now - t}"
end
