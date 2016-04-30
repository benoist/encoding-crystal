lib Intrinsics
  fun leadingzeros8 = "llvm.ctlz.i8"(src : Int8) : Int8
  fun leadingzeros16 = "llvm.ctlz.i16"(src : Int16) : Int16
  fun leadingzeros32 = "llvm.ctlz.i32"(src : Int32) : Int32
  fun leadingzeros64 = "llvm.ctlz.i64"(src : Int64) : Int64
  fun trailingzeros8 = "llvm.cttz.i8"(src : Int8) : Int8
  fun trailingzeros16 = "llvm.cttz.i16"(src : Int16) : Int16
  fun trailingzeros32 = "llvm.cttz.i32"(src : Int32) : Int32
  fun trailingzeros64 = "llvm.cttz.i64"(src : Int64) : Int64
end

require "./src/encoding"
require "benchmark"

p Intrinsics.leadingzeros32(2)
