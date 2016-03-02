module BitPacking
  # Pack 1 using 8
  # 76543210
  def self.pack1(values)
    bytes = Slice(UInt8).new(1, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 1) |
      (values[2] << 2) |
      (values[3] << 3) |
      (values[4] << 4) |
      (values[5] << 5) |
      (values[6] << 6) |
      (values[7] << 7)

    bytes
  end

  # Unpack 1 using buffer 8 values Int32
  # 76543210
  def self.unpack1(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 1_u32).to_i32
    values[1] = (bytes[0] >> 1 & 1_u32).to_i32
    values[2] = (bytes[0] >> 2 & 1_u32).to_i32
    values[3] = (bytes[0] >> 3 & 1_u32).to_i32
    values[4] = (bytes[0] >> 4 & 1_u32).to_i32
    values[5] = (bytes[0] >> 5 & 1_u32).to_i32
    values[6] = (bytes[0] >> 6 & 1_u32).to_i32
    values[7] = (bytes[0] >> 7 & 1_u32).to_i32

    values
  end

  # Pack 2 using 8
  # 33221100 77665544
  def self.pack2(values)
    bytes = Slice(UInt8).new(2, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 2) |
      (values[2] << 4) |
      (values[3] << 6)
    bytes[1] |= values[4] |
      (values[5] << 2) |
      (values[6] << 4) |
      (values[7] << 6)

    bytes
  end

  # Unpack 2 using buffer 8 values Int32
  # 33221100 77665544
  def self.unpack2(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 3_u32).to_i32
    values[1] = (bytes[0] >> 2 & 3_u32).to_i32
    values[2] = (bytes[0] >> 4 & 3_u32).to_i32
    values[3] = (bytes[0] >> 6 & 3_u32).to_i32
    values[4] = (bytes[1] >> 0 & 3_u32).to_i32
    values[5] = (bytes[1] >> 2 & 3_u32).to_i32
    values[6] = (bytes[1] >> 4 & 3_u32).to_i32
    values[7] = (bytes[1] >> 6 & 3_u32).to_i32

    values
  end

  # Pack 3 using 8
  # 22111000 54443332 77766655
  def self.pack3(values)
    bytes = Slice(UInt8).new(3, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 3) |
      (values[2] << 6)
    bytes[1] |= (values[2] >> (3 - 1)) |
      (values[3] << 1) |
      (values[4] << 4) |
      (values[5] << 7)
    bytes[2] |= (values[5] >> (3 - 2)) |
      (values[6] << 2) |
      (values[7] << 5)

    bytes
  end

  # Unpack 3 using buffer 8 values Int32
  # 22111000 54443332 77766655
  def self.unpack3(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 7_u32).to_i32
    values[1] = (bytes[0] >> 3 & 7_u32).to_i32
    values[2] = (bytes[0] >> 6 & 7_u32 | (bytes[1] & 1_u32) << 3 - 1).to_i32
    values[3] = (bytes[1] >> 1 & 7_u32).to_i32
    values[4] = (bytes[1] >> 4 & 7_u32).to_i32
    values[5] = (bytes[1] >> 7 & 7_u32 | (bytes[2] & 3_u32) << 3 - 2).to_i32
    values[6] = (bytes[2] >> 2 & 7_u32).to_i32
    values[7] = (bytes[2] >> 5 & 7_u32).to_i32

    values
  end

  # Pack 4 using 8
  # 11110000 33332222 55554444 77776666
  def self.pack4(values)
    bytes = Slice(UInt8).new(4, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 4)
    bytes[1] |= values[2] |
      (values[3] << 4)
    bytes[2] |= values[4] |
      (values[5] << 4)
    bytes[3] |= values[6] |
      (values[7] << 4)

    bytes
  end

  # Unpack 4 using buffer 8 values Int32
  # 11110000 33332222 55554444 77776666
  def self.unpack4(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 15_u32).to_i32
    values[1] = (bytes[0] >> 4 & 15_u32).to_i32
    values[2] = (bytes[1] >> 0 & 15_u32).to_i32
    values[3] = (bytes[1] >> 4 & 15_u32).to_i32
    values[4] = (bytes[2] >> 0 & 15_u32).to_i32
    values[5] = (bytes[2] >> 4 & 15_u32).to_i32
    values[6] = (bytes[3] >> 0 & 15_u32).to_i32
    values[7] = (bytes[3] >> 4 & 15_u32).to_i32

    values
  end

  # Pack 5 using 8
  # 11100000 32222211 44443333 66555554 77777666
  def self.pack5(values)
    bytes = Slice(UInt8).new(5, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 5)
    bytes[1] |= (values[1] >> (5 - 2)) |
      (values[2] << 2) |
      (values[3] << 7)
    bytes[2] |= (values[3] >> (5 - 4)) |
      (values[4] << 4)
    bytes[3] |= (values[4] >> (5 - 1)) |
      (values[5] << 1) |
      (values[6] << 6)
    bytes[4] |= (values[6] >> (5 - 3)) |
      (values[7] << 3)

    bytes
  end

  # Unpack 5 using buffer 8 values Int32
  # 11100000 32222211 44443333 66555554 77777666
  def self.unpack5(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 31_u32).to_i32
    values[1] = (bytes[0] >> 5 & 31_u32 | (bytes[1] & 3_u32) << 5 - 2).to_i32
    values[2] = (bytes[1] >> 2 & 31_u32).to_i32
    values[3] = (bytes[1] >> 7 & 31_u32 | (bytes[2] & 15_u32) << 5 - 4).to_i32
    values[4] = (bytes[2] >> 4 & 31_u32 | (bytes[3] & 1_u32) << 5 - 1).to_i32
    values[5] = (bytes[3] >> 1 & 31_u32).to_i32
    values[6] = (bytes[3] >> 6 & 31_u32 | (bytes[4] & 7_u32) << 5 - 3).to_i32
    values[7] = (bytes[4] >> 3 & 31_u32).to_i32

    values
  end

  # Pack 6 using 8
  # 11000000 22221111 33333322 55444444 66665555 77777766
  def self.pack6(values)
    bytes = Slice(UInt8).new(6, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 6)
    bytes[1] |= (values[1] >> (6 - 4)) |
      (values[2] << 4)
    bytes[2] |= (values[2] >> (6 - 2)) |
      (values[3] << 2)
    bytes[3] |= values[4] |
      (values[5] << 6)
    bytes[4] |= (values[5] >> (6 - 4)) |
      (values[6] << 4)
    bytes[5] |= (values[6] >> (6 - 2)) |
      (values[7] << 2)

    bytes
  end

  # Unpack 6 using buffer 8 values Int32
  # 11000000 22221111 33333322 55444444 66665555 77777766
  def self.unpack6(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 63_u32).to_i32
    values[1] = (bytes[0] >> 6 & 63_u32 | (bytes[1] & 15_u32) << 6 - 4).to_i32
    values[2] = (bytes[1] >> 4 & 63_u32 | (bytes[2] & 3_u32) << 6 - 2).to_i32
    values[3] = (bytes[2] >> 2 & 63_u32).to_i32
    values[4] = (bytes[3] >> 0 & 63_u32).to_i32
    values[5] = (bytes[3] >> 6 & 63_u32 | (bytes[4] & 15_u32) << 6 - 4).to_i32
    values[6] = (bytes[4] >> 4 & 63_u32 | (bytes[5] & 3_u32) << 6 - 2).to_i32
    values[7] = (bytes[5] >> 2 & 63_u32).to_i32

    values
  end

  # Pack 7 using 8
  # 10000000 22111111 33322222 44443333 55555444 66666655 77777776
  def self.pack7(values)
    bytes = Slice(UInt8).new(7, 0_u8)

    bytes[0] |= values[0] |
      (values[1] << 7)
    bytes[1] |= (values[1] >> (7 - 6)) |
      (values[2] << 6)
    bytes[2] |= (values[2] >> (7 - 5)) |
      (values[3] << 5)
    bytes[3] |= (values[3] >> (7 - 4)) |
      (values[4] << 4)
    bytes[4] |= (values[4] >> (7 - 3)) |
      (values[5] << 3)
    bytes[5] |= (values[5] >> (7 - 2)) |
      (values[6] << 2)
    bytes[6] |= (values[6] >> (7 - 1)) |
      (values[7] << 1)

    bytes
  end

  # Unpack 7 using buffer 8 values Int32
  # 10000000 22111111 33322222 44443333 55555444 66666655 77777776
  def self.unpack7(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 127_u32).to_i32
    values[1] = (bytes[0] >> 7 & 127_u32 | (bytes[1] & 63_u32) << 7 - 6).to_i32
    values[2] = (bytes[1] >> 6 & 127_u32 | (bytes[2] & 31_u32) << 7 - 5).to_i32
    values[3] = (bytes[2] >> 5 & 127_u32 | (bytes[3] & 15_u32) << 7 - 4).to_i32
    values[4] = (bytes[3] >> 4 & 127_u32 | (bytes[4] & 7_u32) << 7 - 3).to_i32
    values[5] = (bytes[4] >> 3 & 127_u32 | (bytes[5] & 3_u32) << 7 - 2).to_i32
    values[6] = (bytes[5] >> 2 & 127_u32 | (bytes[6] & 1_u32) << 7 - 1).to_i32
    values[7] = (bytes[6] >> 1 & 127_u32).to_i32

    values
  end

  # Pack 8 using 16
  # 1111111100000000 3333333322222222 5555555544444444 7777777766666666
  def self.pack8(values)
    bytes = Slice(UInt16).new(4, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 8)
    bytes[1] |= values[2] |
      (values[3] << 8)
    bytes[2] |= values[4] |
      (values[5] << 8)
    bytes[3] |= values[6] |
      (values[7] << 8)

    bytes
  end

  # Unpack 8 using buffer 16 values Int32
  # 1111111100000000 3333333322222222 5555555544444444 7777777766666666
  def self.unpack8(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 255_u32).to_i32
    values[1] = (bytes[0] >> 8 & 255_u32).to_i32
    values[2] = (bytes[1] >> 0 & 255_u32).to_i32
    values[3] = (bytes[1] >> 8 & 255_u32).to_i32
    values[4] = (bytes[2] >> 0 & 255_u32).to_i32
    values[5] = (bytes[2] >> 8 & 255_u32).to_i32
    values[6] = (bytes[3] >> 0 & 255_u32).to_i32
    values[7] = (bytes[3] >> 8 & 255_u32).to_i32

    values
  end

  # Pack 9 using 16
  # 1111111000000000 3333322222222211 5554444444443333 7666666666555555 77777777
  def self.pack9(values)
    bytes = Slice(UInt16).new(5, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 9)
    bytes[1] |= (values[1] >> (9 - 2)) |
      (values[2] << 2) |
      (values[3] << 11)
    bytes[2] |= (values[3] >> (9 - 4)) |
      (values[4] << 4) |
      (values[5] << 13)
    bytes[3] |= (values[5] >> (9 - 6)) |
      (values[6] << 6) |
      (values[7] << 15)
    bytes[4] |= values[7] >> 1

    bytes
  end

  # Unpack 9 using buffer 16 values Int32
  # 1111111000000000 3333322222222211 5554444444443333 7666666666555555 77777777
  def self.unpack9(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 511_u32).to_i32
    values[1] = (bytes[0] >> 9 & 511_u32 | (bytes[1] & 3_u32) << 9 - 2).to_i32
    values[2] = (bytes[1] >> 2 & 511_u32).to_i32
    values[3] = (bytes[1] >> 11 & 511_u32 | (bytes[2] & 15_u32) << 9 - 4).to_i32
    values[4] = (bytes[2] >> 4 & 511_u32).to_i32
    values[5] = (bytes[2] >> 13 & 511_u32 | (bytes[3] & 63_u32) << 9 - 6).to_i32
    values[6] = (bytes[3] >> 6 & 511_u32).to_i32
    values[7] = (bytes[3] >> 15 & 511_u32 | (bytes[4] & 255_u32) << 9 - 8).to_i32

    values
  end

  # Pack 10 using 16
  # 1111110000000000 3322222222221111 4444444433333333 6666555555555544 7777777777666666
  def self.pack10(values)
    bytes = Slice(UInt16).new(5, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 10)
    bytes[1] |= (values[1] >> (10 - 4)) |
      (values[2] << 4) |
      (values[3] << 14)
    bytes[2] |= (values[3] >> (10 - 8)) |
      (values[4] << 8)
    bytes[3] |= (values[4] >> (10 - 2)) |
      (values[5] << 2) |
      (values[6] << 12)
    bytes[4] |= (values[6] >> (10 - 6)) |
      (values[7] << 6)

    bytes
  end

  # Unpack 10 using buffer 16 values Int32
  # 1111110000000000 3322222222221111 4444444433333333 6666555555555544 7777777777666666
  def self.unpack10(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 1023_u32).to_i32
    values[1] = (bytes[0] >> 10 & 1023_u32 | (bytes[1] & 15_u32) << 10 - 4).to_i32
    values[2] = (bytes[1] >> 4 & 1023_u32).to_i32
    values[3] = (bytes[1] >> 14 & 1023_u32 | (bytes[2] & 255_u32) << 10 - 8).to_i32
    values[4] = (bytes[2] >> 8 & 1023_u32 | (bytes[3] & 3_u32) << 10 - 2).to_i32
    values[5] = (bytes[3] >> 2 & 1023_u32).to_i32
    values[6] = (bytes[3] >> 12 & 1023_u32 | (bytes[4] & 63_u32) << 10 - 6).to_i32
    values[7] = (bytes[4] >> 6 & 1023_u32).to_i32

    values
  end

  # Pack 11 using 16
  # 1111100000000000 2222222222111111 4444333333333332 5555555554444444 7776666666666655 77777777
  def self.pack11(values)
    bytes = Slice(UInt16).new(6, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 11)
    bytes[1] |= (values[1] >> (11 - 6)) |
      (values[2] << 6)
    bytes[2] |= (values[2] >> (11 - 1)) |
      (values[3] << 1) |
      (values[4] << 12)
    bytes[3] |= (values[4] >> (11 - 7)) |
      (values[5] << 7)
    bytes[4] |= (values[5] >> (11 - 2)) |
      (values[6] << 2) |
      (values[7] << 13)
    bytes[5] |= values[7] >> 3

    bytes
  end

  # Unpack 11 using buffer 16 values Int32
  # 1111100000000000 2222222222111111 4444333333333332 5555555554444444 7776666666666655 77777777
  def self.unpack11(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 2047_u32).to_i32
    values[1] = (bytes[0] >> 11 & 2047_u32 | (bytes[1] & 63_u32) << 11 - 6).to_i32
    values[2] = (bytes[1] >> 6 & 2047_u32 | (bytes[2] & 1_u32) << 11 - 1).to_i32
    values[3] = (bytes[2] >> 1 & 2047_u32).to_i32
    values[4] = (bytes[2] >> 12 & 2047_u32 | (bytes[3] & 127_u32) << 11 - 7).to_i32
    values[5] = (bytes[3] >> 7 & 2047_u32 | (bytes[4] & 3_u32) << 11 - 2).to_i32
    values[6] = (bytes[4] >> 2 & 2047_u32).to_i32
    values[7] = (bytes[4] >> 13 & 2047_u32 | (bytes[5] & 255_u32) << 11 - 8).to_i32

    values
  end

  # Pack 12 using 16
  # 1111000000000000 2222222211111111 3333333333332222 5555444444444444 6666666655555555 7777777777776666
  def self.pack12(values)
    bytes = Slice(UInt16).new(6, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 12)
    bytes[1] |= (values[1] >> (12 - 8)) |
      (values[2] << 8)
    bytes[2] |= (values[2] >> (12 - 4)) |
      (values[3] << 4)
    bytes[3] |= values[4] |
      (values[5] << 12)
    bytes[4] |= (values[5] >> (12 - 8)) |
      (values[6] << 8)
    bytes[5] |= (values[6] >> (12 - 4)) |
      (values[7] << 4)

    bytes
  end

  # Unpack 12 using buffer 16 values Int32
  # 1111000000000000 2222222211111111 3333333333332222 5555444444444444 6666666655555555 7777777777776666
  def self.unpack12(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 4095_u32).to_i32
    values[1] = (bytes[0] >> 12 & 4095_u32 | (bytes[1] & 255_u32) << 12 - 8).to_i32
    values[2] = (bytes[1] >> 8 & 4095_u32 | (bytes[2] & 15_u32) << 12 - 4).to_i32
    values[3] = (bytes[2] >> 4 & 4095_u32).to_i32
    values[4] = (bytes[3] >> 0 & 4095_u32).to_i32
    values[5] = (bytes[3] >> 12 & 4095_u32 | (bytes[4] & 255_u32) << 12 - 8).to_i32
    values[6] = (bytes[4] >> 8 & 4095_u32 | (bytes[5] & 15_u32) << 12 - 4).to_i32
    values[7] = (bytes[5] >> 4 & 4095_u32).to_i32

    values
  end

  # Pack 13 using 16
  # 1110000000000000 2222221111111111 3333333332222222 4444444444443333 6655555555555554 7777766666666666 77777777
  def self.pack13(values)
    bytes = Slice(UInt16).new(7, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 13)
    bytes[1] |= (values[1] >> (13 - 10)) |
      (values[2] << 10)
    bytes[2] |= (values[2] >> (13 - 7)) |
      (values[3] << 7)
    bytes[3] |= (values[3] >> (13 - 4)) |
      (values[4] << 4)
    bytes[4] |= (values[4] >> (13 - 1)) |
      (values[5] << 1) |
      (values[6] << 14)
    bytes[5] |= (values[6] >> (13 - 11)) |
      (values[7] << 11)
    bytes[6] |= values[7] >> 5

    bytes
  end

  # Unpack 13 using buffer 16 values Int32
  # 1110000000000000 2222221111111111 3333333332222222 4444444444443333 6655555555555554 7777766666666666 77777777
  def self.unpack13(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 8191_u32).to_i32
    values[1] = (bytes[0] >> 13 & 8191_u32 | (bytes[1] & 1023_u32) << 13 - 10).to_i32
    values[2] = (bytes[1] >> 10 & 8191_u32 | (bytes[2] & 127_u32) << 13 - 7).to_i32
    values[3] = (bytes[2] >> 7 & 8191_u32 | (bytes[3] & 15_u32) << 13 - 4).to_i32
    values[4] = (bytes[3] >> 4 & 8191_u32 | (bytes[4] & 1_u32) << 13 - 1).to_i32
    values[5] = (bytes[4] >> 1 & 8191_u32).to_i32
    values[6] = (bytes[4] >> 14 & 8191_u32 | (bytes[5] & 2047_u32) << 13 - 11).to_i32
    values[7] = (bytes[5] >> 11 & 8191_u32 | (bytes[6] & 255_u32) << 13 - 8).to_i32

    values
  end

  # Pack 14 using 16
  # 1100000000000000 2222111111111111 3333332222222222 4444444433333333 5555555555444444 6666666666665555 7777777777777766
  def self.pack14(values)
    bytes = Slice(UInt16).new(7, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 14)
    bytes[1] |= (values[1] >> (14 - 12)) |
      (values[2] << 12)
    bytes[2] |= (values[2] >> (14 - 10)) |
      (values[3] << 10)
    bytes[3] |= (values[3] >> (14 - 8)) |
      (values[4] << 8)
    bytes[4] |= (values[4] >> (14 - 6)) |
      (values[5] << 6)
    bytes[5] |= (values[5] >> (14 - 4)) |
      (values[6] << 4)
    bytes[6] |= (values[6] >> (14 - 2)) |
      (values[7] << 2)

    bytes
  end

  # Unpack 14 using buffer 16 values Int32
  # 1100000000000000 2222111111111111 3333332222222222 4444444433333333 5555555555444444 6666666666665555 7777777777777766
  def self.unpack14(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 16383_u32).to_i32
    values[1] = (bytes[0] >> 14 & 16383_u32 | (bytes[1] & 4095_u32) << 14 - 12).to_i32
    values[2] = (bytes[1] >> 12 & 16383_u32 | (bytes[2] & 1023_u32) << 14 - 10).to_i32
    values[3] = (bytes[2] >> 10 & 16383_u32 | (bytes[3] & 255_u32) << 14 - 8).to_i32
    values[4] = (bytes[3] >> 8 & 16383_u32 | (bytes[4] & 63_u32) << 14 - 6).to_i32
    values[5] = (bytes[4] >> 6 & 16383_u32 | (bytes[5] & 15_u32) << 14 - 4).to_i32
    values[6] = (bytes[5] >> 4 & 16383_u32 | (bytes[6] & 3_u32) << 14 - 2).to_i32
    values[7] = (bytes[6] >> 2 & 16383_u32).to_i32

    values
  end

  # Pack 15 using 16
  # 1000000000000000 2211111111111111 3332222222222222 4444333333333333 5555544444444444 6666665555555555 7777777666666666 77777777
  def self.pack15(values)
    bytes = Slice(UInt16).new(8, 0_u16)

    bytes[0] |= values[0] |
      (values[1] << 15)
    bytes[1] |= (values[1] >> (15 - 14)) |
      (values[2] << 14)
    bytes[2] |= (values[2] >> (15 - 13)) |
      (values[3] << 13)
    bytes[3] |= (values[3] >> (15 - 12)) |
      (values[4] << 12)
    bytes[4] |= (values[4] >> (15 - 11)) |
      (values[5] << 11)
    bytes[5] |= (values[5] >> (15 - 10)) |
      (values[6] << 10)
    bytes[6] |= (values[6] >> (15 - 9)) |
      (values[7] << 9)
    bytes[7] |= values[7] >> 7

    bytes
  end

  # Unpack 15 using buffer 16 values Int32
  # 1000000000000000 2211111111111111 3332222222222222 4444333333333333 5555544444444444 6666665555555555 7777777666666666 77777777
  def self.unpack15(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 32767_u32).to_i32
    values[1] = (bytes[0] >> 15 & 32767_u32 | (bytes[1] & 16383_u32) << 15 - 14).to_i32
    values[2] = (bytes[1] >> 14 & 32767_u32 | (bytes[2] & 8191_u32) << 15 - 13).to_i32
    values[3] = (bytes[2] >> 13 & 32767_u32 | (bytes[3] & 4095_u32) << 15 - 12).to_i32
    values[4] = (bytes[3] >> 12 & 32767_u32 | (bytes[4] & 2047_u32) << 15 - 11).to_i32
    values[5] = (bytes[4] >> 11 & 32767_u32 | (bytes[5] & 1023_u32) << 15 - 10).to_i32
    values[6] = (bytes[5] >> 10 & 32767_u32 | (bytes[6] & 511_u32) << 15 - 9).to_i32
    values[7] = (bytes[6] >> 9 & 32767_u32 | (bytes[7] & 255_u32) << 15 - 8).to_i32

    values
  end

  # Pack 16 using 32
  # 11111111111111110000000000000000 33333333333333332222222222222222 55555555555555554444444444444444 77777777777777776666666666666666
  def self.pack16(values)
    bytes = Slice(UInt32).new(4, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 16)
    bytes[1] |= values[2] |
      (values[3] << 16)
    bytes[2] |= values[4] |
      (values[5] << 16)
    bytes[3] |= values[6] |
      (values[7] << 16)

    bytes
  end

  # Unpack 16 using buffer 32 values Int32
  # 11111111111111110000000000000000 33333333333333332222222222222222 55555555555555554444444444444444 77777777777777776666666666666666
  def self.unpack16(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 65535_u32).to_i32
    values[1] = (bytes[0] >> 16 & 65535_u32).to_i32
    values[2] = (bytes[1] >> 0 & 65535_u32).to_i32
    values[3] = (bytes[1] >> 16 & 65535_u32).to_i32
    values[4] = (bytes[2] >> 0 & 65535_u32).to_i32
    values[5] = (bytes[2] >> 16 & 65535_u32).to_i32
    values[6] = (bytes[3] >> 0 & 65535_u32).to_i32
    values[7] = (bytes[3] >> 16 & 65535_u32).to_i32

    values
  end

  # Pack 17 using 32
  # 11111111111111100000000000000000 33333333333332222222222222222211 55555555555444444444444444443333 77777777766666666666666666555555 77777777
  def self.pack17(values)
    bytes = Slice(UInt32).new(5, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 17)
    bytes[1] |= (values[1] >> (17 - 2)) |
      (values[2] << 2) |
      (values[3] << 19)
    bytes[2] |= (values[3] >> (17 - 4)) |
      (values[4] << 4) |
      (values[5] << 21)
    bytes[3] |= (values[5] >> (17 - 6)) |
      (values[6] << 6) |
      (values[7] << 23)
    bytes[4] |= values[7] >> 9

    bytes
  end

  # Unpack 17 using buffer 32 values Int32
  # 11111111111111100000000000000000 33333333333332222222222222222211 55555555555444444444444444443333 77777777766666666666666666555555 77777777
  def self.unpack17(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 131071_u32).to_i32
    values[1] = (bytes[0] >> 17 & 131071_u32 | (bytes[1] & 3_u32) << 17 - 2).to_i32
    values[2] = (bytes[1] >> 2 & 131071_u32).to_i32
    values[3] = (bytes[1] >> 19 & 131071_u32 | (bytes[2] & 15_u32) << 17 - 4).to_i32
    values[4] = (bytes[2] >> 4 & 131071_u32).to_i32
    values[5] = (bytes[2] >> 21 & 131071_u32 | (bytes[3] & 63_u32) << 17 - 6).to_i32
    values[6] = (bytes[3] >> 6 & 131071_u32).to_i32
    values[7] = (bytes[3] >> 23 & 131071_u32 | (bytes[4] & 255_u32) << 17 - 8).to_i32

    values
  end

  # Pack 18 using 32
  # 11111111111111000000000000000000 33333333332222222222222222221111 55555544444444444444444433333333 77666666666666666666555555555555 7777777777777777
  def self.pack18(values)
    bytes = Slice(UInt32).new(5, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 18)
    bytes[1] |= (values[1] >> (18 - 4)) |
      (values[2] << 4) |
      (values[3] << 22)
    bytes[2] |= (values[3] >> (18 - 8)) |
      (values[4] << 8) |
      (values[5] << 26)
    bytes[3] |= (values[5] >> (18 - 12)) |
      (values[6] << 12) |
      (values[7] << 30)
    bytes[4] |= values[7] >> 2

    bytes
  end

  # Unpack 18 using buffer 32 values Int32
  # 11111111111111000000000000000000 33333333332222222222222222221111 55555544444444444444444433333333 77666666666666666666555555555555 7777777777777777
  def self.unpack18(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 262143_u32).to_i32
    values[1] = (bytes[0] >> 18 & 262143_u32 | (bytes[1] & 15_u32) << 18 - 4).to_i32
    values[2] = (bytes[1] >> 4 & 262143_u32).to_i32
    values[3] = (bytes[1] >> 22 & 262143_u32 | (bytes[2] & 255_u32) << 18 - 8).to_i32
    values[4] = (bytes[2] >> 8 & 262143_u32).to_i32
    values[5] = (bytes[2] >> 26 & 262143_u32 | (bytes[3] & 4095_u32) << 18 - 12).to_i32
    values[6] = (bytes[3] >> 12 & 262143_u32).to_i32
    values[7] = (bytes[3] >> 30 & 262143_u32 | (bytes[4] & 65535_u32) << 18 - 16).to_i32

    values
  end

  # Pack 19 using 32
  # 11111111111110000000000000000000 33333332222222222222222222111111 54444444444444444444333333333333 66666666666666555555555555555555 777777777777777777766666
  def self.pack19(values)
    bytes = Slice(UInt32).new(5, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 19)
    bytes[1] |= (values[1] >> (19 - 6)) |
      (values[2] << 6) |
      (values[3] << 25)
    bytes[2] |= (values[3] >> (19 - 12)) |
      (values[4] << 12) |
      (values[5] << 31)
    bytes[3] |= (values[5] >> (19 - 18)) |
      (values[6] << 18)
    bytes[4] |= (values[6] >> (19 - 5)) |
      (values[7] << 5)

    bytes
  end

  # Unpack 19 using buffer 32 values Int32
  # 11111111111110000000000000000000 33333332222222222222222222111111 54444444444444444444333333333333 66666666666666555555555555555555 777777777777777777766666
  def self.unpack19(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 524287_u32).to_i32
    values[1] = (bytes[0] >> 19 & 524287_u32 | (bytes[1] & 63_u32) << 19 - 6).to_i32
    values[2] = (bytes[1] >> 6 & 524287_u32).to_i32
    values[3] = (bytes[1] >> 25 & 524287_u32 | (bytes[2] & 4095_u32) << 19 - 12).to_i32
    values[4] = (bytes[2] >> 12 & 524287_u32).to_i32
    values[5] = (bytes[2] >> 31 & 524287_u32 | (bytes[3] & 262143_u32) << 19 - 18).to_i32
    values[6] = (bytes[3] >> 18 & 524287_u32 | (bytes[4] & 31_u32) << 19 - 5).to_i32
    values[7] = (bytes[4] >> 5 & 524287_u32).to_i32

    values
  end

  # Pack 20 using 32
  # 11111111111100000000000000000000 33332222222222222222222211111111 44444444444444443333333333333333 66666666555555555555555555554444 77777777777777777777666666666666
  def self.pack20(values)
    bytes = Slice(UInt32).new(5, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 20)
    bytes[1] |= (values[1] >> (20 - 8)) |
      (values[2] << 8) |
      (values[3] << 28)
    bytes[2] |= (values[3] >> (20 - 16)) |
      (values[4] << 16)
    bytes[3] |= (values[4] >> (20 - 4)) |
      (values[5] << 4) |
      (values[6] << 24)
    bytes[4] |= (values[6] >> (20 - 12)) |
      (values[7] << 12)

    bytes
  end

  # Unpack 20 using buffer 32 values Int32
  # 11111111111100000000000000000000 33332222222222222222222211111111 44444444444444443333333333333333 66666666555555555555555555554444 77777777777777777777666666666666
  def self.unpack20(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 1048575_u32).to_i32
    values[1] = (bytes[0] >> 20 & 1048575_u32 | (bytes[1] & 255_u32) << 20 - 8).to_i32
    values[2] = (bytes[1] >> 8 & 1048575_u32).to_i32
    values[3] = (bytes[1] >> 28 & 1048575_u32 | (bytes[2] & 65535_u32) << 20 - 16).to_i32
    values[4] = (bytes[2] >> 16 & 1048575_u32 | (bytes[3] & 15_u32) << 20 - 4).to_i32
    values[5] = (bytes[3] >> 4 & 1048575_u32).to_i32
    values[6] = (bytes[3] >> 24 & 1048575_u32 | (bytes[4] & 4095_u32) << 20 - 12).to_i32
    values[7] = (bytes[4] >> 12 & 1048575_u32).to_i32

    values
  end

  # Pack 21 using 32
  # 11111111111000000000000000000000 32222222222222222222221111111111 44444444444433333333333333333333 66555555555555555555555444444444 77777777777776666666666666666666 77777777
  def self.pack21(values)
    bytes = Slice(UInt32).new(6, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 21)
    bytes[1] |= (values[1] >> (21 - 10)) |
      (values[2] << 10) |
      (values[3] << 31)
    bytes[2] |= (values[3] >> (21 - 20)) |
      (values[4] << 20)
    bytes[3] |= (values[4] >> (21 - 9)) |
      (values[5] << 9) |
      (values[6] << 30)
    bytes[4] |= (values[6] >> (21 - 19)) |
      (values[7] << 19)
    bytes[5] |= values[7] >> 13

    bytes
  end

  # Unpack 21 using buffer 32 values Int32
  # 11111111111000000000000000000000 32222222222222222222221111111111 44444444444433333333333333333333 66555555555555555555555444444444 77777777777776666666666666666666 77777777
  def self.unpack21(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 2097151_u32).to_i32
    values[1] = (bytes[0] >> 21 & 2097151_u32 | (bytes[1] & 1023_u32) << 21 - 10).to_i32
    values[2] = (bytes[1] >> 10 & 2097151_u32).to_i32
    values[3] = (bytes[1] >> 31 & 2097151_u32 | (bytes[2] & 1048575_u32) << 21 - 20).to_i32
    values[4] = (bytes[2] >> 20 & 2097151_u32 | (bytes[3] & 511_u32) << 21 - 9).to_i32
    values[5] = (bytes[3] >> 9 & 2097151_u32).to_i32
    values[6] = (bytes[3] >> 30 & 2097151_u32 | (bytes[4] & 524287_u32) << 21 - 19).to_i32
    values[7] = (bytes[4] >> 19 & 2097151_u32 | (bytes[5] & 255_u32) << 21 - 8).to_i32

    values
  end

  # Pack 22 using 32
  # 11111111110000000000000000000000 22222222222222222222111111111111 44444444333333333333333333333322 55555555555555555544444444444444 77777766666666666666666666665555 7777777777777777
  def self.pack22(values)
    bytes = Slice(UInt32).new(6, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 22)
    bytes[1] |= (values[1] >> (22 - 12)) |
      (values[2] << 12)
    bytes[2] |= (values[2] >> (22 - 2)) |
      (values[3] << 2) |
      (values[4] << 24)
    bytes[3] |= (values[4] >> (22 - 14)) |
      (values[5] << 14)
    bytes[4] |= (values[5] >> (22 - 4)) |
      (values[6] << 4) |
      (values[7] << 26)
    bytes[5] |= values[7] >> 6

    bytes
  end

  # Unpack 22 using buffer 32 values Int32
  # 11111111110000000000000000000000 22222222222222222222111111111111 44444444333333333333333333333322 55555555555555555544444444444444 77777766666666666666666666665555 7777777777777777
  def self.unpack22(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 4194303_u32).to_i32
    values[1] = (bytes[0] >> 22 & 4194303_u32 | (bytes[1] & 4095_u32) << 22 - 12).to_i32
    values[2] = (bytes[1] >> 12 & 4194303_u32 | (bytes[2] & 3_u32) << 22 - 2).to_i32
    values[3] = (bytes[2] >> 2 & 4194303_u32).to_i32
    values[4] = (bytes[2] >> 24 & 4194303_u32 | (bytes[3] & 16383_u32) << 22 - 14).to_i32
    values[5] = (bytes[3] >> 14 & 4194303_u32 | (bytes[4] & 15_u32) << 22 - 4).to_i32
    values[6] = (bytes[4] >> 4 & 4194303_u32).to_i32
    values[7] = (bytes[4] >> 26 & 4194303_u32 | (bytes[5] & 65535_u32) << 22 - 16).to_i32

    values
  end

  # Pack 23 using 32
  # 11111111100000000000000000000000 22222222222222222211111111111111 44443333333333333333333333322222 55555555555554444444444444444444 66666666666666666666665555555555 777777777777777777777776
  def self.pack23(values)
    bytes = Slice(UInt32).new(6, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 23)
    bytes[1] |= (values[1] >> (23 - 14)) |
      (values[2] << 14)
    bytes[2] |= (values[2] >> (23 - 5)) |
      (values[3] << 5) |
      (values[4] << 28)
    bytes[3] |= (values[4] >> (23 - 19)) |
      (values[5] << 19)
    bytes[4] |= (values[5] >> (23 - 10)) |
      (values[6] << 10)
    bytes[5] |= (values[6] >> (23 - 1)) |
      (values[7] << 1)

    bytes
  end

  # Unpack 23 using buffer 32 values Int32
  # 11111111100000000000000000000000 22222222222222222211111111111111 44443333333333333333333333322222 55555555555554444444444444444444 66666666666666666666665555555555 777777777777777777777776
  def self.unpack23(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 8388607_u32).to_i32
    values[1] = (bytes[0] >> 23 & 8388607_u32 | (bytes[1] & 16383_u32) << 23 - 14).to_i32
    values[2] = (bytes[1] >> 14 & 8388607_u32 | (bytes[2] & 31_u32) << 23 - 5).to_i32
    values[3] = (bytes[2] >> 5 & 8388607_u32).to_i32
    values[4] = (bytes[2] >> 28 & 8388607_u32 | (bytes[3] & 524287_u32) << 23 - 19).to_i32
    values[5] = (bytes[3] >> 19 & 8388607_u32 | (bytes[4] & 1023_u32) << 23 - 10).to_i32
    values[6] = (bytes[4] >> 10 & 8388607_u32 | (bytes[5] & 1_u32) << 23 - 1).to_i32
    values[7] = (bytes[5] >> 1 & 8388607_u32).to_i32

    values
  end

  # Pack 24 using 32
  # 11111111000000000000000000000000 22222222222222221111111111111111 33333333333333333333333322222222 55555555444444444444444444444444 66666666666666665555555555555555 77777777777777777777777766666666
  def self.pack24(values)
    bytes = Slice(UInt32).new(6, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 24)
    bytes[1] |= (values[1] >> (24 - 16)) |
      (values[2] << 16)
    bytes[2] |= (values[2] >> (24 - 8)) |
      (values[3] << 8)
    bytes[3] |= values[4] |
      (values[5] << 24)
    bytes[4] |= (values[5] >> (24 - 16)) |
      (values[6] << 16)
    bytes[5] |= (values[6] >> (24 - 8)) |
      (values[7] << 8)

    bytes
  end

  # Unpack 24 using buffer 32 values Int32
  # 11111111000000000000000000000000 22222222222222221111111111111111 33333333333333333333333322222222 55555555444444444444444444444444 66666666666666665555555555555555 77777777777777777777777766666666
  def self.unpack24(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 16777215_u32).to_i32
    values[1] = (bytes[0] >> 24 & 16777215_u32 | (bytes[1] & 65535_u32) << 24 - 16).to_i32
    values[2] = (bytes[1] >> 16 & 16777215_u32 | (bytes[2] & 255_u32) << 24 - 8).to_i32
    values[3] = (bytes[2] >> 8 & 16777215_u32).to_i32
    values[4] = (bytes[3] >> 0 & 16777215_u32).to_i32
    values[5] = (bytes[3] >> 24 & 16777215_u32 | (bytes[4] & 65535_u32) << 24 - 16).to_i32
    values[6] = (bytes[4] >> 16 & 16777215_u32 | (bytes[5] & 255_u32) << 24 - 8).to_i32
    values[7] = (bytes[5] >> 8 & 16777215_u32).to_i32

    values
  end

  # Pack 25 using 32
  # 11111110000000000000000000000000 22222222222222111111111111111111 33333333333333333333322222222222 55544444444444444444444444443333 66666666665555555555555555555555 77777777777777777666666666666666 77777777
  def self.pack25(values)
    bytes = Slice(UInt32).new(7, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 25)
    bytes[1] |= (values[1] >> (25 - 18)) |
      (values[2] << 18)
    bytes[2] |= (values[2] >> (25 - 11)) |
      (values[3] << 11)
    bytes[3] |= (values[3] >> (25 - 4)) |
      (values[4] << 4) |
      (values[5] << 29)
    bytes[4] |= (values[5] >> (25 - 22)) |
      (values[6] << 22)
    bytes[5] |= (values[6] >> (25 - 15)) |
      (values[7] << 15)
    bytes[6] |= values[7] >> 17

    bytes
  end

  # Unpack 25 using buffer 32 values Int32
  # 11111110000000000000000000000000 22222222222222111111111111111111 33333333333333333333322222222222 55544444444444444444444444443333 66666666665555555555555555555555 77777777777777777666666666666666 77777777
  def self.unpack25(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 33554431_u32).to_i32
    values[1] = (bytes[0] >> 25 & 33554431_u32 | (bytes[1] & 262143_u32) << 25 - 18).to_i32
    values[2] = (bytes[1] >> 18 & 33554431_u32 | (bytes[2] & 2047_u32) << 25 - 11).to_i32
    values[3] = (bytes[2] >> 11 & 33554431_u32 | (bytes[3] & 15_u32) << 25 - 4).to_i32
    values[4] = (bytes[3] >> 4 & 33554431_u32).to_i32
    values[5] = (bytes[3] >> 29 & 33554431_u32 | (bytes[4] & 4194303_u32) << 25 - 22).to_i32
    values[6] = (bytes[4] >> 22 & 33554431_u32 | (bytes[5] & 32767_u32) << 25 - 15).to_i32
    values[7] = (bytes[5] >> 15 & 33554431_u32 | (bytes[6] & 255_u32) << 25 - 8).to_i32

    values
  end

  # Pack 26 using 32
  # 11111100000000000000000000000000 22222222222211111111111111111111 33333333333333333322222222222222 44444444444444444444444433333333 66665555555555555555555555555544 77777777776666666666666666666666 7777777777777777
  def self.pack26(values)
    bytes = Slice(UInt32).new(7, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 26)
    bytes[1] |= (values[1] >> (26 - 20)) |
      (values[2] << 20)
    bytes[2] |= (values[2] >> (26 - 14)) |
      (values[3] << 14)
    bytes[3] |= (values[3] >> (26 - 8)) |
      (values[4] << 8)
    bytes[4] |= (values[4] >> (26 - 2)) |
      (values[5] << 2) |
      (values[6] << 28)
    bytes[5] |= (values[6] >> (26 - 22)) |
      (values[7] << 22)
    bytes[6] |= values[7] >> 10

    bytes
  end

  # Unpack 26 using buffer 32 values Int32
  # 11111100000000000000000000000000 22222222222211111111111111111111 33333333333333333322222222222222 44444444444444444444444433333333 66665555555555555555555555555544 77777777776666666666666666666666 7777777777777777
  def self.unpack26(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 67108863_u32).to_i32
    values[1] = (bytes[0] >> 26 & 67108863_u32 | (bytes[1] & 1048575_u32) << 26 - 20).to_i32
    values[2] = (bytes[1] >> 20 & 67108863_u32 | (bytes[2] & 16383_u32) << 26 - 14).to_i32
    values[3] = (bytes[2] >> 14 & 67108863_u32 | (bytes[3] & 255_u32) << 26 - 8).to_i32
    values[4] = (bytes[3] >> 8 & 67108863_u32 | (bytes[4] & 3_u32) << 26 - 2).to_i32
    values[5] = (bytes[4] >> 2 & 67108863_u32).to_i32
    values[6] = (bytes[4] >> 28 & 67108863_u32 | (bytes[5] & 4194303_u32) << 26 - 22).to_i32
    values[7] = (bytes[5] >> 22 & 67108863_u32 | (bytes[6] & 65535_u32) << 26 - 16).to_i32

    values
  end

  # Pack 27 using 32
  # 11111000000000000000000000000000 22222222221111111111111111111111 33333333333333322222222222222222 44444444444444444444333333333333 55555555555555555555555554444444 77766666666666666666666666666655 777777777777777777777777
  def self.pack27(values)
    bytes = Slice(UInt32).new(7, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 27)
    bytes[1] |= (values[1] >> (27 - 22)) |
      (values[2] << 22)
    bytes[2] |= (values[2] >> (27 - 17)) |
      (values[3] << 17)
    bytes[3] |= (values[3] >> (27 - 12)) |
      (values[4] << 12)
    bytes[4] |= (values[4] >> (27 - 7)) |
      (values[5] << 7)
    bytes[5] |= (values[5] >> (27 - 2)) |
      (values[6] << 2) |
      (values[7] << 29)
    bytes[6] |= values[7] >> 3

    bytes
  end

  # Unpack 27 using buffer 32 values Int32
  # 11111000000000000000000000000000 22222222221111111111111111111111 33333333333333322222222222222222 44444444444444444444333333333333 55555555555555555555555554444444 77766666666666666666666666666655 777777777777777777777777
  def self.unpack27(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 134217727_u32).to_i32
    values[1] = (bytes[0] >> 27 & 134217727_u32 | (bytes[1] & 4194303_u32) << 27 - 22).to_i32
    values[2] = (bytes[1] >> 22 & 134217727_u32 | (bytes[2] & 131071_u32) << 27 - 17).to_i32
    values[3] = (bytes[2] >> 17 & 134217727_u32 | (bytes[3] & 4095_u32) << 27 - 12).to_i32
    values[4] = (bytes[3] >> 12 & 134217727_u32 | (bytes[4] & 127_u32) << 27 - 7).to_i32
    values[5] = (bytes[4] >> 7 & 134217727_u32 | (bytes[5] & 3_u32) << 27 - 2).to_i32
    values[6] = (bytes[5] >> 2 & 134217727_u32).to_i32
    values[7] = (bytes[5] >> 29 & 134217727_u32 | (bytes[6] & 16777215_u32) << 27 - 24).to_i32

    values
  end

  # Pack 28 using 32
  # 11110000000000000000000000000000 22222222111111111111111111111111 33333333333322222222222222222222 44444444444444443333333333333333 55555555555555555555444444444444 66666666666666666666666655555555 77777777777777777777777777776666
  def self.pack28(values)
    bytes = Slice(UInt32).new(7, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 28)
    bytes[1] |= (values[1] >> (28 - 24)) |
      (values[2] << 24)
    bytes[2] |= (values[2] >> (28 - 20)) |
      (values[3] << 20)
    bytes[3] |= (values[3] >> (28 - 16)) |
      (values[4] << 16)
    bytes[4] |= (values[4] >> (28 - 12)) |
      (values[5] << 12)
    bytes[5] |= (values[5] >> (28 - 8)) |
      (values[6] << 8)
    bytes[6] |= (values[6] >> (28 - 4)) |
      (values[7] << 4)

    bytes
  end

  # Unpack 28 using buffer 32 values Int32
  # 11110000000000000000000000000000 22222222111111111111111111111111 33333333333322222222222222222222 44444444444444443333333333333333 55555555555555555555444444444444 66666666666666666666666655555555 77777777777777777777777777776666
  def self.unpack28(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 268435455_u32).to_i32
    values[1] = (bytes[0] >> 28 & 268435455_u32 | (bytes[1] & 16777215_u32) << 28 - 24).to_i32
    values[2] = (bytes[1] >> 24 & 268435455_u32 | (bytes[2] & 1048575_u32) << 28 - 20).to_i32
    values[3] = (bytes[2] >> 20 & 268435455_u32 | (bytes[3] & 65535_u32) << 28 - 16).to_i32
    values[4] = (bytes[3] >> 16 & 268435455_u32 | (bytes[4] & 4095_u32) << 28 - 12).to_i32
    values[5] = (bytes[4] >> 12 & 268435455_u32 | (bytes[5] & 255_u32) << 28 - 8).to_i32
    values[6] = (bytes[5] >> 8 & 268435455_u32 | (bytes[6] & 15_u32) << 28 - 4).to_i32
    values[7] = (bytes[6] >> 4 & 268435455_u32).to_i32

    values
  end

  # Pack 29 using 32
  # 11100000000000000000000000000000 22222211111111111111111111111111 33333333322222222222222222222222 44444444444433333333333333333333 55555555555555544444444444444444 66666666666666666655555555555555 77777777777777777777766666666666 77777777
  def self.pack29(values)
    bytes = Slice(UInt32).new(8, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 29)
    bytes[1] |= (values[1] >> (29 - 26)) |
      (values[2] << 26)
    bytes[2] |= (values[2] >> (29 - 23)) |
      (values[3] << 23)
    bytes[3] |= (values[3] >> (29 - 20)) |
      (values[4] << 20)
    bytes[4] |= (values[4] >> (29 - 17)) |
      (values[5] << 17)
    bytes[5] |= (values[5] >> (29 - 14)) |
      (values[6] << 14)
    bytes[6] |= (values[6] >> (29 - 11)) |
      (values[7] << 11)
    bytes[7] |= values[7] >> 21

    bytes
  end

  # Unpack 29 using buffer 32 values Int32
  # 11100000000000000000000000000000 22222211111111111111111111111111 33333333322222222222222222222222 44444444444433333333333333333333 55555555555555544444444444444444 66666666666666666655555555555555 77777777777777777777766666666666 77777777
  def self.unpack29(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 536870911_u32).to_i32
    values[1] = (bytes[0] >> 29 & 536870911_u32 | (bytes[1] & 67108863_u32) << 29 - 26).to_i32
    values[2] = (bytes[1] >> 26 & 536870911_u32 | (bytes[2] & 8388607_u32) << 29 - 23).to_i32
    values[3] = (bytes[2] >> 23 & 536870911_u32 | (bytes[3] & 1048575_u32) << 29 - 20).to_i32
    values[4] = (bytes[3] >> 20 & 536870911_u32 | (bytes[4] & 131071_u32) << 29 - 17).to_i32
    values[5] = (bytes[4] >> 17 & 536870911_u32 | (bytes[5] & 16383_u32) << 29 - 14).to_i32
    values[6] = (bytes[5] >> 14 & 536870911_u32 | (bytes[6] & 2047_u32) << 29 - 11).to_i32
    values[7] = (bytes[6] >> 11 & 536870911_u32 | (bytes[7] & 255_u32) << 29 - 8).to_i32

    values
  end

  # Pack 30 using 32
  # 11000000000000000000000000000000 22221111111111111111111111111111 33333322222222222222222222222222 44444444333333333333333333333333 55555555554444444444444444444444 66666666666655555555555555555555 77777777777777666666666666666666 7777777777777777
  def self.pack30(values)
    bytes = Slice(UInt32).new(8, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 30)
    bytes[1] |= (values[1] >> (30 - 28)) |
      (values[2] << 28)
    bytes[2] |= (values[2] >> (30 - 26)) |
      (values[3] << 26)
    bytes[3] |= (values[3] >> (30 - 24)) |
      (values[4] << 24)
    bytes[4] |= (values[4] >> (30 - 22)) |
      (values[5] << 22)
    bytes[5] |= (values[5] >> (30 - 20)) |
      (values[6] << 20)
    bytes[6] |= (values[6] >> (30 - 18)) |
      (values[7] << 18)
    bytes[7] |= values[7] >> 14

    bytes
  end

  # Unpack 30 using buffer 32 values Int32
  # 11000000000000000000000000000000 22221111111111111111111111111111 33333322222222222222222222222222 44444444333333333333333333333333 55555555554444444444444444444444 66666666666655555555555555555555 77777777777777666666666666666666 7777777777777777
  def self.unpack30(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 1073741823_u32).to_i32
    values[1] = (bytes[0] >> 30 & 1073741823_u32 | (bytes[1] & 268435455_u32) << 30 - 28).to_i32
    values[2] = (bytes[1] >> 28 & 1073741823_u32 | (bytes[2] & 67108863_u32) << 30 - 26).to_i32
    values[3] = (bytes[2] >> 26 & 1073741823_u32 | (bytes[3] & 16777215_u32) << 30 - 24).to_i32
    values[4] = (bytes[3] >> 24 & 1073741823_u32 | (bytes[4] & 4194303_u32) << 30 - 22).to_i32
    values[5] = (bytes[4] >> 22 & 1073741823_u32 | (bytes[5] & 1048575_u32) << 30 - 20).to_i32
    values[6] = (bytes[5] >> 20 & 1073741823_u32 | (bytes[6] & 262143_u32) << 30 - 18).to_i32
    values[7] = (bytes[6] >> 18 & 1073741823_u32 | (bytes[7] & 65535_u32) << 30 - 16).to_i32

    values
  end

  # Pack 31 using 32
  # 10000000000000000000000000000000 22111111111111111111111111111111 33322222222222222222222222222222 44443333333333333333333333333333 55555444444444444444444444444444 66666655555555555555555555555555 77777776666666666666666666666666 777777777777777777777777
  def self.pack31(values)
    bytes = Slice(UInt32).new(8, 0_u32)

    bytes[0] |= values[0] |
      (values[1] << 31)
    bytes[1] |= (values[1] >> (31 - 30)) |
      (values[2] << 30)
    bytes[2] |= (values[2] >> (31 - 29)) |
      (values[3] << 29)
    bytes[3] |= (values[3] >> (31 - 28)) |
      (values[4] << 28)
    bytes[4] |= (values[4] >> (31 - 27)) |
      (values[5] << 27)
    bytes[5] |= (values[5] >> (31 - 26)) |
      (values[6] << 26)
    bytes[6] |= (values[6] >> (31 - 25)) |
      (values[7] << 25)
    bytes[7] |= values[7] >> 7

    bytes
  end

  # Unpack 31 using buffer 32 values Int32
  # 10000000000000000000000000000000 22111111111111111111111111111111 33322222222222222222222222222222 44443333333333333333333333333333 55555444444444444444444444444444 66666655555555555555555555555555 77777776666666666666666666666666 777777777777777777777777
  def self.unpack31(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 2147483647_u32).to_i32
    values[1] = (bytes[0] >> 31 & 2147483647_u32 | (bytes[1] & 1073741823_u32) << 31 - 30).to_i32
    values[2] = (bytes[1] >> 30 & 2147483647_u32 | (bytes[2] & 536870911_u32) << 31 - 29).to_i32
    values[3] = (bytes[2] >> 29 & 2147483647_u32 | (bytes[3] & 268435455_u32) << 31 - 28).to_i32
    values[4] = (bytes[3] >> 28 & 2147483647_u32 | (bytes[4] & 134217727_u32) << 31 - 27).to_i32
    values[5] = (bytes[4] >> 27 & 2147483647_u32 | (bytes[5] & 67108863_u32) << 31 - 26).to_i32
    values[6] = (bytes[5] >> 26 & 2147483647_u32 | (bytes[6] & 33554431_u32) << 31 - 25).to_i32
    values[7] = (bytes[6] >> 25 & 2147483647_u32 | (bytes[7] & 16777215_u32) << 31 - 24).to_i32

    values
  end

  # Pack 32 using 32
  # 00000000000000000000000000000000 11111111111111111111111111111111 22222222222222222222222222222222 33333333333333333333333333333333 44444444444444444444444444444444 55555555555555555555555555555555 66666666666666666666666666666666 77777777777777777777777777777777
  def self.pack32(values)
    bytes = Slice(UInt32).new(8, 0_u32)

    bytes[0] |= values[0]
    bytes[1] |= values[1]
    bytes[2] |= values[2]
    bytes[3] |= values[3]
    bytes[4] |= values[4]
    bytes[5] |= values[5]
    bytes[6] |= values[6]
    bytes[7] |= values[7]

    bytes
  end

  # Unpack 32 using buffer 32 values Int32
  # 00000000000000000000000000000000 11111111111111111111111111111111 22222222222222222222222222222222 33333333333333333333333333333333 44444444444444444444444444444444 55555555555555555555555555555555 66666666666666666666666666666666 77777777777777777777777777777777
  def self.unpack32(bytes)
    values = Slice(Int32).new(8, 0_i32)

    values[0] = (bytes[0] >> 0 & 4294967295_u32).to_i32
    values[1] = (bytes[1] >> 0 & 4294967295_u32).to_i32
    values[2] = (bytes[2] >> 0 & 4294967295_u32).to_i32
    values[3] = (bytes[3] >> 0 & 4294967295_u32).to_i32
    values[4] = (bytes[4] >> 0 & 4294967295_u32).to_i32
    values[5] = (bytes[5] >> 0 & 4294967295_u32).to_i32
    values[6] = (bytes[6] >> 0 & 4294967295_u32).to_i32
    values[7] = (bytes[7] >> 0 & 4294967295_u32).to_i32

    values
  end
end
