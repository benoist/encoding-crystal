module Encoding
  def self.float64bits(value)
    p = pointerof(value) as UInt64*
    p[0]
  end
end
