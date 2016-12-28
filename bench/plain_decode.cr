require "../src/simple8b"

module PlainDecode
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
    data.each do |integer|
      io.write_bytes(integer, IO::ByteFormat::BigEndian)
    end

    t = Time.now
    print name
    res = 0
    count.times do |i|
      io.rewind
      slice = Slice(UInt64).new(1000) { io.read_bytes(UInt64, IO::ByteFormat::BigEndian) }
      res += slice.size
    end
    puts " = #{res}, #{Time.now - t}"
    Global.summary_unpacked += res
  end

  t = Time.now

  puts self
  test_decode("increasing integers", 100_000, Slice(UInt64).new(1000) { |n| n.to_u64 })
  test_decode("small integers", 100_000, Slice(UInt64).new(1000) { |n| 2.to_u64 })

  puts "Summary items decoded: #{Global.summary_unpacked}"
  puts "Summary time: #{Time.now - t}"
end
