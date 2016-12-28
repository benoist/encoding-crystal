require "../src/simple8b"

module Simple8bEncode
  module Global
    @@summary_packed = 0_u64

    def self.summary_packed
      @@summary_packed
    end

    def self.summary_packed=(value)
      @@summary_packed = value
    end
  end

  def self.test_encode(name, count, data)
    t = Time.now
    print name
    res = 0
    count.times do |i|
      encoder = Simple8b::Encoder.new
      encoder.write(data)
      res += encoder.bytes.size
    end
    puts " = #{res / 1024 / 1024} Mb, #{Time.now - t}"
    Global.summary_packed += res
  end

  t = Time.now

  puts self
  test_encode("increasing integers", 100_000, Slice(UInt64).new(32) { |n| n.to_u64 })
  test_encode("small integers", 100_000, Slice(UInt64).new(32) { |n| 1.to_u64 })
  test_encode("large integers", 100_000, Slice(UInt64).new(32) { |n| 1_u64 << 31 })
  test_encode("timestamps", 100_000, Slice(UInt64).new(32) { |n| t.epoch.to_u64 })

  puts "Summary packed size: #{Global.summary_packed / 1024 / 1024} Mb"
  puts "Summary time: #{Time.now - t}"
end
