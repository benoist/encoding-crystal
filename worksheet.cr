require "./src/encoding"

a = Encoding.float64bits(1.0)
b = Encoding.float64bits(12)

p (a ^ b).to_s(2).rjust(64, '0')
