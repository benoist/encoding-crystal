require "../src/bit_packing_64"

module BitPacking64Decode
  module Global
    @@summary_unpacked = 0_u64

    def self.summary_unpacked
      @@summary_unpacked
    end

    def self.summary_unpacked=(value)
      @@summary_unpacked = value
    end
  end

  def self.test_decode(name, count, bit_width, data)
    bytes = BitPacking64.pack64values(data, bit_width)

    t = Time.now
    print name
    res = 0
    count.times do |i|
      values = BitPacking64.unpack64values(bytes, bit_width)
      res += values.size
    end
    puts " = #{res}, #{Time.now - t}"
    Global.summary_unpacked += res
  end

  t = Time.now

  puts self
  test_decode("increasing integers", 100_000, 10, Slice(Int64).new(64) { |n| n.to_i64 })
  test_decode("small integers", 100_000, 1, Slice(Int64).new(64) { |n| 1.to_i64 })
  test_decode("large integers", 100_000, 64, Slice(Int64).new(64) { |n| (1 << 31).to_i64 })
  test_decode("timestamps", 100_000, 64, Slice(Int64).new(64) { |n| t.epoch.to_i64 })

  puts "Summary items decoded: #{Global.summary_unpacked}"
  puts "Summary time: #{Time.now - t}"
end
