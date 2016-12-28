require "../src/bit_packing_64"

module BitPacking64Encode
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
      bytes = BitPacking64.pack64values(data, bit_width)
      values_written += data.size
      res += bytes.size
    end
    puts " = #{values_written} values taking #{res / 1024 / 1024} Mb, #{Time.now - t}"
    Global.summary_packed += res
  end

  t = Time.now

  puts self
  test_encode("increasing integers", 100_000, 10, Slice(Int64).new(64) { |n| n.to_i64 })
  test_encode("small integers", 100_000, 1, Slice(Int64).new(64) { |n| 1.to_i64 })
  test_encode("large integers", 100_000, 64, Slice(Int64).new(64) { |n| (1 << 31).to_i64 })
  test_encode("timestamps", 100_000, 64, Slice(Int64).new(64) { |n| t.epoch.to_i64 })

  puts "Summary packed size: #{Global.summary_packed / 1024 / 1024} Mb"
  puts "Summary time: #{Time.now - t}"
end
