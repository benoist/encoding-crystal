require "../src/bit_packing"

module BitPackingDecode
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
    bytes = BitPacking.pack32values(data, bit_width)

    t = Time.now
    print name
    res = 0
    count.times do |i|
      values = BitPacking.unpack32values(bytes, bit_width)
      res += values.size
    end
    puts " = #{res}, #{Time.now - t}"
    Global.summary_unpacked += res
  end

  t = Time.now

  puts self
  test_decode("increasing integers", 100_000, 10, Slice(Int32).new(32) { |n| n })
  test_decode("small integers", 100_000, 1, Slice(Int32).new(32) { |n| 1 })
  test_decode("large integers", 100_000, 32, Slice(Int32).new(32) { |n| 1 << 31 })
  test_decode("timestamps", 100_000, 32, Slice(Int32).new(32) { |n| t.epoch.to_i })

  puts "Summary items decoded: #{Global.summary_unpacked}"
  puts "Summary time: #{Time.now - t}"
end
