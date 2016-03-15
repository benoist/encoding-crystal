require "./bit_packing/pack_unpack_64"

module BitPacking64
  def self.unpack64values(data, bit_width)
    {% begin %}
    case bit_width
      {% for i in 1..64 %}
      when {{i.id}}
        BitPacking64.unpack{{i.id}}(data)
      {% end %}
      else
        raise "Invalid bit width #{bit_width}"
      end
    {% end %}
  end

  def self.pack64values(data, bit_width)
    {% begin %}
    case bit_width
      {% for i in 1..64 %}
      when {{i.id}}
        BitPacking64.pack{{i.id}}(data)
      {% end %}
      else
        raise "Invalid bit width #{bit_width}"
      end
    {% end %}
  end
end
