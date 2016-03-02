require "./bit_packing/pack_unpack"

module BitPacking
  class Encoder
    def self.new(bit_width)
      new(MemoryIO.new, bit_width)
    end

    def initialize(@io, @bit_width)
      @ints_written = 0
    end

    def write(data)
      @ints_written += data.size
      data.each_slice(8) do |ints|
        pack(ints).each do |integer|
          @io.write_bytes(integer, IO::ByteFormat::LittleEndian)
        end
      end
    end

    def pack(data)
      {% begin %}
      case @bit_width
        {% for i in 1..32 %}
        when {{i.id}}
          BitPacking.pack{{i.id}}(data)
        {% end %}
        else
          raise "Invalid bit width #{@bit_width}"
        end
      {% end %}
    end

    def bytes
      @io.to_slice
    end
  end

  class Decoder
    def initialize(@io, @bit_width)
    end

    def read(buffer)
      slices = buffer.size / 8
      numbers_written = 0
      slices.times do
        values = read
        values.each do |value|
          buffer[numbers_written] = value
          numbers_written += 1
        end
      end
      buffer
    end

    def read
      bytes = if @bit_width < 8
                Slice(Int8).new(@bit_width) { @io.read_bytes(Int8, IO::ByteFormat::LittleEndian) }
              elsif @bit_width < 16
                Slice(Int16).new(@bit_width) { @io.read_bytes(Int16, IO::ByteFormat::LittleEndian) }
              else
                Slice(Int32).new(@bit_width) { @io.read_bytes(Int32, IO::ByteFormat::LittleEndian) }
              end
      unpack8values(bytes)
    end

    def unpack8values(data)
      {% begin %}
      case @bit_width
        {% for i in 1..32 %}
        when {{i.id}}
          BitPacking.unpack{{i.id}}(data)
        {% end %}
        else
          raise "Invalid bit width #{@bit_width}"
        end
      {% end %}
    end
  end
end
