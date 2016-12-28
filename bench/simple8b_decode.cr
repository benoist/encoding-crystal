require "../src/simple8b"

module Simple8bDecode
  module Global
    @@summary_unpacked = 0_u64

    def self.summary_unpacked
      @@summary_unpacked
    end

    def self.summary_unpacked=(value)
      @@summary_unpacked = value
    end
  end

  def self.test_decode(name, count, data)
    io = IO::Memory.new
    encoder = Simple8b::Encoder.new(io)
    encoder.write(data)
    encoder.flush

    t = Time.now
    print name
    res = 0
    count.times do |i|
      io.rewind
      decoder = Simple8b::Decoder.new(io)
      slice = decoder.read(Slice(UInt64).new(1000))
      res += slice.size
    end
    puts " = #{res}, #{Time.now - t}"
    Global.summary_unpacked += res
  end

  t = Time.now

  puts self
  test_decode("increasing integers", 100_000, Slice(UInt64).new(32) { |n| n.to_u64 })
  test_decode("small integers", 100_000, Slice(UInt64).new(32) { |n| 1.to_u64 })
  test_decode("large integers", 100_000, Slice(UInt64).new(32) { |n| 1_u64 << 31 })
  test_decode("timestamps", 100_000, Slice(UInt64).new(32) { |n| t.epoch.to_u64 })

  puts "Summary items decoded: #{Global.summary_unpacked}"
  puts "Summary time: #{Time.now - t}"
end
