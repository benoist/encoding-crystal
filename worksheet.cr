require "./src/encoding"

a = Encoding.float64bits(1.0)
b = Encoding.float64bits(12)

class FloatEncoder
  def initialize
    @leading = 0_u64
    @trailing = 0_u64
    @first = true
    @previous_value = 0_f64
  end

  def push(value)
    if @first
      @previous_value = value
      @first = false
    end
  end
end
