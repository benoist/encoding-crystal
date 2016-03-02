require "spec"

def as_slice(array : Array(T))
  Slice(T).new(array.to_unsafe, array.size)
end

require "../src/encoding"
require "../src/encoding/bit_packing"
require "../src/encoding/simple8b"
require "../src/encoding/delta_encoding"
require "../src/encoding/zig_zag"
require "../src/encoding/vlq"
