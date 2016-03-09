require "./bit_packing/pack_unpack"

module BitPacking
  def self.unpack32values(data, bit_width)
    {% begin %}
    case bit_width
      {% for i in 1..32 %}
      when {{i.id}}
        BitPacking.unpack{{i.id}}(data)
      {% end %}
      else
        raise "Invalid bit width #{bit_width}"
      end
    {% end %}
  end

  def self.pack32values(data, bit_width)
    {% begin %}
    case bit_width
      {% for i in 1..32 %}
      when {{i.id}}
        BitPacking.pack{{i.id}}(data)
      {% end %}
      else
        raise "Invalid bit width #{bit_width}"
      end
    {% end %}
  end
end
