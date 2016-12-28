require "../src/delta_encoding"

module DeltaDecode
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
    encoder = DeltaEncoding::Encoder.new
    data.each do |integer|
      encoder.write_integer(integer)
    end
    encoder.flush
    io = IO::Memory.new
    encoder.to_io(io)

    t = Time.now
    print name
    res = 0
    count.times do |i|
      io.rewind
      encoder = DeltaEncoding::Decoder.new(io)
      res += encoder.values.size
    end
    puts " = #{res}, #{Time.now - t}"
    Global.summary_unpacked += res
  end

  t = Time.now

  puts self
  test_decode("increasing integers", 100_000, Slice(Int32).new(1000) { |n| rand(1..(n + 1)) })
  test_decode("small integers", 100_000, Slice(Int32).new(1000) { |n| 2 })
  test_decode("large integers", 100_000, Slice(Int32).new(1000) { |n| 1 << 31 })

  test_decode("random integers", 100_000, Slice(Int32).new(1000) { |n| rand(1..12345) })
  test_decode("timestamps", 100_000, Slice(Int32).new(1000) { |n| t.epoch.to_i })

  puts "Summary packed size: #{Global.summary_unpacked}"
  puts "Summary time: #{Time.now - t}"
end
