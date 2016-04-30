require "spec"

def as_slice(array : Array(T))
  Slice(T).new(array.to_unsafe, array.size)
end

require "../src/encoding"
require "../src/bit_packing"
require "../src/bit_packing_64"
require "../src/simple8b"
require "../src/delta_encoding"
require "../src/zig_zag"
require "../src/vlq"
require "../src/bit_stream"
require "../src/float_encoding"
