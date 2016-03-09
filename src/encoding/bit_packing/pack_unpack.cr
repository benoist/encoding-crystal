module BitPacking
  def self.pack1(values)
    bytes = Slice(UInt32).new(1, 0_u32)
    bytes[0] = (((values[0] & 1_u32) << 0) |
      ((values[1] & 1_u32) << 1) |
      ((values[2] & 1_u32) << 2) |
      ((values[3] & 1_u32) << 3) |
      ((values[4] & 1_u32) << 4) |
      ((values[5] & 1_u32) << 5) |
      ((values[6] & 1_u32) << 6) |
      ((values[7] & 1_u32) << 7) |
      ((values[8] & 1_u32) << 8) |
      ((values[9] & 1_u32) << 9) |
      ((values[10] & 1_u32) << 10) |
      ((values[11] & 1_u32) << 11) |
      ((values[12] & 1_u32) << 12) |
      ((values[13] & 1_u32) << 13) |
      ((values[14] & 1_u32) << 14) |
      ((values[15] & 1_u32) << 15) |
      ((values[16] & 1_u32) << 16) |
      ((values[17] & 1_u32) << 17) |
      ((values[18] & 1_u32) << 18) |
      ((values[19] & 1_u32) << 19) |
      ((values[20] & 1_u32) << 20) |
      ((values[21] & 1_u32) << 21) |
      ((values[22] & 1_u32) << 22) |
      ((values[23] & 1_u32) << 23) |
      ((values[24] & 1_u32) << 24) |
      ((values[25] & 1_u32) << 25) |
      ((values[26] & 1_u32) << 26) |
      ((values[27] & 1_u32) << 27) |
      ((values[28] & 1_u32) << 28) |
      ((values[29] & 1_u32) << 29) |
      ((values[30] & 1_u32) << 30) |
      ((values[31] & 1_u32) << 31)).to_u32
    bytes
  end

  def self.unpack1(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 1_u32)).to_i32
    values[1] = (((bytes[0] >> 1) & 1_u32)).to_i32
    values[2] = (((bytes[0] >> 2) & 1_u32)).to_i32
    values[3] = (((bytes[0] >> 3) & 1_u32)).to_i32
    values[4] = (((bytes[0] >> 4) & 1_u32)).to_i32
    values[5] = (((bytes[0] >> 5) & 1_u32)).to_i32
    values[6] = (((bytes[0] >> 6) & 1_u32)).to_i32
    values[7] = (((bytes[0] >> 7) & 1_u32)).to_i32
    values[8] = (((bytes[0] >> 8) & 1_u32)).to_i32
    values[9] = (((bytes[0] >> 9) & 1_u32)).to_i32
    values[10] = (((bytes[0] >> 10) & 1_u32)).to_i32
    values[11] = (((bytes[0] >> 11) & 1_u32)).to_i32
    values[12] = (((bytes[0] >> 12) & 1_u32)).to_i32
    values[13] = (((bytes[0] >> 13) & 1_u32)).to_i32
    values[14] = (((bytes[0] >> 14) & 1_u32)).to_i32
    values[15] = (((bytes[0] >> 15) & 1_u32)).to_i32
    values[16] = (((bytes[0] >> 16) & 1_u32)).to_i32
    values[17] = (((bytes[0] >> 17) & 1_u32)).to_i32
    values[18] = (((bytes[0] >> 18) & 1_u32)).to_i32
    values[19] = (((bytes[0] >> 19) & 1_u32)).to_i32
    values[20] = (((bytes[0] >> 20) & 1_u32)).to_i32
    values[21] = (((bytes[0] >> 21) & 1_u32)).to_i32
    values[22] = (((bytes[0] >> 22) & 1_u32)).to_i32
    values[23] = (((bytes[0] >> 23) & 1_u32)).to_i32
    values[24] = (((bytes[0] >> 24) & 1_u32)).to_i32
    values[25] = (((bytes[0] >> 25) & 1_u32)).to_i32
    values[26] = (((bytes[0] >> 26) & 1_u32)).to_i32
    values[27] = (((bytes[0] >> 27) & 1_u32)).to_i32
    values[28] = (((bytes[0] >> 28) & 1_u32)).to_i32
    values[29] = (((bytes[0] >> 29) & 1_u32)).to_i32
    values[30] = (((bytes[0] >> 30) & 1_u32)).to_i32
    values[31] = (((bytes[0] >> 31) & 1_u32)).to_i32
    values
  end

  def self.pack2(values)
    bytes = Slice(UInt32).new(2, 0_u32)
    bytes[0] = (((values[0] & 3_u32) << 0) |
      ((values[1] & 3_u32) << 2) |
      ((values[2] & 3_u32) << 4) |
      ((values[3] & 3_u32) << 6) |
      ((values[4] & 3_u32) << 8) |
      ((values[5] & 3_u32) << 10) |
      ((values[6] & 3_u32) << 12) |
      ((values[7] & 3_u32) << 14) |
      ((values[8] & 3_u32) << 16) |
      ((values[9] & 3_u32) << 18) |
      ((values[10] & 3_u32) << 20) |
      ((values[11] & 3_u32) << 22) |
      ((values[12] & 3_u32) << 24) |
      ((values[13] & 3_u32) << 26) |
      ((values[14] & 3_u32) << 28) |
      ((values[15] & 3_u32) << 30)).to_u32
    bytes[1] = (((values[16] & 3_u32) << 0) |
      ((values[17] & 3_u32) << 2) |
      ((values[18] & 3_u32) << 4) |
      ((values[19] & 3_u32) << 6) |
      ((values[20] & 3_u32) << 8) |
      ((values[21] & 3_u32) << 10) |
      ((values[22] & 3_u32) << 12) |
      ((values[23] & 3_u32) << 14) |
      ((values[24] & 3_u32) << 16) |
      ((values[25] & 3_u32) << 18) |
      ((values[26] & 3_u32) << 20) |
      ((values[27] & 3_u32) << 22) |
      ((values[28] & 3_u32) << 24) |
      ((values[29] & 3_u32) << 26) |
      ((values[30] & 3_u32) << 28) |
      ((values[31] & 3_u32) << 30)).to_u32
    bytes
  end

  def self.unpack2(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 3_u32)).to_i32
    values[1] = (((bytes[0] >> 2) & 3_u32)).to_i32
    values[2] = (((bytes[0] >> 4) & 3_u32)).to_i32
    values[3] = (((bytes[0] >> 6) & 3_u32)).to_i32
    values[4] = (((bytes[0] >> 8) & 3_u32)).to_i32
    values[5] = (((bytes[0] >> 10) & 3_u32)).to_i32
    values[6] = (((bytes[0] >> 12) & 3_u32)).to_i32
    values[7] = (((bytes[0] >> 14) & 3_u32)).to_i32
    values[8] = (((bytes[0] >> 16) & 3_u32)).to_i32
    values[9] = (((bytes[0] >> 18) & 3_u32)).to_i32
    values[10] = (((bytes[0] >> 20) & 3_u32)).to_i32
    values[11] = (((bytes[0] >> 22) & 3_u32)).to_i32
    values[12] = (((bytes[0] >> 24) & 3_u32)).to_i32
    values[13] = (((bytes[0] >> 26) & 3_u32)).to_i32
    values[14] = (((bytes[0] >> 28) & 3_u32)).to_i32
    values[15] = (((bytes[0] >> 30) & 3_u32)).to_i32
    values[16] = (((bytes[1] >> 0) & 3_u32)).to_i32
    values[17] = (((bytes[1] >> 2) & 3_u32)).to_i32
    values[18] = (((bytes[1] >> 4) & 3_u32)).to_i32
    values[19] = (((bytes[1] >> 6) & 3_u32)).to_i32
    values[20] = (((bytes[1] >> 8) & 3_u32)).to_i32
    values[21] = (((bytes[1] >> 10) & 3_u32)).to_i32
    values[22] = (((bytes[1] >> 12) & 3_u32)).to_i32
    values[23] = (((bytes[1] >> 14) & 3_u32)).to_i32
    values[24] = (((bytes[1] >> 16) & 3_u32)).to_i32
    values[25] = (((bytes[1] >> 18) & 3_u32)).to_i32
    values[26] = (((bytes[1] >> 20) & 3_u32)).to_i32
    values[27] = (((bytes[1] >> 22) & 3_u32)).to_i32
    values[28] = (((bytes[1] >> 24) & 3_u32)).to_i32
    values[29] = (((bytes[1] >> 26) & 3_u32)).to_i32
    values[30] = (((bytes[1] >> 28) & 3_u32)).to_i32
    values[31] = (((bytes[1] >> 30) & 3_u32)).to_i32
    values
  end

  def self.pack3(values)
    bytes = Slice(UInt32).new(3, 0_u32)
    bytes[0] = (((values[0] & 7_u32) << 0) |
      ((values[1] & 7_u32) << 3) |
      ((values[2] & 7_u32) << 6) |
      ((values[3] & 7_u32) << 9) |
      ((values[4] & 7_u32) << 12) |
      ((values[5] & 7_u32) << 15) |
      ((values[6] & 7_u32) << 18) |
      ((values[7] & 7_u32) << 21) |
      ((values[8] & 7_u32) << 24) |
      ((values[9] & 7_u32) << 27) |
      ((values[10] & 7_u32) << 30)).to_u32
    bytes[1] = (((values[10] & 7_u32) >> 2) |
      ((values[11] & 7_u32) << 1) |
      ((values[12] & 7_u32) << 4) |
      ((values[13] & 7_u32) << 7) |
      ((values[14] & 7_u32) << 10) |
      ((values[15] & 7_u32) << 13) |
      ((values[16] & 7_u32) << 16) |
      ((values[17] & 7_u32) << 19) |
      ((values[18] & 7_u32) << 22) |
      ((values[19] & 7_u32) << 25) |
      ((values[20] & 7_u32) << 28) |
      ((values[21] & 7_u32) << 31)).to_u32
    bytes[2] = (((values[21] & 7_u32) >> 1) |
      ((values[22] & 7_u32) << 2) |
      ((values[23] & 7_u32) << 5) |
      ((values[24] & 7_u32) << 8) |
      ((values[25] & 7_u32) << 11) |
      ((values[26] & 7_u32) << 14) |
      ((values[27] & 7_u32) << 17) |
      ((values[28] & 7_u32) << 20) |
      ((values[29] & 7_u32) << 23) |
      ((values[30] & 7_u32) << 26) |
      ((values[31] & 7_u32) << 29)).to_u32
    bytes
  end

  def self.unpack3(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 7_u32)).to_i32
    values[1] = (((bytes[0] >> 3) & 7_u32)).to_i32
    values[2] = (((bytes[0] >> 6) & 7_u32)).to_i32
    values[3] = (((bytes[0] >> 9) & 7_u32)).to_i32
    values[4] = (((bytes[0] >> 12) & 7_u32)).to_i32
    values[5] = (((bytes[0] >> 15) & 7_u32)).to_i32
    values[6] = (((bytes[0] >> 18) & 7_u32)).to_i32
    values[7] = (((bytes[0] >> 21) & 7_u32)).to_i32
    values[8] = (((bytes[0] >> 24) & 7_u32)).to_i32
    values[9] = (((bytes[0] >> 27) & 7_u32)).to_i32
    values[10] = (((bytes[0] >> 30) & 7_u32) | ((bytes[1] & 1_u32) << 2)).to_i32
    values[11] = (((bytes[1] >> 1) & 7_u32)).to_i32
    values[12] = (((bytes[1] >> 4) & 7_u32)).to_i32
    values[13] = (((bytes[1] >> 7) & 7_u32)).to_i32
    values[14] = (((bytes[1] >> 10) & 7_u32)).to_i32
    values[15] = (((bytes[1] >> 13) & 7_u32)).to_i32
    values[16] = (((bytes[1] >> 16) & 7_u32)).to_i32
    values[17] = (((bytes[1] >> 19) & 7_u32)).to_i32
    values[18] = (((bytes[1] >> 22) & 7_u32)).to_i32
    values[19] = (((bytes[1] >> 25) & 7_u32)).to_i32
    values[20] = (((bytes[1] >> 28) & 7_u32)).to_i32
    values[21] = (((bytes[1] >> 31) & 7_u32) | ((bytes[2] & 3_u32) << 1)).to_i32
    values[22] = (((bytes[2] >> 2) & 7_u32)).to_i32
    values[23] = (((bytes[2] >> 5) & 7_u32)).to_i32
    values[24] = (((bytes[2] >> 8) & 7_u32)).to_i32
    values[25] = (((bytes[2] >> 11) & 7_u32)).to_i32
    values[26] = (((bytes[2] >> 14) & 7_u32)).to_i32
    values[27] = (((bytes[2] >> 17) & 7_u32)).to_i32
    values[28] = (((bytes[2] >> 20) & 7_u32)).to_i32
    values[29] = (((bytes[2] >> 23) & 7_u32)).to_i32
    values[30] = (((bytes[2] >> 26) & 7_u32)).to_i32
    values[31] = (((bytes[2] >> 29) & 7_u32)).to_i32
    values
  end

  def self.pack4(values)
    bytes = Slice(UInt32).new(4, 0_u32)
    bytes[0] = (((values[0] & 15_u32) << 0) |
      ((values[1] & 15_u32) << 4) |
      ((values[2] & 15_u32) << 8) |
      ((values[3] & 15_u32) << 12) |
      ((values[4] & 15_u32) << 16) |
      ((values[5] & 15_u32) << 20) |
      ((values[6] & 15_u32) << 24) |
      ((values[7] & 15_u32) << 28)).to_u32
    bytes[1] = (((values[8] & 15_u32) << 0) |
      ((values[9] & 15_u32) << 4) |
      ((values[10] & 15_u32) << 8) |
      ((values[11] & 15_u32) << 12) |
      ((values[12] & 15_u32) << 16) |
      ((values[13] & 15_u32) << 20) |
      ((values[14] & 15_u32) << 24) |
      ((values[15] & 15_u32) << 28)).to_u32
    bytes[2] = (((values[16] & 15_u32) << 0) |
      ((values[17] & 15_u32) << 4) |
      ((values[18] & 15_u32) << 8) |
      ((values[19] & 15_u32) << 12) |
      ((values[20] & 15_u32) << 16) |
      ((values[21] & 15_u32) << 20) |
      ((values[22] & 15_u32) << 24) |
      ((values[23] & 15_u32) << 28)).to_u32
    bytes[3] = (((values[24] & 15_u32) << 0) |
      ((values[25] & 15_u32) << 4) |
      ((values[26] & 15_u32) << 8) |
      ((values[27] & 15_u32) << 12) |
      ((values[28] & 15_u32) << 16) |
      ((values[29] & 15_u32) << 20) |
      ((values[30] & 15_u32) << 24) |
      ((values[31] & 15_u32) << 28)).to_u32
    bytes
  end

  def self.unpack4(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 15_u32)).to_i32
    values[1] = (((bytes[0] >> 4) & 15_u32)).to_i32
    values[2] = (((bytes[0] >> 8) & 15_u32)).to_i32
    values[3] = (((bytes[0] >> 12) & 15_u32)).to_i32
    values[4] = (((bytes[0] >> 16) & 15_u32)).to_i32
    values[5] = (((bytes[0] >> 20) & 15_u32)).to_i32
    values[6] = (((bytes[0] >> 24) & 15_u32)).to_i32
    values[7] = (((bytes[0] >> 28) & 15_u32)).to_i32
    values[8] = (((bytes[1] >> 0) & 15_u32)).to_i32
    values[9] = (((bytes[1] >> 4) & 15_u32)).to_i32
    values[10] = (((bytes[1] >> 8) & 15_u32)).to_i32
    values[11] = (((bytes[1] >> 12) & 15_u32)).to_i32
    values[12] = (((bytes[1] >> 16) & 15_u32)).to_i32
    values[13] = (((bytes[1] >> 20) & 15_u32)).to_i32
    values[14] = (((bytes[1] >> 24) & 15_u32)).to_i32
    values[15] = (((bytes[1] >> 28) & 15_u32)).to_i32
    values[16] = (((bytes[2] >> 0) & 15_u32)).to_i32
    values[17] = (((bytes[2] >> 4) & 15_u32)).to_i32
    values[18] = (((bytes[2] >> 8) & 15_u32)).to_i32
    values[19] = (((bytes[2] >> 12) & 15_u32)).to_i32
    values[20] = (((bytes[2] >> 16) & 15_u32)).to_i32
    values[21] = (((bytes[2] >> 20) & 15_u32)).to_i32
    values[22] = (((bytes[2] >> 24) & 15_u32)).to_i32
    values[23] = (((bytes[2] >> 28) & 15_u32)).to_i32
    values[24] = (((bytes[3] >> 0) & 15_u32)).to_i32
    values[25] = (((bytes[3] >> 4) & 15_u32)).to_i32
    values[26] = (((bytes[3] >> 8) & 15_u32)).to_i32
    values[27] = (((bytes[3] >> 12) & 15_u32)).to_i32
    values[28] = (((bytes[3] >> 16) & 15_u32)).to_i32
    values[29] = (((bytes[3] >> 20) & 15_u32)).to_i32
    values[30] = (((bytes[3] >> 24) & 15_u32)).to_i32
    values[31] = (((bytes[3] >> 28) & 15_u32)).to_i32
    values
  end

  def self.pack5(values)
    bytes = Slice(UInt32).new(5, 0_u32)
    bytes[0] = (((values[0] & 31_u32) << 0) |
      ((values[1] & 31_u32) << 5) |
      ((values[2] & 31_u32) << 10) |
      ((values[3] & 31_u32) << 15) |
      ((values[4] & 31_u32) << 20) |
      ((values[5] & 31_u32) << 25) |
      ((values[6] & 31_u32) << 30)).to_u32
    bytes[1] = (((values[6] & 31_u32) >> 2) |
      ((values[7] & 31_u32) << 3) |
      ((values[8] & 31_u32) << 8) |
      ((values[9] & 31_u32) << 13) |
      ((values[10] & 31_u32) << 18) |
      ((values[11] & 31_u32) << 23) |
      ((values[12] & 31_u32) << 28)).to_u32
    bytes[2] = (((values[12] & 31_u32) >> 4) |
      ((values[13] & 31_u32) << 1) |
      ((values[14] & 31_u32) << 6) |
      ((values[15] & 31_u32) << 11) |
      ((values[16] & 31_u32) << 16) |
      ((values[17] & 31_u32) << 21) |
      ((values[18] & 31_u32) << 26) |
      ((values[19] & 31_u32) << 31)).to_u32
    bytes[3] = (((values[19] & 31_u32) >> 1) |
      ((values[20] & 31_u32) << 4) |
      ((values[21] & 31_u32) << 9) |
      ((values[22] & 31_u32) << 14) |
      ((values[23] & 31_u32) << 19) |
      ((values[24] & 31_u32) << 24) |
      ((values[25] & 31_u32) << 29)).to_u32
    bytes[4] = (((values[25] & 31_u32) >> 3) |
      ((values[26] & 31_u32) << 2) |
      ((values[27] & 31_u32) << 7) |
      ((values[28] & 31_u32) << 12) |
      ((values[29] & 31_u32) << 17) |
      ((values[30] & 31_u32) << 22) |
      ((values[31] & 31_u32) << 27)).to_u32
    bytes
  end

  def self.unpack5(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 31_u32)).to_i32
    values[1] = (((bytes[0] >> 5) & 31_u32)).to_i32
    values[2] = (((bytes[0] >> 10) & 31_u32)).to_i32
    values[3] = (((bytes[0] >> 15) & 31_u32)).to_i32
    values[4] = (((bytes[0] >> 20) & 31_u32)).to_i32
    values[5] = (((bytes[0] >> 25) & 31_u32)).to_i32
    values[6] = (((bytes[0] >> 30) & 31_u32) | ((bytes[1] & 7_u32) << 2)).to_i32
    values[7] = (((bytes[1] >> 3) & 31_u32)).to_i32
    values[8] = (((bytes[1] >> 8) & 31_u32)).to_i32
    values[9] = (((bytes[1] >> 13) & 31_u32)).to_i32
    values[10] = (((bytes[1] >> 18) & 31_u32)).to_i32
    values[11] = (((bytes[1] >> 23) & 31_u32)).to_i32
    values[12] = (((bytes[1] >> 28) & 31_u32) | ((bytes[2] & 1_u32) << 4)).to_i32
    values[13] = (((bytes[2] >> 1) & 31_u32)).to_i32
    values[14] = (((bytes[2] >> 6) & 31_u32)).to_i32
    values[15] = (((bytes[2] >> 11) & 31_u32)).to_i32
    values[16] = (((bytes[2] >> 16) & 31_u32)).to_i32
    values[17] = (((bytes[2] >> 21) & 31_u32)).to_i32
    values[18] = (((bytes[2] >> 26) & 31_u32)).to_i32
    values[19] = (((bytes[2] >> 31) & 31_u32) | ((bytes[3] & 15_u32) << 1)).to_i32
    values[20] = (((bytes[3] >> 4) & 31_u32)).to_i32
    values[21] = (((bytes[3] >> 9) & 31_u32)).to_i32
    values[22] = (((bytes[3] >> 14) & 31_u32)).to_i32
    values[23] = (((bytes[3] >> 19) & 31_u32)).to_i32
    values[24] = (((bytes[3] >> 24) & 31_u32)).to_i32
    values[25] = (((bytes[3] >> 29) & 31_u32) | ((bytes[4] & 3_u32) << 3)).to_i32
    values[26] = (((bytes[4] >> 2) & 31_u32)).to_i32
    values[27] = (((bytes[4] >> 7) & 31_u32)).to_i32
    values[28] = (((bytes[4] >> 12) & 31_u32)).to_i32
    values[29] = (((bytes[4] >> 17) & 31_u32)).to_i32
    values[30] = (((bytes[4] >> 22) & 31_u32)).to_i32
    values[31] = (((bytes[4] >> 27) & 31_u32)).to_i32
    values
  end

  def self.pack6(values)
    bytes = Slice(UInt32).new(6, 0_u32)
    bytes[0] = (((values[0] & 63_u32) << 0) |
      ((values[1] & 63_u32) << 6) |
      ((values[2] & 63_u32) << 12) |
      ((values[3] & 63_u32) << 18) |
      ((values[4] & 63_u32) << 24) |
      ((values[5] & 63_u32) << 30)).to_u32
    bytes[1] = (((values[5] & 63_u32) >> 2) |
      ((values[6] & 63_u32) << 4) |
      ((values[7] & 63_u32) << 10) |
      ((values[8] & 63_u32) << 16) |
      ((values[9] & 63_u32) << 22) |
      ((values[10] & 63_u32) << 28)).to_u32
    bytes[2] = (((values[10] & 63_u32) >> 4) |
      ((values[11] & 63_u32) << 2) |
      ((values[12] & 63_u32) << 8) |
      ((values[13] & 63_u32) << 14) |
      ((values[14] & 63_u32) << 20) |
      ((values[15] & 63_u32) << 26)).to_u32
    bytes[3] = (((values[16] & 63_u32) << 0) |
      ((values[17] & 63_u32) << 6) |
      ((values[18] & 63_u32) << 12) |
      ((values[19] & 63_u32) << 18) |
      ((values[20] & 63_u32) << 24) |
      ((values[21] & 63_u32) << 30)).to_u32
    bytes[4] = (((values[21] & 63_u32) >> 2) |
      ((values[22] & 63_u32) << 4) |
      ((values[23] & 63_u32) << 10) |
      ((values[24] & 63_u32) << 16) |
      ((values[25] & 63_u32) << 22) |
      ((values[26] & 63_u32) << 28)).to_u32
    bytes[5] = (((values[26] & 63_u32) >> 4) |
      ((values[27] & 63_u32) << 2) |
      ((values[28] & 63_u32) << 8) |
      ((values[29] & 63_u32) << 14) |
      ((values[30] & 63_u32) << 20) |
      ((values[31] & 63_u32) << 26)).to_u32
    bytes
  end

  def self.unpack6(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 63_u32)).to_i32
    values[1] = (((bytes[0] >> 6) & 63_u32)).to_i32
    values[2] = (((bytes[0] >> 12) & 63_u32)).to_i32
    values[3] = (((bytes[0] >> 18) & 63_u32)).to_i32
    values[4] = (((bytes[0] >> 24) & 63_u32)).to_i32
    values[5] = (((bytes[0] >> 30) & 63_u32) | ((bytes[1] & 15_u32) << 2)).to_i32
    values[6] = (((bytes[1] >> 4) & 63_u32)).to_i32
    values[7] = (((bytes[1] >> 10) & 63_u32)).to_i32
    values[8] = (((bytes[1] >> 16) & 63_u32)).to_i32
    values[9] = (((bytes[1] >> 22) & 63_u32)).to_i32
    values[10] = (((bytes[1] >> 28) & 63_u32) | ((bytes[2] & 3_u32) << 4)).to_i32
    values[11] = (((bytes[2] >> 2) & 63_u32)).to_i32
    values[12] = (((bytes[2] >> 8) & 63_u32)).to_i32
    values[13] = (((bytes[2] >> 14) & 63_u32)).to_i32
    values[14] = (((bytes[2] >> 20) & 63_u32)).to_i32
    values[15] = (((bytes[2] >> 26) & 63_u32)).to_i32
    values[16] = (((bytes[3] >> 0) & 63_u32)).to_i32
    values[17] = (((bytes[3] >> 6) & 63_u32)).to_i32
    values[18] = (((bytes[3] >> 12) & 63_u32)).to_i32
    values[19] = (((bytes[3] >> 18) & 63_u32)).to_i32
    values[20] = (((bytes[3] >> 24) & 63_u32)).to_i32
    values[21] = (((bytes[3] >> 30) & 63_u32) | ((bytes[4] & 15_u32) << 2)).to_i32
    values[22] = (((bytes[4] >> 4) & 63_u32)).to_i32
    values[23] = (((bytes[4] >> 10) & 63_u32)).to_i32
    values[24] = (((bytes[4] >> 16) & 63_u32)).to_i32
    values[25] = (((bytes[4] >> 22) & 63_u32)).to_i32
    values[26] = (((bytes[4] >> 28) & 63_u32) | ((bytes[5] & 3_u32) << 4)).to_i32
    values[27] = (((bytes[5] >> 2) & 63_u32)).to_i32
    values[28] = (((bytes[5] >> 8) & 63_u32)).to_i32
    values[29] = (((bytes[5] >> 14) & 63_u32)).to_i32
    values[30] = (((bytes[5] >> 20) & 63_u32)).to_i32
    values[31] = (((bytes[5] >> 26) & 63_u32)).to_i32
    values
  end

  def self.pack7(values)
    bytes = Slice(UInt32).new(7, 0_u32)
    bytes[0] = (((values[0] & 127_u32) << 0) |
      ((values[1] & 127_u32) << 7) |
      ((values[2] & 127_u32) << 14) |
      ((values[3] & 127_u32) << 21) |
      ((values[4] & 127_u32) << 28)).to_u32
    bytes[1] = (((values[4] & 127_u32) >> 4) |
      ((values[5] & 127_u32) << 3) |
      ((values[6] & 127_u32) << 10) |
      ((values[7] & 127_u32) << 17) |
      ((values[8] & 127_u32) << 24) |
      ((values[9] & 127_u32) << 31)).to_u32
    bytes[2] = (((values[9] & 127_u32) >> 1) |
      ((values[10] & 127_u32) << 6) |
      ((values[11] & 127_u32) << 13) |
      ((values[12] & 127_u32) << 20) |
      ((values[13] & 127_u32) << 27)).to_u32
    bytes[3] = (((values[13] & 127_u32) >> 5) |
      ((values[14] & 127_u32) << 2) |
      ((values[15] & 127_u32) << 9) |
      ((values[16] & 127_u32) << 16) |
      ((values[17] & 127_u32) << 23) |
      ((values[18] & 127_u32) << 30)).to_u32
    bytes[4] = (((values[18] & 127_u32) >> 2) |
      ((values[19] & 127_u32) << 5) |
      ((values[20] & 127_u32) << 12) |
      ((values[21] & 127_u32) << 19) |
      ((values[22] & 127_u32) << 26)).to_u32
    bytes[5] = (((values[22] & 127_u32) >> 6) |
      ((values[23] & 127_u32) << 1) |
      ((values[24] & 127_u32) << 8) |
      ((values[25] & 127_u32) << 15) |
      ((values[26] & 127_u32) << 22) |
      ((values[27] & 127_u32) << 29)).to_u32
    bytes[6] = (((values[27] & 127_u32) >> 3) |
      ((values[28] & 127_u32) << 4) |
      ((values[29] & 127_u32) << 11) |
      ((values[30] & 127_u32) << 18) |
      ((values[31] & 127_u32) << 25)).to_u32
    bytes
  end

  def self.unpack7(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 127_u32)).to_i32
    values[1] = (((bytes[0] >> 7) & 127_u32)).to_i32
    values[2] = (((bytes[0] >> 14) & 127_u32)).to_i32
    values[3] = (((bytes[0] >> 21) & 127_u32)).to_i32
    values[4] = (((bytes[0] >> 28) & 127_u32) | ((bytes[1] & 7_u32) << 4)).to_i32
    values[5] = (((bytes[1] >> 3) & 127_u32)).to_i32
    values[6] = (((bytes[1] >> 10) & 127_u32)).to_i32
    values[7] = (((bytes[1] >> 17) & 127_u32)).to_i32
    values[8] = (((bytes[1] >> 24) & 127_u32)).to_i32
    values[9] = (((bytes[1] >> 31) & 127_u32) | ((bytes[2] & 63_u32) << 1)).to_i32
    values[10] = (((bytes[2] >> 6) & 127_u32)).to_i32
    values[11] = (((bytes[2] >> 13) & 127_u32)).to_i32
    values[12] = (((bytes[2] >> 20) & 127_u32)).to_i32
    values[13] = (((bytes[2] >> 27) & 127_u32) | ((bytes[3] & 3_u32) << 5)).to_i32
    values[14] = (((bytes[3] >> 2) & 127_u32)).to_i32
    values[15] = (((bytes[3] >> 9) & 127_u32)).to_i32
    values[16] = (((bytes[3] >> 16) & 127_u32)).to_i32
    values[17] = (((bytes[3] >> 23) & 127_u32)).to_i32
    values[18] = (((bytes[3] >> 30) & 127_u32) | ((bytes[4] & 31_u32) << 2)).to_i32
    values[19] = (((bytes[4] >> 5) & 127_u32)).to_i32
    values[20] = (((bytes[4] >> 12) & 127_u32)).to_i32
    values[21] = (((bytes[4] >> 19) & 127_u32)).to_i32
    values[22] = (((bytes[4] >> 26) & 127_u32) | ((bytes[5] & 1_u32) << 6)).to_i32
    values[23] = (((bytes[5] >> 1) & 127_u32)).to_i32
    values[24] = (((bytes[5] >> 8) & 127_u32)).to_i32
    values[25] = (((bytes[5] >> 15) & 127_u32)).to_i32
    values[26] = (((bytes[5] >> 22) & 127_u32)).to_i32
    values[27] = (((bytes[5] >> 29) & 127_u32) | ((bytes[6] & 15_u32) << 3)).to_i32
    values[28] = (((bytes[6] >> 4) & 127_u32)).to_i32
    values[29] = (((bytes[6] >> 11) & 127_u32)).to_i32
    values[30] = (((bytes[6] >> 18) & 127_u32)).to_i32
    values[31] = (((bytes[6] >> 25) & 127_u32)).to_i32
    values
  end

  def self.pack8(values)
    bytes = Slice(UInt32).new(8, 0_u32)
    bytes[0] = (((values[0] & 255_u32) << 0) |
      ((values[1] & 255_u32) << 8) |
      ((values[2] & 255_u32) << 16) |
      ((values[3] & 255_u32) << 24)).to_u32
    bytes[1] = (((values[4] & 255_u32) << 0) |
      ((values[5] & 255_u32) << 8) |
      ((values[6] & 255_u32) << 16) |
      ((values[7] & 255_u32) << 24)).to_u32
    bytes[2] = (((values[8] & 255_u32) << 0) |
      ((values[9] & 255_u32) << 8) |
      ((values[10] & 255_u32) << 16) |
      ((values[11] & 255_u32) << 24)).to_u32
    bytes[3] = (((values[12] & 255_u32) << 0) |
      ((values[13] & 255_u32) << 8) |
      ((values[14] & 255_u32) << 16) |
      ((values[15] & 255_u32) << 24)).to_u32
    bytes[4] = (((values[16] & 255_u32) << 0) |
      ((values[17] & 255_u32) << 8) |
      ((values[18] & 255_u32) << 16) |
      ((values[19] & 255_u32) << 24)).to_u32
    bytes[5] = (((values[20] & 255_u32) << 0) |
      ((values[21] & 255_u32) << 8) |
      ((values[22] & 255_u32) << 16) |
      ((values[23] & 255_u32) << 24)).to_u32
    bytes[6] = (((values[24] & 255_u32) << 0) |
      ((values[25] & 255_u32) << 8) |
      ((values[26] & 255_u32) << 16) |
      ((values[27] & 255_u32) << 24)).to_u32
    bytes[7] = (((values[28] & 255_u32) << 0) |
      ((values[29] & 255_u32) << 8) |
      ((values[30] & 255_u32) << 16) |
      ((values[31] & 255_u32) << 24)).to_u32
    bytes
  end

  def self.unpack8(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 255_u32)).to_i32
    values[1] = (((bytes[0] >> 8) & 255_u32)).to_i32
    values[2] = (((bytes[0] >> 16) & 255_u32)).to_i32
    values[3] = (((bytes[0] >> 24) & 255_u32)).to_i32
    values[4] = (((bytes[1] >> 0) & 255_u32)).to_i32
    values[5] = (((bytes[1] >> 8) & 255_u32)).to_i32
    values[6] = (((bytes[1] >> 16) & 255_u32)).to_i32
    values[7] = (((bytes[1] >> 24) & 255_u32)).to_i32
    values[8] = (((bytes[2] >> 0) & 255_u32)).to_i32
    values[9] = (((bytes[2] >> 8) & 255_u32)).to_i32
    values[10] = (((bytes[2] >> 16) & 255_u32)).to_i32
    values[11] = (((bytes[2] >> 24) & 255_u32)).to_i32
    values[12] = (((bytes[3] >> 0) & 255_u32)).to_i32
    values[13] = (((bytes[3] >> 8) & 255_u32)).to_i32
    values[14] = (((bytes[3] >> 16) & 255_u32)).to_i32
    values[15] = (((bytes[3] >> 24) & 255_u32)).to_i32
    values[16] = (((bytes[4] >> 0) & 255_u32)).to_i32
    values[17] = (((bytes[4] >> 8) & 255_u32)).to_i32
    values[18] = (((bytes[4] >> 16) & 255_u32)).to_i32
    values[19] = (((bytes[4] >> 24) & 255_u32)).to_i32
    values[20] = (((bytes[5] >> 0) & 255_u32)).to_i32
    values[21] = (((bytes[5] >> 8) & 255_u32)).to_i32
    values[22] = (((bytes[5] >> 16) & 255_u32)).to_i32
    values[23] = (((bytes[5] >> 24) & 255_u32)).to_i32
    values[24] = (((bytes[6] >> 0) & 255_u32)).to_i32
    values[25] = (((bytes[6] >> 8) & 255_u32)).to_i32
    values[26] = (((bytes[6] >> 16) & 255_u32)).to_i32
    values[27] = (((bytes[6] >> 24) & 255_u32)).to_i32
    values[28] = (((bytes[7] >> 0) & 255_u32)).to_i32
    values[29] = (((bytes[7] >> 8) & 255_u32)).to_i32
    values[30] = (((bytes[7] >> 16) & 255_u32)).to_i32
    values[31] = (((bytes[7] >> 24) & 255_u32)).to_i32
    values
  end

  def self.pack9(values)
    bytes = Slice(UInt32).new(9, 0_u32)
    bytes[0] = (((values[0] & 511_u32) << 0) |
      ((values[1] & 511_u32) << 9) |
      ((values[2] & 511_u32) << 18) |
      ((values[3] & 511_u32) << 27)).to_u32
    bytes[1] = (((values[3] & 511_u32) >> 5) |
      ((values[4] & 511_u32) << 4) |
      ((values[5] & 511_u32) << 13) |
      ((values[6] & 511_u32) << 22) |
      ((values[7] & 511_u32) << 31)).to_u32
    bytes[2] = (((values[7] & 511_u32) >> 1) |
      ((values[8] & 511_u32) << 8) |
      ((values[9] & 511_u32) << 17) |
      ((values[10] & 511_u32) << 26)).to_u32
    bytes[3] = (((values[10] & 511_u32) >> 6) |
      ((values[11] & 511_u32) << 3) |
      ((values[12] & 511_u32) << 12) |
      ((values[13] & 511_u32) << 21) |
      ((values[14] & 511_u32) << 30)).to_u32
    bytes[4] = (((values[14] & 511_u32) >> 2) |
      ((values[15] & 511_u32) << 7) |
      ((values[16] & 511_u32) << 16) |
      ((values[17] & 511_u32) << 25)).to_u32
    bytes[5] = (((values[17] & 511_u32) >> 7) |
      ((values[18] & 511_u32) << 2) |
      ((values[19] & 511_u32) << 11) |
      ((values[20] & 511_u32) << 20) |
      ((values[21] & 511_u32) << 29)).to_u32
    bytes[6] = (((values[21] & 511_u32) >> 3) |
      ((values[22] & 511_u32) << 6) |
      ((values[23] & 511_u32) << 15) |
      ((values[24] & 511_u32) << 24)).to_u32
    bytes[7] = (((values[24] & 511_u32) >> 8) |
      ((values[25] & 511_u32) << 1) |
      ((values[26] & 511_u32) << 10) |
      ((values[27] & 511_u32) << 19) |
      ((values[28] & 511_u32) << 28)).to_u32
    bytes[8] = (((values[28] & 511_u32) >> 4) |
      ((values[29] & 511_u32) << 5) |
      ((values[30] & 511_u32) << 14) |
      ((values[31] & 511_u32) << 23)).to_u32
    bytes
  end

  def self.unpack9(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 511_u32)).to_i32
    values[1] = (((bytes[0] >> 9) & 511_u32)).to_i32
    values[2] = (((bytes[0] >> 18) & 511_u32)).to_i32
    values[3] = (((bytes[0] >> 27) & 511_u32) | ((bytes[1] & 15_u32) << 5)).to_i32
    values[4] = (((bytes[1] >> 4) & 511_u32)).to_i32
    values[5] = (((bytes[1] >> 13) & 511_u32)).to_i32
    values[6] = (((bytes[1] >> 22) & 511_u32)).to_i32
    values[7] = (((bytes[1] >> 31) & 511_u32) | ((bytes[2] & 255_u32) << 1)).to_i32
    values[8] = (((bytes[2] >> 8) & 511_u32)).to_i32
    values[9] = (((bytes[2] >> 17) & 511_u32)).to_i32
    values[10] = (((bytes[2] >> 26) & 511_u32) | ((bytes[3] & 7_u32) << 6)).to_i32
    values[11] = (((bytes[3] >> 3) & 511_u32)).to_i32
    values[12] = (((bytes[3] >> 12) & 511_u32)).to_i32
    values[13] = (((bytes[3] >> 21) & 511_u32)).to_i32
    values[14] = (((bytes[3] >> 30) & 511_u32) | ((bytes[4] & 127_u32) << 2)).to_i32
    values[15] = (((bytes[4] >> 7) & 511_u32)).to_i32
    values[16] = (((bytes[4] >> 16) & 511_u32)).to_i32
    values[17] = (((bytes[4] >> 25) & 511_u32) | ((bytes[5] & 3_u32) << 7)).to_i32
    values[18] = (((bytes[5] >> 2) & 511_u32)).to_i32
    values[19] = (((bytes[5] >> 11) & 511_u32)).to_i32
    values[20] = (((bytes[5] >> 20) & 511_u32)).to_i32
    values[21] = (((bytes[5] >> 29) & 511_u32) | ((bytes[6] & 63_u32) << 3)).to_i32
    values[22] = (((bytes[6] >> 6) & 511_u32)).to_i32
    values[23] = (((bytes[6] >> 15) & 511_u32)).to_i32
    values[24] = (((bytes[6] >> 24) & 511_u32) | ((bytes[7] & 1_u32) << 8)).to_i32
    values[25] = (((bytes[7] >> 1) & 511_u32)).to_i32
    values[26] = (((bytes[7] >> 10) & 511_u32)).to_i32
    values[27] = (((bytes[7] >> 19) & 511_u32)).to_i32
    values[28] = (((bytes[7] >> 28) & 511_u32) | ((bytes[8] & 31_u32) << 4)).to_i32
    values[29] = (((bytes[8] >> 5) & 511_u32)).to_i32
    values[30] = (((bytes[8] >> 14) & 511_u32)).to_i32
    values[31] = (((bytes[8] >> 23) & 511_u32)).to_i32
    values
  end

  def self.pack10(values)
    bytes = Slice(UInt32).new(10, 0_u32)
    bytes[0] = (((values[0] & 1023_u32) << 0) |
      ((values[1] & 1023_u32) << 10) |
      ((values[2] & 1023_u32) << 20) |
      ((values[3] & 1023_u32) << 30)).to_u32
    bytes[1] = (((values[3] & 1023_u32) >> 2) |
      ((values[4] & 1023_u32) << 8) |
      ((values[5] & 1023_u32) << 18) |
      ((values[6] & 1023_u32) << 28)).to_u32
    bytes[2] = (((values[6] & 1023_u32) >> 4) |
      ((values[7] & 1023_u32) << 6) |
      ((values[8] & 1023_u32) << 16) |
      ((values[9] & 1023_u32) << 26)).to_u32
    bytes[3] = (((values[9] & 1023_u32) >> 6) |
      ((values[10] & 1023_u32) << 4) |
      ((values[11] & 1023_u32) << 14) |
      ((values[12] & 1023_u32) << 24)).to_u32
    bytes[4] = (((values[12] & 1023_u32) >> 8) |
      ((values[13] & 1023_u32) << 2) |
      ((values[14] & 1023_u32) << 12) |
      ((values[15] & 1023_u32) << 22)).to_u32
    bytes[5] = (((values[16] & 1023_u32) << 0) |
      ((values[17] & 1023_u32) << 10) |
      ((values[18] & 1023_u32) << 20) |
      ((values[19] & 1023_u32) << 30)).to_u32
    bytes[6] = (((values[19] & 1023_u32) >> 2) |
      ((values[20] & 1023_u32) << 8) |
      ((values[21] & 1023_u32) << 18) |
      ((values[22] & 1023_u32) << 28)).to_u32
    bytes[7] = (((values[22] & 1023_u32) >> 4) |
      ((values[23] & 1023_u32) << 6) |
      ((values[24] & 1023_u32) << 16) |
      ((values[25] & 1023_u32) << 26)).to_u32
    bytes[8] = (((values[25] & 1023_u32) >> 6) |
      ((values[26] & 1023_u32) << 4) |
      ((values[27] & 1023_u32) << 14) |
      ((values[28] & 1023_u32) << 24)).to_u32
    bytes[9] = (((values[28] & 1023_u32) >> 8) |
      ((values[29] & 1023_u32) << 2) |
      ((values[30] & 1023_u32) << 12) |
      ((values[31] & 1023_u32) << 22)).to_u32
    bytes
  end

  def self.unpack10(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 1023_u32)).to_i32
    values[1] = (((bytes[0] >> 10) & 1023_u32)).to_i32
    values[2] = (((bytes[0] >> 20) & 1023_u32)).to_i32
    values[3] = (((bytes[0] >> 30) & 1023_u32) | ((bytes[1] & 255_u32) << 2)).to_i32
    values[4] = (((bytes[1] >> 8) & 1023_u32)).to_i32
    values[5] = (((bytes[1] >> 18) & 1023_u32)).to_i32
    values[6] = (((bytes[1] >> 28) & 1023_u32) | ((bytes[2] & 63_u32) << 4)).to_i32
    values[7] = (((bytes[2] >> 6) & 1023_u32)).to_i32
    values[8] = (((bytes[2] >> 16) & 1023_u32)).to_i32
    values[9] = (((bytes[2] >> 26) & 1023_u32) | ((bytes[3] & 15_u32) << 6)).to_i32
    values[10] = (((bytes[3] >> 4) & 1023_u32)).to_i32
    values[11] = (((bytes[3] >> 14) & 1023_u32)).to_i32
    values[12] = (((bytes[3] >> 24) & 1023_u32) | ((bytes[4] & 3_u32) << 8)).to_i32
    values[13] = (((bytes[4] >> 2) & 1023_u32)).to_i32
    values[14] = (((bytes[4] >> 12) & 1023_u32)).to_i32
    values[15] = (((bytes[4] >> 22) & 1023_u32)).to_i32
    values[16] = (((bytes[5] >> 0) & 1023_u32)).to_i32
    values[17] = (((bytes[5] >> 10) & 1023_u32)).to_i32
    values[18] = (((bytes[5] >> 20) & 1023_u32)).to_i32
    values[19] = (((bytes[5] >> 30) & 1023_u32) | ((bytes[6] & 255_u32) << 2)).to_i32
    values[20] = (((bytes[6] >> 8) & 1023_u32)).to_i32
    values[21] = (((bytes[6] >> 18) & 1023_u32)).to_i32
    values[22] = (((bytes[6] >> 28) & 1023_u32) | ((bytes[7] & 63_u32) << 4)).to_i32
    values[23] = (((bytes[7] >> 6) & 1023_u32)).to_i32
    values[24] = (((bytes[7] >> 16) & 1023_u32)).to_i32
    values[25] = (((bytes[7] >> 26) & 1023_u32) | ((bytes[8] & 15_u32) << 6)).to_i32
    values[26] = (((bytes[8] >> 4) & 1023_u32)).to_i32
    values[27] = (((bytes[8] >> 14) & 1023_u32)).to_i32
    values[28] = (((bytes[8] >> 24) & 1023_u32) | ((bytes[9] & 3_u32) << 8)).to_i32
    values[29] = (((bytes[9] >> 2) & 1023_u32)).to_i32
    values[30] = (((bytes[9] >> 12) & 1023_u32)).to_i32
    values[31] = (((bytes[9] >> 22) & 1023_u32)).to_i32
    values
  end

  def self.pack11(values)
    bytes = Slice(UInt32).new(11, 0_u32)
    bytes[0] = (((values[0] & 2047_u32) << 0) |
      ((values[1] & 2047_u32) << 11) |
      ((values[2] & 2047_u32) << 22)).to_u32
    bytes[1] = (((values[2] & 2047_u32) >> 10) |
      ((values[3] & 2047_u32) << 1) |
      ((values[4] & 2047_u32) << 12) |
      ((values[5] & 2047_u32) << 23)).to_u32
    bytes[2] = (((values[5] & 2047_u32) >> 9) |
      ((values[6] & 2047_u32) << 2) |
      ((values[7] & 2047_u32) << 13) |
      ((values[8] & 2047_u32) << 24)).to_u32
    bytes[3] = (((values[8] & 2047_u32) >> 8) |
      ((values[9] & 2047_u32) << 3) |
      ((values[10] & 2047_u32) << 14) |
      ((values[11] & 2047_u32) << 25)).to_u32
    bytes[4] = (((values[11] & 2047_u32) >> 7) |
      ((values[12] & 2047_u32) << 4) |
      ((values[13] & 2047_u32) << 15) |
      ((values[14] & 2047_u32) << 26)).to_u32
    bytes[5] = (((values[14] & 2047_u32) >> 6) |
      ((values[15] & 2047_u32) << 5) |
      ((values[16] & 2047_u32) << 16) |
      ((values[17] & 2047_u32) << 27)).to_u32
    bytes[6] = (((values[17] & 2047_u32) >> 5) |
      ((values[18] & 2047_u32) << 6) |
      ((values[19] & 2047_u32) << 17) |
      ((values[20] & 2047_u32) << 28)).to_u32
    bytes[7] = (((values[20] & 2047_u32) >> 4) |
      ((values[21] & 2047_u32) << 7) |
      ((values[22] & 2047_u32) << 18) |
      ((values[23] & 2047_u32) << 29)).to_u32
    bytes[8] = (((values[23] & 2047_u32) >> 3) |
      ((values[24] & 2047_u32) << 8) |
      ((values[25] & 2047_u32) << 19) |
      ((values[26] & 2047_u32) << 30)).to_u32
    bytes[9] = (((values[26] & 2047_u32) >> 2) |
      ((values[27] & 2047_u32) << 9) |
      ((values[28] & 2047_u32) << 20) |
      ((values[29] & 2047_u32) << 31)).to_u32
    bytes[10] = (((values[29] & 2047_u32) >> 1) |
      ((values[30] & 2047_u32) << 10) |
      ((values[31] & 2047_u32) << 21)).to_u32
    bytes
  end

  def self.unpack11(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 2047_u32)).to_i32
    values[1] = (((bytes[0] >> 11) & 2047_u32)).to_i32
    values[2] = (((bytes[0] >> 22) & 2047_u32) | ((bytes[1] & 1_u32) << 10)).to_i32
    values[3] = (((bytes[1] >> 1) & 2047_u32)).to_i32
    values[4] = (((bytes[1] >> 12) & 2047_u32)).to_i32
    values[5] = (((bytes[1] >> 23) & 2047_u32) | ((bytes[2] & 3_u32) << 9)).to_i32
    values[6] = (((bytes[2] >> 2) & 2047_u32)).to_i32
    values[7] = (((bytes[2] >> 13) & 2047_u32)).to_i32
    values[8] = (((bytes[2] >> 24) & 2047_u32) | ((bytes[3] & 7_u32) << 8)).to_i32
    values[9] = (((bytes[3] >> 3) & 2047_u32)).to_i32
    values[10] = (((bytes[3] >> 14) & 2047_u32)).to_i32
    values[11] = (((bytes[3] >> 25) & 2047_u32) | ((bytes[4] & 15_u32) << 7)).to_i32
    values[12] = (((bytes[4] >> 4) & 2047_u32)).to_i32
    values[13] = (((bytes[4] >> 15) & 2047_u32)).to_i32
    values[14] = (((bytes[4] >> 26) & 2047_u32) | ((bytes[5] & 31_u32) << 6)).to_i32
    values[15] = (((bytes[5] >> 5) & 2047_u32)).to_i32
    values[16] = (((bytes[5] >> 16) & 2047_u32)).to_i32
    values[17] = (((bytes[5] >> 27) & 2047_u32) | ((bytes[6] & 63_u32) << 5)).to_i32
    values[18] = (((bytes[6] >> 6) & 2047_u32)).to_i32
    values[19] = (((bytes[6] >> 17) & 2047_u32)).to_i32
    values[20] = (((bytes[6] >> 28) & 2047_u32) | ((bytes[7] & 127_u32) << 4)).to_i32
    values[21] = (((bytes[7] >> 7) & 2047_u32)).to_i32
    values[22] = (((bytes[7] >> 18) & 2047_u32)).to_i32
    values[23] = (((bytes[7] >> 29) & 2047_u32) | ((bytes[8] & 255_u32) << 3)).to_i32
    values[24] = (((bytes[8] >> 8) & 2047_u32)).to_i32
    values[25] = (((bytes[8] >> 19) & 2047_u32)).to_i32
    values[26] = (((bytes[8] >> 30) & 2047_u32) | ((bytes[9] & 511_u32) << 2)).to_i32
    values[27] = (((bytes[9] >> 9) & 2047_u32)).to_i32
    values[28] = (((bytes[9] >> 20) & 2047_u32)).to_i32
    values[29] = (((bytes[9] >> 31) & 2047_u32) | ((bytes[10] & 1023_u32) << 1)).to_i32
    values[30] = (((bytes[10] >> 10) & 2047_u32)).to_i32
    values[31] = (((bytes[10] >> 21) & 2047_u32)).to_i32
    values
  end

  def self.pack12(values)
    bytes = Slice(UInt32).new(12, 0_u32)
    bytes[0] = (((values[0] & 4095_u32) << 0) |
      ((values[1] & 4095_u32) << 12) |
      ((values[2] & 4095_u32) << 24)).to_u32
    bytes[1] = (((values[2] & 4095_u32) >> 8) |
      ((values[3] & 4095_u32) << 4) |
      ((values[4] & 4095_u32) << 16) |
      ((values[5] & 4095_u32) << 28)).to_u32
    bytes[2] = (((values[5] & 4095_u32) >> 4) |
      ((values[6] & 4095_u32) << 8) |
      ((values[7] & 4095_u32) << 20)).to_u32
    bytes[3] = (((values[8] & 4095_u32) << 0) |
      ((values[9] & 4095_u32) << 12) |
      ((values[10] & 4095_u32) << 24)).to_u32
    bytes[4] = (((values[10] & 4095_u32) >> 8) |
      ((values[11] & 4095_u32) << 4) |
      ((values[12] & 4095_u32) << 16) |
      ((values[13] & 4095_u32) << 28)).to_u32
    bytes[5] = (((values[13] & 4095_u32) >> 4) |
      ((values[14] & 4095_u32) << 8) |
      ((values[15] & 4095_u32) << 20)).to_u32
    bytes[6] = (((values[16] & 4095_u32) << 0) |
      ((values[17] & 4095_u32) << 12) |
      ((values[18] & 4095_u32) << 24)).to_u32
    bytes[7] = (((values[18] & 4095_u32) >> 8) |
      ((values[19] & 4095_u32) << 4) |
      ((values[20] & 4095_u32) << 16) |
      ((values[21] & 4095_u32) << 28)).to_u32
    bytes[8] = (((values[21] & 4095_u32) >> 4) |
      ((values[22] & 4095_u32) << 8) |
      ((values[23] & 4095_u32) << 20)).to_u32
    bytes[9] = (((values[24] & 4095_u32) << 0) |
      ((values[25] & 4095_u32) << 12) |
      ((values[26] & 4095_u32) << 24)).to_u32
    bytes[10] = (((values[26] & 4095_u32) >> 8) |
      ((values[27] & 4095_u32) << 4) |
      ((values[28] & 4095_u32) << 16) |
      ((values[29] & 4095_u32) << 28)).to_u32
    bytes[11] = (((values[29] & 4095_u32) >> 4) |
      ((values[30] & 4095_u32) << 8) |
      ((values[31] & 4095_u32) << 20)).to_u32
    bytes
  end

  def self.unpack12(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 4095_u32)).to_i32
    values[1] = (((bytes[0] >> 12) & 4095_u32)).to_i32
    values[2] = (((bytes[0] >> 24) & 4095_u32) | ((bytes[1] & 15_u32) << 8)).to_i32
    values[3] = (((bytes[1] >> 4) & 4095_u32)).to_i32
    values[4] = (((bytes[1] >> 16) & 4095_u32)).to_i32
    values[5] = (((bytes[1] >> 28) & 4095_u32) | ((bytes[2] & 255_u32) << 4)).to_i32
    values[6] = (((bytes[2] >> 8) & 4095_u32)).to_i32
    values[7] = (((bytes[2] >> 20) & 4095_u32)).to_i32
    values[8] = (((bytes[3] >> 0) & 4095_u32)).to_i32
    values[9] = (((bytes[3] >> 12) & 4095_u32)).to_i32
    values[10] = (((bytes[3] >> 24) & 4095_u32) | ((bytes[4] & 15_u32) << 8)).to_i32
    values[11] = (((bytes[4] >> 4) & 4095_u32)).to_i32
    values[12] = (((bytes[4] >> 16) & 4095_u32)).to_i32
    values[13] = (((bytes[4] >> 28) & 4095_u32) | ((bytes[5] & 255_u32) << 4)).to_i32
    values[14] = (((bytes[5] >> 8) & 4095_u32)).to_i32
    values[15] = (((bytes[5] >> 20) & 4095_u32)).to_i32
    values[16] = (((bytes[6] >> 0) & 4095_u32)).to_i32
    values[17] = (((bytes[6] >> 12) & 4095_u32)).to_i32
    values[18] = (((bytes[6] >> 24) & 4095_u32) | ((bytes[7] & 15_u32) << 8)).to_i32
    values[19] = (((bytes[7] >> 4) & 4095_u32)).to_i32
    values[20] = (((bytes[7] >> 16) & 4095_u32)).to_i32
    values[21] = (((bytes[7] >> 28) & 4095_u32) | ((bytes[8] & 255_u32) << 4)).to_i32
    values[22] = (((bytes[8] >> 8) & 4095_u32)).to_i32
    values[23] = (((bytes[8] >> 20) & 4095_u32)).to_i32
    values[24] = (((bytes[9] >> 0) & 4095_u32)).to_i32
    values[25] = (((bytes[9] >> 12) & 4095_u32)).to_i32
    values[26] = (((bytes[9] >> 24) & 4095_u32) | ((bytes[10] & 15_u32) << 8)).to_i32
    values[27] = (((bytes[10] >> 4) & 4095_u32)).to_i32
    values[28] = (((bytes[10] >> 16) & 4095_u32)).to_i32
    values[29] = (((bytes[10] >> 28) & 4095_u32) | ((bytes[11] & 255_u32) << 4)).to_i32
    values[30] = (((bytes[11] >> 8) & 4095_u32)).to_i32
    values[31] = (((bytes[11] >> 20) & 4095_u32)).to_i32
    values
  end

  def self.pack13(values)
    bytes = Slice(UInt32).new(13, 0_u32)
    bytes[0] = (((values[0] & 8191_u32) << 0) |
      ((values[1] & 8191_u32) << 13) |
      ((values[2] & 8191_u32) << 26)).to_u32
    bytes[1] = (((values[2] & 8191_u32) >> 6) |
      ((values[3] & 8191_u32) << 7) |
      ((values[4] & 8191_u32) << 20)).to_u32
    bytes[2] = (((values[4] & 8191_u32) >> 12) |
      ((values[5] & 8191_u32) << 1) |
      ((values[6] & 8191_u32) << 14) |
      ((values[7] & 8191_u32) << 27)).to_u32
    bytes[3] = (((values[7] & 8191_u32) >> 5) |
      ((values[8] & 8191_u32) << 8) |
      ((values[9] & 8191_u32) << 21)).to_u32
    bytes[4] = (((values[9] & 8191_u32) >> 11) |
      ((values[10] & 8191_u32) << 2) |
      ((values[11] & 8191_u32) << 15) |
      ((values[12] & 8191_u32) << 28)).to_u32
    bytes[5] = (((values[12] & 8191_u32) >> 4) |
      ((values[13] & 8191_u32) << 9) |
      ((values[14] & 8191_u32) << 22)).to_u32
    bytes[6] = (((values[14] & 8191_u32) >> 10) |
      ((values[15] & 8191_u32) << 3) |
      ((values[16] & 8191_u32) << 16) |
      ((values[17] & 8191_u32) << 29)).to_u32
    bytes[7] = (((values[17] & 8191_u32) >> 3) |
      ((values[18] & 8191_u32) << 10) |
      ((values[19] & 8191_u32) << 23)).to_u32
    bytes[8] = (((values[19] & 8191_u32) >> 9) |
      ((values[20] & 8191_u32) << 4) |
      ((values[21] & 8191_u32) << 17) |
      ((values[22] & 8191_u32) << 30)).to_u32
    bytes[9] = (((values[22] & 8191_u32) >> 2) |
      ((values[23] & 8191_u32) << 11) |
      ((values[24] & 8191_u32) << 24)).to_u32
    bytes[10] = (((values[24] & 8191_u32) >> 8) |
      ((values[25] & 8191_u32) << 5) |
      ((values[26] & 8191_u32) << 18) |
      ((values[27] & 8191_u32) << 31)).to_u32
    bytes[11] = (((values[27] & 8191_u32) >> 1) |
      ((values[28] & 8191_u32) << 12) |
      ((values[29] & 8191_u32) << 25)).to_u32
    bytes[12] = (((values[29] & 8191_u32) >> 7) |
      ((values[30] & 8191_u32) << 6) |
      ((values[31] & 8191_u32) << 19)).to_u32
    bytes
  end

  def self.unpack13(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 8191_u32)).to_i32
    values[1] = (((bytes[0] >> 13) & 8191_u32)).to_i32
    values[2] = (((bytes[0] >> 26) & 8191_u32) | ((bytes[1] & 127_u32) << 6)).to_i32
    values[3] = (((bytes[1] >> 7) & 8191_u32)).to_i32
    values[4] = (((bytes[1] >> 20) & 8191_u32) | ((bytes[2] & 1_u32) << 12)).to_i32
    values[5] = (((bytes[2] >> 1) & 8191_u32)).to_i32
    values[6] = (((bytes[2] >> 14) & 8191_u32)).to_i32
    values[7] = (((bytes[2] >> 27) & 8191_u32) | ((bytes[3] & 255_u32) << 5)).to_i32
    values[8] = (((bytes[3] >> 8) & 8191_u32)).to_i32
    values[9] = (((bytes[3] >> 21) & 8191_u32) | ((bytes[4] & 3_u32) << 11)).to_i32
    values[10] = (((bytes[4] >> 2) & 8191_u32)).to_i32
    values[11] = (((bytes[4] >> 15) & 8191_u32)).to_i32
    values[12] = (((bytes[4] >> 28) & 8191_u32) | ((bytes[5] & 511_u32) << 4)).to_i32
    values[13] = (((bytes[5] >> 9) & 8191_u32)).to_i32
    values[14] = (((bytes[5] >> 22) & 8191_u32) | ((bytes[6] & 7_u32) << 10)).to_i32
    values[15] = (((bytes[6] >> 3) & 8191_u32)).to_i32
    values[16] = (((bytes[6] >> 16) & 8191_u32)).to_i32
    values[17] = (((bytes[6] >> 29) & 8191_u32) | ((bytes[7] & 1023_u32) << 3)).to_i32
    values[18] = (((bytes[7] >> 10) & 8191_u32)).to_i32
    values[19] = (((bytes[7] >> 23) & 8191_u32) | ((bytes[8] & 15_u32) << 9)).to_i32
    values[20] = (((bytes[8] >> 4) & 8191_u32)).to_i32
    values[21] = (((bytes[8] >> 17) & 8191_u32)).to_i32
    values[22] = (((bytes[8] >> 30) & 8191_u32) | ((bytes[9] & 2047_u32) << 2)).to_i32
    values[23] = (((bytes[9] >> 11) & 8191_u32)).to_i32
    values[24] = (((bytes[9] >> 24) & 8191_u32) | ((bytes[10] & 31_u32) << 8)).to_i32
    values[25] = (((bytes[10] >> 5) & 8191_u32)).to_i32
    values[26] = (((bytes[10] >> 18) & 8191_u32)).to_i32
    values[27] = (((bytes[10] >> 31) & 8191_u32) | ((bytes[11] & 4095_u32) << 1)).to_i32
    values[28] = (((bytes[11] >> 12) & 8191_u32)).to_i32
    values[29] = (((bytes[11] >> 25) & 8191_u32) | ((bytes[12] & 63_u32) << 7)).to_i32
    values[30] = (((bytes[12] >> 6) & 8191_u32)).to_i32
    values[31] = (((bytes[12] >> 19) & 8191_u32)).to_i32
    values
  end

  def self.pack14(values)
    bytes = Slice(UInt32).new(14, 0_u32)
    bytes[0] = (((values[0] & 16383_u32) << 0) |
      ((values[1] & 16383_u32) << 14) |
      ((values[2] & 16383_u32) << 28)).to_u32
    bytes[1] = (((values[2] & 16383_u32) >> 4) |
      ((values[3] & 16383_u32) << 10) |
      ((values[4] & 16383_u32) << 24)).to_u32
    bytes[2] = (((values[4] & 16383_u32) >> 8) |
      ((values[5] & 16383_u32) << 6) |
      ((values[6] & 16383_u32) << 20)).to_u32
    bytes[3] = (((values[6] & 16383_u32) >> 12) |
      ((values[7] & 16383_u32) << 2) |
      ((values[8] & 16383_u32) << 16) |
      ((values[9] & 16383_u32) << 30)).to_u32
    bytes[4] = (((values[9] & 16383_u32) >> 2) |
      ((values[10] & 16383_u32) << 12) |
      ((values[11] & 16383_u32) << 26)).to_u32
    bytes[5] = (((values[11] & 16383_u32) >> 6) |
      ((values[12] & 16383_u32) << 8) |
      ((values[13] & 16383_u32) << 22)).to_u32
    bytes[6] = (((values[13] & 16383_u32) >> 10) |
      ((values[14] & 16383_u32) << 4) |
      ((values[15] & 16383_u32) << 18)).to_u32
    bytes[7] = (((values[16] & 16383_u32) << 0) |
      ((values[17] & 16383_u32) << 14) |
      ((values[18] & 16383_u32) << 28)).to_u32
    bytes[8] = (((values[18] & 16383_u32) >> 4) |
      ((values[19] & 16383_u32) << 10) |
      ((values[20] & 16383_u32) << 24)).to_u32
    bytes[9] = (((values[20] & 16383_u32) >> 8) |
      ((values[21] & 16383_u32) << 6) |
      ((values[22] & 16383_u32) << 20)).to_u32
    bytes[10] = (((values[22] & 16383_u32) >> 12) |
      ((values[23] & 16383_u32) << 2) |
      ((values[24] & 16383_u32) << 16) |
      ((values[25] & 16383_u32) << 30)).to_u32
    bytes[11] = (((values[25] & 16383_u32) >> 2) |
      ((values[26] & 16383_u32) << 12) |
      ((values[27] & 16383_u32) << 26)).to_u32
    bytes[12] = (((values[27] & 16383_u32) >> 6) |
      ((values[28] & 16383_u32) << 8) |
      ((values[29] & 16383_u32) << 22)).to_u32
    bytes[13] = (((values[29] & 16383_u32) >> 10) |
      ((values[30] & 16383_u32) << 4) |
      ((values[31] & 16383_u32) << 18)).to_u32
    bytes
  end

  def self.unpack14(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 16383_u32)).to_i32
    values[1] = (((bytes[0] >> 14) & 16383_u32)).to_i32
    values[2] = (((bytes[0] >> 28) & 16383_u32) | ((bytes[1] & 1023_u32) << 4)).to_i32
    values[3] = (((bytes[1] >> 10) & 16383_u32)).to_i32
    values[4] = (((bytes[1] >> 24) & 16383_u32) | ((bytes[2] & 63_u32) << 8)).to_i32
    values[5] = (((bytes[2] >> 6) & 16383_u32)).to_i32
    values[6] = (((bytes[2] >> 20) & 16383_u32) | ((bytes[3] & 3_u32) << 12)).to_i32
    values[7] = (((bytes[3] >> 2) & 16383_u32)).to_i32
    values[8] = (((bytes[3] >> 16) & 16383_u32)).to_i32
    values[9] = (((bytes[3] >> 30) & 16383_u32) | ((bytes[4] & 4095_u32) << 2)).to_i32
    values[10] = (((bytes[4] >> 12) & 16383_u32)).to_i32
    values[11] = (((bytes[4] >> 26) & 16383_u32) | ((bytes[5] & 255_u32) << 6)).to_i32
    values[12] = (((bytes[5] >> 8) & 16383_u32)).to_i32
    values[13] = (((bytes[5] >> 22) & 16383_u32) | ((bytes[6] & 15_u32) << 10)).to_i32
    values[14] = (((bytes[6] >> 4) & 16383_u32)).to_i32
    values[15] = (((bytes[6] >> 18) & 16383_u32)).to_i32
    values[16] = (((bytes[7] >> 0) & 16383_u32)).to_i32
    values[17] = (((bytes[7] >> 14) & 16383_u32)).to_i32
    values[18] = (((bytes[7] >> 28) & 16383_u32) | ((bytes[8] & 1023_u32) << 4)).to_i32
    values[19] = (((bytes[8] >> 10) & 16383_u32)).to_i32
    values[20] = (((bytes[8] >> 24) & 16383_u32) | ((bytes[9] & 63_u32) << 8)).to_i32
    values[21] = (((bytes[9] >> 6) & 16383_u32)).to_i32
    values[22] = (((bytes[9] >> 20) & 16383_u32) | ((bytes[10] & 3_u32) << 12)).to_i32
    values[23] = (((bytes[10] >> 2) & 16383_u32)).to_i32
    values[24] = (((bytes[10] >> 16) & 16383_u32)).to_i32
    values[25] = (((bytes[10] >> 30) & 16383_u32) | ((bytes[11] & 4095_u32) << 2)).to_i32
    values[26] = (((bytes[11] >> 12) & 16383_u32)).to_i32
    values[27] = (((bytes[11] >> 26) & 16383_u32) | ((bytes[12] & 255_u32) << 6)).to_i32
    values[28] = (((bytes[12] >> 8) & 16383_u32)).to_i32
    values[29] = (((bytes[12] >> 22) & 16383_u32) | ((bytes[13] & 15_u32) << 10)).to_i32
    values[30] = (((bytes[13] >> 4) & 16383_u32)).to_i32
    values[31] = (((bytes[13] >> 18) & 16383_u32)).to_i32
    values
  end

  def self.pack15(values)
    bytes = Slice(UInt32).new(15, 0_u32)
    bytes[0] = (((values[0] & 32767_u32) << 0) |
      ((values[1] & 32767_u32) << 15) |
      ((values[2] & 32767_u32) << 30)).to_u32
    bytes[1] = (((values[2] & 32767_u32) >> 2) |
      ((values[3] & 32767_u32) << 13) |
      ((values[4] & 32767_u32) << 28)).to_u32
    bytes[2] = (((values[4] & 32767_u32) >> 4) |
      ((values[5] & 32767_u32) << 11) |
      ((values[6] & 32767_u32) << 26)).to_u32
    bytes[3] = (((values[6] & 32767_u32) >> 6) |
      ((values[7] & 32767_u32) << 9) |
      ((values[8] & 32767_u32) << 24)).to_u32
    bytes[4] = (((values[8] & 32767_u32) >> 8) |
      ((values[9] & 32767_u32) << 7) |
      ((values[10] & 32767_u32) << 22)).to_u32
    bytes[5] = (((values[10] & 32767_u32) >> 10) |
      ((values[11] & 32767_u32) << 5) |
      ((values[12] & 32767_u32) << 20)).to_u32
    bytes[6] = (((values[12] & 32767_u32) >> 12) |
      ((values[13] & 32767_u32) << 3) |
      ((values[14] & 32767_u32) << 18)).to_u32
    bytes[7] = (((values[14] & 32767_u32) >> 14) |
      ((values[15] & 32767_u32) << 1) |
      ((values[16] & 32767_u32) << 16) |
      ((values[17] & 32767_u32) << 31)).to_u32
    bytes[8] = (((values[17] & 32767_u32) >> 1) |
      ((values[18] & 32767_u32) << 14) |
      ((values[19] & 32767_u32) << 29)).to_u32
    bytes[9] = (((values[19] & 32767_u32) >> 3) |
      ((values[20] & 32767_u32) << 12) |
      ((values[21] & 32767_u32) << 27)).to_u32
    bytes[10] = (((values[21] & 32767_u32) >> 5) |
      ((values[22] & 32767_u32) << 10) |
      ((values[23] & 32767_u32) << 25)).to_u32
    bytes[11] = (((values[23] & 32767_u32) >> 7) |
      ((values[24] & 32767_u32) << 8) |
      ((values[25] & 32767_u32) << 23)).to_u32
    bytes[12] = (((values[25] & 32767_u32) >> 9) |
      ((values[26] & 32767_u32) << 6) |
      ((values[27] & 32767_u32) << 21)).to_u32
    bytes[13] = (((values[27] & 32767_u32) >> 11) |
      ((values[28] & 32767_u32) << 4) |
      ((values[29] & 32767_u32) << 19)).to_u32
    bytes[14] = (((values[29] & 32767_u32) >> 13) |
      ((values[30] & 32767_u32) << 2) |
      ((values[31] & 32767_u32) << 17)).to_u32
    bytes
  end

  def self.unpack15(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 32767_u32)).to_i32
    values[1] = (((bytes[0] >> 15) & 32767_u32)).to_i32
    values[2] = (((bytes[0] >> 30) & 32767_u32) | ((bytes[1] & 8191_u32) << 2)).to_i32
    values[3] = (((bytes[1] >> 13) & 32767_u32)).to_i32
    values[4] = (((bytes[1] >> 28) & 32767_u32) | ((bytes[2] & 2047_u32) << 4)).to_i32
    values[5] = (((bytes[2] >> 11) & 32767_u32)).to_i32
    values[6] = (((bytes[2] >> 26) & 32767_u32) | ((bytes[3] & 511_u32) << 6)).to_i32
    values[7] = (((bytes[3] >> 9) & 32767_u32)).to_i32
    values[8] = (((bytes[3] >> 24) & 32767_u32) | ((bytes[4] & 127_u32) << 8)).to_i32
    values[9] = (((bytes[4] >> 7) & 32767_u32)).to_i32
    values[10] = (((bytes[4] >> 22) & 32767_u32) | ((bytes[5] & 31_u32) << 10)).to_i32
    values[11] = (((bytes[5] >> 5) & 32767_u32)).to_i32
    values[12] = (((bytes[5] >> 20) & 32767_u32) | ((bytes[6] & 7_u32) << 12)).to_i32
    values[13] = (((bytes[6] >> 3) & 32767_u32)).to_i32
    values[14] = (((bytes[6] >> 18) & 32767_u32) | ((bytes[7] & 1_u32) << 14)).to_i32
    values[15] = (((bytes[7] >> 1) & 32767_u32)).to_i32
    values[16] = (((bytes[7] >> 16) & 32767_u32)).to_i32
    values[17] = (((bytes[7] >> 31) & 32767_u32) | ((bytes[8] & 16383_u32) << 1)).to_i32
    values[18] = (((bytes[8] >> 14) & 32767_u32)).to_i32
    values[19] = (((bytes[8] >> 29) & 32767_u32) | ((bytes[9] & 4095_u32) << 3)).to_i32
    values[20] = (((bytes[9] >> 12) & 32767_u32)).to_i32
    values[21] = (((bytes[9] >> 27) & 32767_u32) | ((bytes[10] & 1023_u32) << 5)).to_i32
    values[22] = (((bytes[10] >> 10) & 32767_u32)).to_i32
    values[23] = (((bytes[10] >> 25) & 32767_u32) | ((bytes[11] & 255_u32) << 7)).to_i32
    values[24] = (((bytes[11] >> 8) & 32767_u32)).to_i32
    values[25] = (((bytes[11] >> 23) & 32767_u32) | ((bytes[12] & 63_u32) << 9)).to_i32
    values[26] = (((bytes[12] >> 6) & 32767_u32)).to_i32
    values[27] = (((bytes[12] >> 21) & 32767_u32) | ((bytes[13] & 15_u32) << 11)).to_i32
    values[28] = (((bytes[13] >> 4) & 32767_u32)).to_i32
    values[29] = (((bytes[13] >> 19) & 32767_u32) | ((bytes[14] & 3_u32) << 13)).to_i32
    values[30] = (((bytes[14] >> 2) & 32767_u32)).to_i32
    values[31] = (((bytes[14] >> 17) & 32767_u32)).to_i32
    values
  end

  def self.pack16(values)
    bytes = Slice(UInt32).new(16, 0_u32)
    bytes[0] = (((values[0] & 65535_u32) << 0) |
      ((values[1] & 65535_u32) << 16)).to_u32
    bytes[1] = (((values[2] & 65535_u32) << 0) |
      ((values[3] & 65535_u32) << 16)).to_u32
    bytes[2] = (((values[4] & 65535_u32) << 0) |
      ((values[5] & 65535_u32) << 16)).to_u32
    bytes[3] = (((values[6] & 65535_u32) << 0) |
      ((values[7] & 65535_u32) << 16)).to_u32
    bytes[4] = (((values[8] & 65535_u32) << 0) |
      ((values[9] & 65535_u32) << 16)).to_u32
    bytes[5] = (((values[10] & 65535_u32) << 0) |
      ((values[11] & 65535_u32) << 16)).to_u32
    bytes[6] = (((values[12] & 65535_u32) << 0) |
      ((values[13] & 65535_u32) << 16)).to_u32
    bytes[7] = (((values[14] & 65535_u32) << 0) |
      ((values[15] & 65535_u32) << 16)).to_u32
    bytes[8] = (((values[16] & 65535_u32) << 0) |
      ((values[17] & 65535_u32) << 16)).to_u32
    bytes[9] = (((values[18] & 65535_u32) << 0) |
      ((values[19] & 65535_u32) << 16)).to_u32
    bytes[10] = (((values[20] & 65535_u32) << 0) |
      ((values[21] & 65535_u32) << 16)).to_u32
    bytes[11] = (((values[22] & 65535_u32) << 0) |
      ((values[23] & 65535_u32) << 16)).to_u32
    bytes[12] = (((values[24] & 65535_u32) << 0) |
      ((values[25] & 65535_u32) << 16)).to_u32
    bytes[13] = (((values[26] & 65535_u32) << 0) |
      ((values[27] & 65535_u32) << 16)).to_u32
    bytes[14] = (((values[28] & 65535_u32) << 0) |
      ((values[29] & 65535_u32) << 16)).to_u32
    bytes[15] = (((values[30] & 65535_u32) << 0) |
      ((values[31] & 65535_u32) << 16)).to_u32
    bytes
  end

  def self.unpack16(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 65535_u32)).to_i32
    values[1] = (((bytes[0] >> 16) & 65535_u32)).to_i32
    values[2] = (((bytes[1] >> 0) & 65535_u32)).to_i32
    values[3] = (((bytes[1] >> 16) & 65535_u32)).to_i32
    values[4] = (((bytes[2] >> 0) & 65535_u32)).to_i32
    values[5] = (((bytes[2] >> 16) & 65535_u32)).to_i32
    values[6] = (((bytes[3] >> 0) & 65535_u32)).to_i32
    values[7] = (((bytes[3] >> 16) & 65535_u32)).to_i32
    values[8] = (((bytes[4] >> 0) & 65535_u32)).to_i32
    values[9] = (((bytes[4] >> 16) & 65535_u32)).to_i32
    values[10] = (((bytes[5] >> 0) & 65535_u32)).to_i32
    values[11] = (((bytes[5] >> 16) & 65535_u32)).to_i32
    values[12] = (((bytes[6] >> 0) & 65535_u32)).to_i32
    values[13] = (((bytes[6] >> 16) & 65535_u32)).to_i32
    values[14] = (((bytes[7] >> 0) & 65535_u32)).to_i32
    values[15] = (((bytes[7] >> 16) & 65535_u32)).to_i32
    values[16] = (((bytes[8] >> 0) & 65535_u32)).to_i32
    values[17] = (((bytes[8] >> 16) & 65535_u32)).to_i32
    values[18] = (((bytes[9] >> 0) & 65535_u32)).to_i32
    values[19] = (((bytes[9] >> 16) & 65535_u32)).to_i32
    values[20] = (((bytes[10] >> 0) & 65535_u32)).to_i32
    values[21] = (((bytes[10] >> 16) & 65535_u32)).to_i32
    values[22] = (((bytes[11] >> 0) & 65535_u32)).to_i32
    values[23] = (((bytes[11] >> 16) & 65535_u32)).to_i32
    values[24] = (((bytes[12] >> 0) & 65535_u32)).to_i32
    values[25] = (((bytes[12] >> 16) & 65535_u32)).to_i32
    values[26] = (((bytes[13] >> 0) & 65535_u32)).to_i32
    values[27] = (((bytes[13] >> 16) & 65535_u32)).to_i32
    values[28] = (((bytes[14] >> 0) & 65535_u32)).to_i32
    values[29] = (((bytes[14] >> 16) & 65535_u32)).to_i32
    values[30] = (((bytes[15] >> 0) & 65535_u32)).to_i32
    values[31] = (((bytes[15] >> 16) & 65535_u32)).to_i32
    values
  end

  def self.pack17(values)
    bytes = Slice(UInt32).new(17, 0_u32)
    bytes[0] = (((values[0] & 131071_u32) << 0) |
      ((values[1] & 131071_u32) << 17)).to_u32
    bytes[1] = (((values[1] & 131071_u32) >> 15) |
      ((values[2] & 131071_u32) << 2) |
      ((values[3] & 131071_u32) << 19)).to_u32
    bytes[2] = (((values[3] & 131071_u32) >> 13) |
      ((values[4] & 131071_u32) << 4) |
      ((values[5] & 131071_u32) << 21)).to_u32
    bytes[3] = (((values[5] & 131071_u32) >> 11) |
      ((values[6] & 131071_u32) << 6) |
      ((values[7] & 131071_u32) << 23)).to_u32
    bytes[4] = (((values[7] & 131071_u32) >> 9) |
      ((values[8] & 131071_u32) << 8) |
      ((values[9] & 131071_u32) << 25)).to_u32
    bytes[5] = (((values[9] & 131071_u32) >> 7) |
      ((values[10] & 131071_u32) << 10) |
      ((values[11] & 131071_u32) << 27)).to_u32
    bytes[6] = (((values[11] & 131071_u32) >> 5) |
      ((values[12] & 131071_u32) << 12) |
      ((values[13] & 131071_u32) << 29)).to_u32
    bytes[7] = (((values[13] & 131071_u32) >> 3) |
      ((values[14] & 131071_u32) << 14) |
      ((values[15] & 131071_u32) << 31)).to_u32
    bytes[8] = (((values[15] & 131071_u32) >> 1) |
      ((values[16] & 131071_u32) << 16)).to_u32
    bytes[9] = (((values[16] & 131071_u32) >> 16) |
      ((values[17] & 131071_u32) << 1) |
      ((values[18] & 131071_u32) << 18)).to_u32
    bytes[10] = (((values[18] & 131071_u32) >> 14) |
      ((values[19] & 131071_u32) << 3) |
      ((values[20] & 131071_u32) << 20)).to_u32
    bytes[11] = (((values[20] & 131071_u32) >> 12) |
      ((values[21] & 131071_u32) << 5) |
      ((values[22] & 131071_u32) << 22)).to_u32
    bytes[12] = (((values[22] & 131071_u32) >> 10) |
      ((values[23] & 131071_u32) << 7) |
      ((values[24] & 131071_u32) << 24)).to_u32
    bytes[13] = (((values[24] & 131071_u32) >> 8) |
      ((values[25] & 131071_u32) << 9) |
      ((values[26] & 131071_u32) << 26)).to_u32
    bytes[14] = (((values[26] & 131071_u32) >> 6) |
      ((values[27] & 131071_u32) << 11) |
      ((values[28] & 131071_u32) << 28)).to_u32
    bytes[15] = (((values[28] & 131071_u32) >> 4) |
      ((values[29] & 131071_u32) << 13) |
      ((values[30] & 131071_u32) << 30)).to_u32
    bytes[16] = (((values[30] & 131071_u32) >> 2) |
      ((values[31] & 131071_u32) << 15)).to_u32
    bytes
  end

  def self.unpack17(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 131071_u32)).to_i32
    values[1] = (((bytes[0] >> 17) & 131071_u32) | ((bytes[1] & 3_u32) << 15)).to_i32
    values[2] = (((bytes[1] >> 2) & 131071_u32)).to_i32
    values[3] = (((bytes[1] >> 19) & 131071_u32) | ((bytes[2] & 15_u32) << 13)).to_i32
    values[4] = (((bytes[2] >> 4) & 131071_u32)).to_i32
    values[5] = (((bytes[2] >> 21) & 131071_u32) | ((bytes[3] & 63_u32) << 11)).to_i32
    values[6] = (((bytes[3] >> 6) & 131071_u32)).to_i32
    values[7] = (((bytes[3] >> 23) & 131071_u32) | ((bytes[4] & 255_u32) << 9)).to_i32
    values[8] = (((bytes[4] >> 8) & 131071_u32)).to_i32
    values[9] = (((bytes[4] >> 25) & 131071_u32) | ((bytes[5] & 1023_u32) << 7)).to_i32
    values[10] = (((bytes[5] >> 10) & 131071_u32)).to_i32
    values[11] = (((bytes[5] >> 27) & 131071_u32) | ((bytes[6] & 4095_u32) << 5)).to_i32
    values[12] = (((bytes[6] >> 12) & 131071_u32)).to_i32
    values[13] = (((bytes[6] >> 29) & 131071_u32) | ((bytes[7] & 16383_u32) << 3)).to_i32
    values[14] = (((bytes[7] >> 14) & 131071_u32)).to_i32
    values[15] = (((bytes[7] >> 31) & 131071_u32) | ((bytes[8] & 65535_u32) << 1)).to_i32
    values[16] = (((bytes[8] >> 16) & 131071_u32) | ((bytes[9] & 1_u32) << 16)).to_i32
    values[17] = (((bytes[9] >> 1) & 131071_u32)).to_i32
    values[18] = (((bytes[9] >> 18) & 131071_u32) | ((bytes[10] & 7_u32) << 14)).to_i32
    values[19] = (((bytes[10] >> 3) & 131071_u32)).to_i32
    values[20] = (((bytes[10] >> 20) & 131071_u32) | ((bytes[11] & 31_u32) << 12)).to_i32
    values[21] = (((bytes[11] >> 5) & 131071_u32)).to_i32
    values[22] = (((bytes[11] >> 22) & 131071_u32) | ((bytes[12] & 127_u32) << 10)).to_i32
    values[23] = (((bytes[12] >> 7) & 131071_u32)).to_i32
    values[24] = (((bytes[12] >> 24) & 131071_u32) | ((bytes[13] & 511_u32) << 8)).to_i32
    values[25] = (((bytes[13] >> 9) & 131071_u32)).to_i32
    values[26] = (((bytes[13] >> 26) & 131071_u32) | ((bytes[14] & 2047_u32) << 6)).to_i32
    values[27] = (((bytes[14] >> 11) & 131071_u32)).to_i32
    values[28] = (((bytes[14] >> 28) & 131071_u32) | ((bytes[15] & 8191_u32) << 4)).to_i32
    values[29] = (((bytes[15] >> 13) & 131071_u32)).to_i32
    values[30] = (((bytes[15] >> 30) & 131071_u32) | ((bytes[16] & 32767_u32) << 2)).to_i32
    values[31] = (((bytes[16] >> 15) & 131071_u32)).to_i32
    values
  end

  def self.pack18(values)
    bytes = Slice(UInt32).new(18, 0_u32)
    bytes[0] = (((values[0] & 262143_u32) << 0) |
      ((values[1] & 262143_u32) << 18)).to_u32
    bytes[1] = (((values[1] & 262143_u32) >> 14) |
      ((values[2] & 262143_u32) << 4) |
      ((values[3] & 262143_u32) << 22)).to_u32
    bytes[2] = (((values[3] & 262143_u32) >> 10) |
      ((values[4] & 262143_u32) << 8) |
      ((values[5] & 262143_u32) << 26)).to_u32
    bytes[3] = (((values[5] & 262143_u32) >> 6) |
      ((values[6] & 262143_u32) << 12) |
      ((values[7] & 262143_u32) << 30)).to_u32
    bytes[4] = (((values[7] & 262143_u32) >> 2) |
      ((values[8] & 262143_u32) << 16)).to_u32
    bytes[5] = (((values[8] & 262143_u32) >> 16) |
      ((values[9] & 262143_u32) << 2) |
      ((values[10] & 262143_u32) << 20)).to_u32
    bytes[6] = (((values[10] & 262143_u32) >> 12) |
      ((values[11] & 262143_u32) << 6) |
      ((values[12] & 262143_u32) << 24)).to_u32
    bytes[7] = (((values[12] & 262143_u32) >> 8) |
      ((values[13] & 262143_u32) << 10) |
      ((values[14] & 262143_u32) << 28)).to_u32
    bytes[8] = (((values[14] & 262143_u32) >> 4) |
      ((values[15] & 262143_u32) << 14)).to_u32
    bytes[9] = (((values[16] & 262143_u32) << 0) |
      ((values[17] & 262143_u32) << 18)).to_u32
    bytes[10] = (((values[17] & 262143_u32) >> 14) |
      ((values[18] & 262143_u32) << 4) |
      ((values[19] & 262143_u32) << 22)).to_u32
    bytes[11] = (((values[19] & 262143_u32) >> 10) |
      ((values[20] & 262143_u32) << 8) |
      ((values[21] & 262143_u32) << 26)).to_u32
    bytes[12] = (((values[21] & 262143_u32) >> 6) |
      ((values[22] & 262143_u32) << 12) |
      ((values[23] & 262143_u32) << 30)).to_u32
    bytes[13] = (((values[23] & 262143_u32) >> 2) |
      ((values[24] & 262143_u32) << 16)).to_u32
    bytes[14] = (((values[24] & 262143_u32) >> 16) |
      ((values[25] & 262143_u32) << 2) |
      ((values[26] & 262143_u32) << 20)).to_u32
    bytes[15] = (((values[26] & 262143_u32) >> 12) |
      ((values[27] & 262143_u32) << 6) |
      ((values[28] & 262143_u32) << 24)).to_u32
    bytes[16] = (((values[28] & 262143_u32) >> 8) |
      ((values[29] & 262143_u32) << 10) |
      ((values[30] & 262143_u32) << 28)).to_u32
    bytes[17] = (((values[30] & 262143_u32) >> 4) |
      ((values[31] & 262143_u32) << 14)).to_u32
    bytes
  end

  def self.unpack18(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 262143_u32)).to_i32
    values[1] = (((bytes[0] >> 18) & 262143_u32) | ((bytes[1] & 15_u32) << 14)).to_i32
    values[2] = (((bytes[1] >> 4) & 262143_u32)).to_i32
    values[3] = (((bytes[1] >> 22) & 262143_u32) | ((bytes[2] & 255_u32) << 10)).to_i32
    values[4] = (((bytes[2] >> 8) & 262143_u32)).to_i32
    values[5] = (((bytes[2] >> 26) & 262143_u32) | ((bytes[3] & 4095_u32) << 6)).to_i32
    values[6] = (((bytes[3] >> 12) & 262143_u32)).to_i32
    values[7] = (((bytes[3] >> 30) & 262143_u32) | ((bytes[4] & 65535_u32) << 2)).to_i32
    values[8] = (((bytes[4] >> 16) & 262143_u32) | ((bytes[5] & 3_u32) << 16)).to_i32
    values[9] = (((bytes[5] >> 2) & 262143_u32)).to_i32
    values[10] = (((bytes[5] >> 20) & 262143_u32) | ((bytes[6] & 63_u32) << 12)).to_i32
    values[11] = (((bytes[6] >> 6) & 262143_u32)).to_i32
    values[12] = (((bytes[6] >> 24) & 262143_u32) | ((bytes[7] & 1023_u32) << 8)).to_i32
    values[13] = (((bytes[7] >> 10) & 262143_u32)).to_i32
    values[14] = (((bytes[7] >> 28) & 262143_u32) | ((bytes[8] & 16383_u32) << 4)).to_i32
    values[15] = (((bytes[8] >> 14) & 262143_u32)).to_i32
    values[16] = (((bytes[9] >> 0) & 262143_u32)).to_i32
    values[17] = (((bytes[9] >> 18) & 262143_u32) | ((bytes[10] & 15_u32) << 14)).to_i32
    values[18] = (((bytes[10] >> 4) & 262143_u32)).to_i32
    values[19] = (((bytes[10] >> 22) & 262143_u32) | ((bytes[11] & 255_u32) << 10)).to_i32
    values[20] = (((bytes[11] >> 8) & 262143_u32)).to_i32
    values[21] = (((bytes[11] >> 26) & 262143_u32) | ((bytes[12] & 4095_u32) << 6)).to_i32
    values[22] = (((bytes[12] >> 12) & 262143_u32)).to_i32
    values[23] = (((bytes[12] >> 30) & 262143_u32) | ((bytes[13] & 65535_u32) << 2)).to_i32
    values[24] = (((bytes[13] >> 16) & 262143_u32) | ((bytes[14] & 3_u32) << 16)).to_i32
    values[25] = (((bytes[14] >> 2) & 262143_u32)).to_i32
    values[26] = (((bytes[14] >> 20) & 262143_u32) | ((bytes[15] & 63_u32) << 12)).to_i32
    values[27] = (((bytes[15] >> 6) & 262143_u32)).to_i32
    values[28] = (((bytes[15] >> 24) & 262143_u32) | ((bytes[16] & 1023_u32) << 8)).to_i32
    values[29] = (((bytes[16] >> 10) & 262143_u32)).to_i32
    values[30] = (((bytes[16] >> 28) & 262143_u32) | ((bytes[17] & 16383_u32) << 4)).to_i32
    values[31] = (((bytes[17] >> 14) & 262143_u32)).to_i32
    values
  end

  def self.pack19(values)
    bytes = Slice(UInt32).new(19, 0_u32)
    bytes[0] = (((values[0] & 524287_u32) << 0) |
      ((values[1] & 524287_u32) << 19)).to_u32
    bytes[1] = (((values[1] & 524287_u32) >> 13) |
      ((values[2] & 524287_u32) << 6) |
      ((values[3] & 524287_u32) << 25)).to_u32
    bytes[2] = (((values[3] & 524287_u32) >> 7) |
      ((values[4] & 524287_u32) << 12) |
      ((values[5] & 524287_u32) << 31)).to_u32
    bytes[3] = (((values[5] & 524287_u32) >> 1) |
      ((values[6] & 524287_u32) << 18)).to_u32
    bytes[4] = (((values[6] & 524287_u32) >> 14) |
      ((values[7] & 524287_u32) << 5) |
      ((values[8] & 524287_u32) << 24)).to_u32
    bytes[5] = (((values[8] & 524287_u32) >> 8) |
      ((values[9] & 524287_u32) << 11) |
      ((values[10] & 524287_u32) << 30)).to_u32
    bytes[6] = (((values[10] & 524287_u32) >> 2) |
      ((values[11] & 524287_u32) << 17)).to_u32
    bytes[7] = (((values[11] & 524287_u32) >> 15) |
      ((values[12] & 524287_u32) << 4) |
      ((values[13] & 524287_u32) << 23)).to_u32
    bytes[8] = (((values[13] & 524287_u32) >> 9) |
      ((values[14] & 524287_u32) << 10) |
      ((values[15] & 524287_u32) << 29)).to_u32
    bytes[9] = (((values[15] & 524287_u32) >> 3) |
      ((values[16] & 524287_u32) << 16)).to_u32
    bytes[10] = (((values[16] & 524287_u32) >> 16) |
      ((values[17] & 524287_u32) << 3) |
      ((values[18] & 524287_u32) << 22)).to_u32
    bytes[11] = (((values[18] & 524287_u32) >> 10) |
      ((values[19] & 524287_u32) << 9) |
      ((values[20] & 524287_u32) << 28)).to_u32
    bytes[12] = (((values[20] & 524287_u32) >> 4) |
      ((values[21] & 524287_u32) << 15)).to_u32
    bytes[13] = (((values[21] & 524287_u32) >> 17) |
      ((values[22] & 524287_u32) << 2) |
      ((values[23] & 524287_u32) << 21)).to_u32
    bytes[14] = (((values[23] & 524287_u32) >> 11) |
      ((values[24] & 524287_u32) << 8) |
      ((values[25] & 524287_u32) << 27)).to_u32
    bytes[15] = (((values[25] & 524287_u32) >> 5) |
      ((values[26] & 524287_u32) << 14)).to_u32
    bytes[16] = (((values[26] & 524287_u32) >> 18) |
      ((values[27] & 524287_u32) << 1) |
      ((values[28] & 524287_u32) << 20)).to_u32
    bytes[17] = (((values[28] & 524287_u32) >> 12) |
      ((values[29] & 524287_u32) << 7) |
      ((values[30] & 524287_u32) << 26)).to_u32
    bytes[18] = (((values[30] & 524287_u32) >> 6) |
      ((values[31] & 524287_u32) << 13)).to_u32
    bytes
  end

  def self.unpack19(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 524287_u32)).to_i32
    values[1] = (((bytes[0] >> 19) & 524287_u32) | ((bytes[1] & 63_u32) << 13)).to_i32
    values[2] = (((bytes[1] >> 6) & 524287_u32)).to_i32
    values[3] = (((bytes[1] >> 25) & 524287_u32) | ((bytes[2] & 4095_u32) << 7)).to_i32
    values[4] = (((bytes[2] >> 12) & 524287_u32)).to_i32
    values[5] = (((bytes[2] >> 31) & 524287_u32) | ((bytes[3] & 262143_u32) << 1)).to_i32
    values[6] = (((bytes[3] >> 18) & 524287_u32) | ((bytes[4] & 31_u32) << 14)).to_i32
    values[7] = (((bytes[4] >> 5) & 524287_u32)).to_i32
    values[8] = (((bytes[4] >> 24) & 524287_u32) | ((bytes[5] & 2047_u32) << 8)).to_i32
    values[9] = (((bytes[5] >> 11) & 524287_u32)).to_i32
    values[10] = (((bytes[5] >> 30) & 524287_u32) | ((bytes[6] & 131071_u32) << 2)).to_i32
    values[11] = (((bytes[6] >> 17) & 524287_u32) | ((bytes[7] & 15_u32) << 15)).to_i32
    values[12] = (((bytes[7] >> 4) & 524287_u32)).to_i32
    values[13] = (((bytes[7] >> 23) & 524287_u32) | ((bytes[8] & 1023_u32) << 9)).to_i32
    values[14] = (((bytes[8] >> 10) & 524287_u32)).to_i32
    values[15] = (((bytes[8] >> 29) & 524287_u32) | ((bytes[9] & 65535_u32) << 3)).to_i32
    values[16] = (((bytes[9] >> 16) & 524287_u32) | ((bytes[10] & 7_u32) << 16)).to_i32
    values[17] = (((bytes[10] >> 3) & 524287_u32)).to_i32
    values[18] = (((bytes[10] >> 22) & 524287_u32) | ((bytes[11] & 511_u32) << 10)).to_i32
    values[19] = (((bytes[11] >> 9) & 524287_u32)).to_i32
    values[20] = (((bytes[11] >> 28) & 524287_u32) | ((bytes[12] & 32767_u32) << 4)).to_i32
    values[21] = (((bytes[12] >> 15) & 524287_u32) | ((bytes[13] & 3_u32) << 17)).to_i32
    values[22] = (((bytes[13] >> 2) & 524287_u32)).to_i32
    values[23] = (((bytes[13] >> 21) & 524287_u32) | ((bytes[14] & 255_u32) << 11)).to_i32
    values[24] = (((bytes[14] >> 8) & 524287_u32)).to_i32
    values[25] = (((bytes[14] >> 27) & 524287_u32) | ((bytes[15] & 16383_u32) << 5)).to_i32
    values[26] = (((bytes[15] >> 14) & 524287_u32) | ((bytes[16] & 1_u32) << 18)).to_i32
    values[27] = (((bytes[16] >> 1) & 524287_u32)).to_i32
    values[28] = (((bytes[16] >> 20) & 524287_u32) | ((bytes[17] & 127_u32) << 12)).to_i32
    values[29] = (((bytes[17] >> 7) & 524287_u32)).to_i32
    values[30] = (((bytes[17] >> 26) & 524287_u32) | ((bytes[18] & 8191_u32) << 6)).to_i32
    values[31] = (((bytes[18] >> 13) & 524287_u32)).to_i32
    values
  end

  def self.pack20(values)
    bytes = Slice(UInt32).new(20, 0_u32)
    bytes[0] = (((values[0] & 1048575_u32) << 0) |
      ((values[1] & 1048575_u32) << 20)).to_u32
    bytes[1] = (((values[1] & 1048575_u32) >> 12) |
      ((values[2] & 1048575_u32) << 8) |
      ((values[3] & 1048575_u32) << 28)).to_u32
    bytes[2] = (((values[3] & 1048575_u32) >> 4) |
      ((values[4] & 1048575_u32) << 16)).to_u32
    bytes[3] = (((values[4] & 1048575_u32) >> 16) |
      ((values[5] & 1048575_u32) << 4) |
      ((values[6] & 1048575_u32) << 24)).to_u32
    bytes[4] = (((values[6] & 1048575_u32) >> 8) |
      ((values[7] & 1048575_u32) << 12)).to_u32
    bytes[5] = (((values[8] & 1048575_u32) << 0) |
      ((values[9] & 1048575_u32) << 20)).to_u32
    bytes[6] = (((values[9] & 1048575_u32) >> 12) |
      ((values[10] & 1048575_u32) << 8) |
      ((values[11] & 1048575_u32) << 28)).to_u32
    bytes[7] = (((values[11] & 1048575_u32) >> 4) |
      ((values[12] & 1048575_u32) << 16)).to_u32
    bytes[8] = (((values[12] & 1048575_u32) >> 16) |
      ((values[13] & 1048575_u32) << 4) |
      ((values[14] & 1048575_u32) << 24)).to_u32
    bytes[9] = (((values[14] & 1048575_u32) >> 8) |
      ((values[15] & 1048575_u32) << 12)).to_u32
    bytes[10] = (((values[16] & 1048575_u32) << 0) |
      ((values[17] & 1048575_u32) << 20)).to_u32
    bytes[11] = (((values[17] & 1048575_u32) >> 12) |
      ((values[18] & 1048575_u32) << 8) |
      ((values[19] & 1048575_u32) << 28)).to_u32
    bytes[12] = (((values[19] & 1048575_u32) >> 4) |
      ((values[20] & 1048575_u32) << 16)).to_u32
    bytes[13] = (((values[20] & 1048575_u32) >> 16) |
      ((values[21] & 1048575_u32) << 4) |
      ((values[22] & 1048575_u32) << 24)).to_u32
    bytes[14] = (((values[22] & 1048575_u32) >> 8) |
      ((values[23] & 1048575_u32) << 12)).to_u32
    bytes[15] = (((values[24] & 1048575_u32) << 0) |
      ((values[25] & 1048575_u32) << 20)).to_u32
    bytes[16] = (((values[25] & 1048575_u32) >> 12) |
      ((values[26] & 1048575_u32) << 8) |
      ((values[27] & 1048575_u32) << 28)).to_u32
    bytes[17] = (((values[27] & 1048575_u32) >> 4) |
      ((values[28] & 1048575_u32) << 16)).to_u32
    bytes[18] = (((values[28] & 1048575_u32) >> 16) |
      ((values[29] & 1048575_u32) << 4) |
      ((values[30] & 1048575_u32) << 24)).to_u32
    bytes[19] = (((values[30] & 1048575_u32) >> 8) |
      ((values[31] & 1048575_u32) << 12)).to_u32
    bytes
  end

  def self.unpack20(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 1048575_u32)).to_i32
    values[1] = (((bytes[0] >> 20) & 1048575_u32) | ((bytes[1] & 255_u32) << 12)).to_i32
    values[2] = (((bytes[1] >> 8) & 1048575_u32)).to_i32
    values[3] = (((bytes[1] >> 28) & 1048575_u32) | ((bytes[2] & 65535_u32) << 4)).to_i32
    values[4] = (((bytes[2] >> 16) & 1048575_u32) | ((bytes[3] & 15_u32) << 16)).to_i32
    values[5] = (((bytes[3] >> 4) & 1048575_u32)).to_i32
    values[6] = (((bytes[3] >> 24) & 1048575_u32) | ((bytes[4] & 4095_u32) << 8)).to_i32
    values[7] = (((bytes[4] >> 12) & 1048575_u32)).to_i32
    values[8] = (((bytes[5] >> 0) & 1048575_u32)).to_i32
    values[9] = (((bytes[5] >> 20) & 1048575_u32) | ((bytes[6] & 255_u32) << 12)).to_i32
    values[10] = (((bytes[6] >> 8) & 1048575_u32)).to_i32
    values[11] = (((bytes[6] >> 28) & 1048575_u32) | ((bytes[7] & 65535_u32) << 4)).to_i32
    values[12] = (((bytes[7] >> 16) & 1048575_u32) | ((bytes[8] & 15_u32) << 16)).to_i32
    values[13] = (((bytes[8] >> 4) & 1048575_u32)).to_i32
    values[14] = (((bytes[8] >> 24) & 1048575_u32) | ((bytes[9] & 4095_u32) << 8)).to_i32
    values[15] = (((bytes[9] >> 12) & 1048575_u32)).to_i32
    values[16] = (((bytes[10] >> 0) & 1048575_u32)).to_i32
    values[17] = (((bytes[10] >> 20) & 1048575_u32) | ((bytes[11] & 255_u32) << 12)).to_i32
    values[18] = (((bytes[11] >> 8) & 1048575_u32)).to_i32
    values[19] = (((bytes[11] >> 28) & 1048575_u32) | ((bytes[12] & 65535_u32) << 4)).to_i32
    values[20] = (((bytes[12] >> 16) & 1048575_u32) | ((bytes[13] & 15_u32) << 16)).to_i32
    values[21] = (((bytes[13] >> 4) & 1048575_u32)).to_i32
    values[22] = (((bytes[13] >> 24) & 1048575_u32) | ((bytes[14] & 4095_u32) << 8)).to_i32
    values[23] = (((bytes[14] >> 12) & 1048575_u32)).to_i32
    values[24] = (((bytes[15] >> 0) & 1048575_u32)).to_i32
    values[25] = (((bytes[15] >> 20) & 1048575_u32) | ((bytes[16] & 255_u32) << 12)).to_i32
    values[26] = (((bytes[16] >> 8) & 1048575_u32)).to_i32
    values[27] = (((bytes[16] >> 28) & 1048575_u32) | ((bytes[17] & 65535_u32) << 4)).to_i32
    values[28] = (((bytes[17] >> 16) & 1048575_u32) | ((bytes[18] & 15_u32) << 16)).to_i32
    values[29] = (((bytes[18] >> 4) & 1048575_u32)).to_i32
    values[30] = (((bytes[18] >> 24) & 1048575_u32) | ((bytes[19] & 4095_u32) << 8)).to_i32
    values[31] = (((bytes[19] >> 12) & 1048575_u32)).to_i32
    values
  end

  def self.pack21(values)
    bytes = Slice(UInt32).new(21, 0_u32)
    bytes[0] = (((values[0] & 2097151_u32) << 0) |
      ((values[1] & 2097151_u32) << 21)).to_u32
    bytes[1] = (((values[1] & 2097151_u32) >> 11) |
      ((values[2] & 2097151_u32) << 10) |
      ((values[3] & 2097151_u32) << 31)).to_u32
    bytes[2] = (((values[3] & 2097151_u32) >> 1) |
      ((values[4] & 2097151_u32) << 20)).to_u32
    bytes[3] = (((values[4] & 2097151_u32) >> 12) |
      ((values[5] & 2097151_u32) << 9) |
      ((values[6] & 2097151_u32) << 30)).to_u32
    bytes[4] = (((values[6] & 2097151_u32) >> 2) |
      ((values[7] & 2097151_u32) << 19)).to_u32
    bytes[5] = (((values[7] & 2097151_u32) >> 13) |
      ((values[8] & 2097151_u32) << 8) |
      ((values[9] & 2097151_u32) << 29)).to_u32
    bytes[6] = (((values[9] & 2097151_u32) >> 3) |
      ((values[10] & 2097151_u32) << 18)).to_u32
    bytes[7] = (((values[10] & 2097151_u32) >> 14) |
      ((values[11] & 2097151_u32) << 7) |
      ((values[12] & 2097151_u32) << 28)).to_u32
    bytes[8] = (((values[12] & 2097151_u32) >> 4) |
      ((values[13] & 2097151_u32) << 17)).to_u32
    bytes[9] = (((values[13] & 2097151_u32) >> 15) |
      ((values[14] & 2097151_u32) << 6) |
      ((values[15] & 2097151_u32) << 27)).to_u32
    bytes[10] = (((values[15] & 2097151_u32) >> 5) |
      ((values[16] & 2097151_u32) << 16)).to_u32
    bytes[11] = (((values[16] & 2097151_u32) >> 16) |
      ((values[17] & 2097151_u32) << 5) |
      ((values[18] & 2097151_u32) << 26)).to_u32
    bytes[12] = (((values[18] & 2097151_u32) >> 6) |
      ((values[19] & 2097151_u32) << 15)).to_u32
    bytes[13] = (((values[19] & 2097151_u32) >> 17) |
      ((values[20] & 2097151_u32) << 4) |
      ((values[21] & 2097151_u32) << 25)).to_u32
    bytes[14] = (((values[21] & 2097151_u32) >> 7) |
      ((values[22] & 2097151_u32) << 14)).to_u32
    bytes[15] = (((values[22] & 2097151_u32) >> 18) |
      ((values[23] & 2097151_u32) << 3) |
      ((values[24] & 2097151_u32) << 24)).to_u32
    bytes[16] = (((values[24] & 2097151_u32) >> 8) |
      ((values[25] & 2097151_u32) << 13)).to_u32
    bytes[17] = (((values[25] & 2097151_u32) >> 19) |
      ((values[26] & 2097151_u32) << 2) |
      ((values[27] & 2097151_u32) << 23)).to_u32
    bytes[18] = (((values[27] & 2097151_u32) >> 9) |
      ((values[28] & 2097151_u32) << 12)).to_u32
    bytes[19] = (((values[28] & 2097151_u32) >> 20) |
      ((values[29] & 2097151_u32) << 1) |
      ((values[30] & 2097151_u32) << 22)).to_u32
    bytes[20] = (((values[30] & 2097151_u32) >> 10) |
      ((values[31] & 2097151_u32) << 11)).to_u32
    bytes
  end

  def self.unpack21(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 2097151_u32)).to_i32
    values[1] = (((bytes[0] >> 21) & 2097151_u32) | ((bytes[1] & 1023_u32) << 11)).to_i32
    values[2] = (((bytes[1] >> 10) & 2097151_u32)).to_i32
    values[3] = (((bytes[1] >> 31) & 2097151_u32) | ((bytes[2] & 1048575_u32) << 1)).to_i32
    values[4] = (((bytes[2] >> 20) & 2097151_u32) | ((bytes[3] & 511_u32) << 12)).to_i32
    values[5] = (((bytes[3] >> 9) & 2097151_u32)).to_i32
    values[6] = (((bytes[3] >> 30) & 2097151_u32) | ((bytes[4] & 524287_u32) << 2)).to_i32
    values[7] = (((bytes[4] >> 19) & 2097151_u32) | ((bytes[5] & 255_u32) << 13)).to_i32
    values[8] = (((bytes[5] >> 8) & 2097151_u32)).to_i32
    values[9] = (((bytes[5] >> 29) & 2097151_u32) | ((bytes[6] & 262143_u32) << 3)).to_i32
    values[10] = (((bytes[6] >> 18) & 2097151_u32) | ((bytes[7] & 127_u32) << 14)).to_i32
    values[11] = (((bytes[7] >> 7) & 2097151_u32)).to_i32
    values[12] = (((bytes[7] >> 28) & 2097151_u32) | ((bytes[8] & 131071_u32) << 4)).to_i32
    values[13] = (((bytes[8] >> 17) & 2097151_u32) | ((bytes[9] & 63_u32) << 15)).to_i32
    values[14] = (((bytes[9] >> 6) & 2097151_u32)).to_i32
    values[15] = (((bytes[9] >> 27) & 2097151_u32) | ((bytes[10] & 65535_u32) << 5)).to_i32
    values[16] = (((bytes[10] >> 16) & 2097151_u32) | ((bytes[11] & 31_u32) << 16)).to_i32
    values[17] = (((bytes[11] >> 5) & 2097151_u32)).to_i32
    values[18] = (((bytes[11] >> 26) & 2097151_u32) | ((bytes[12] & 32767_u32) << 6)).to_i32
    values[19] = (((bytes[12] >> 15) & 2097151_u32) | ((bytes[13] & 15_u32) << 17)).to_i32
    values[20] = (((bytes[13] >> 4) & 2097151_u32)).to_i32
    values[21] = (((bytes[13] >> 25) & 2097151_u32) | ((bytes[14] & 16383_u32) << 7)).to_i32
    values[22] = (((bytes[14] >> 14) & 2097151_u32) | ((bytes[15] & 7_u32) << 18)).to_i32
    values[23] = (((bytes[15] >> 3) & 2097151_u32)).to_i32
    values[24] = (((bytes[15] >> 24) & 2097151_u32) | ((bytes[16] & 8191_u32) << 8)).to_i32
    values[25] = (((bytes[16] >> 13) & 2097151_u32) | ((bytes[17] & 3_u32) << 19)).to_i32
    values[26] = (((bytes[17] >> 2) & 2097151_u32)).to_i32
    values[27] = (((bytes[17] >> 23) & 2097151_u32) | ((bytes[18] & 4095_u32) << 9)).to_i32
    values[28] = (((bytes[18] >> 12) & 2097151_u32) | ((bytes[19] & 1_u32) << 20)).to_i32
    values[29] = (((bytes[19] >> 1) & 2097151_u32)).to_i32
    values[30] = (((bytes[19] >> 22) & 2097151_u32) | ((bytes[20] & 2047_u32) << 10)).to_i32
    values[31] = (((bytes[20] >> 11) & 2097151_u32)).to_i32
    values
  end

  def self.pack22(values)
    bytes = Slice(UInt32).new(22, 0_u32)
    bytes[0] = (((values[0] & 4194303_u32) << 0) |
      ((values[1] & 4194303_u32) << 22)).to_u32
    bytes[1] = (((values[1] & 4194303_u32) >> 10) |
      ((values[2] & 4194303_u32) << 12)).to_u32
    bytes[2] = (((values[2] & 4194303_u32) >> 20) |
      ((values[3] & 4194303_u32) << 2) |
      ((values[4] & 4194303_u32) << 24)).to_u32
    bytes[3] = (((values[4] & 4194303_u32) >> 8) |
      ((values[5] & 4194303_u32) << 14)).to_u32
    bytes[4] = (((values[5] & 4194303_u32) >> 18) |
      ((values[6] & 4194303_u32) << 4) |
      ((values[7] & 4194303_u32) << 26)).to_u32
    bytes[5] = (((values[7] & 4194303_u32) >> 6) |
      ((values[8] & 4194303_u32) << 16)).to_u32
    bytes[6] = (((values[8] & 4194303_u32) >> 16) |
      ((values[9] & 4194303_u32) << 6) |
      ((values[10] & 4194303_u32) << 28)).to_u32
    bytes[7] = (((values[10] & 4194303_u32) >> 4) |
      ((values[11] & 4194303_u32) << 18)).to_u32
    bytes[8] = (((values[11] & 4194303_u32) >> 14) |
      ((values[12] & 4194303_u32) << 8) |
      ((values[13] & 4194303_u32) << 30)).to_u32
    bytes[9] = (((values[13] & 4194303_u32) >> 2) |
      ((values[14] & 4194303_u32) << 20)).to_u32
    bytes[10] = (((values[14] & 4194303_u32) >> 12) |
      ((values[15] & 4194303_u32) << 10)).to_u32
    bytes[11] = (((values[16] & 4194303_u32) << 0) |
      ((values[17] & 4194303_u32) << 22)).to_u32
    bytes[12] = (((values[17] & 4194303_u32) >> 10) |
      ((values[18] & 4194303_u32) << 12)).to_u32
    bytes[13] = (((values[18] & 4194303_u32) >> 20) |
      ((values[19] & 4194303_u32) << 2) |
      ((values[20] & 4194303_u32) << 24)).to_u32
    bytes[14] = (((values[20] & 4194303_u32) >> 8) |
      ((values[21] & 4194303_u32) << 14)).to_u32
    bytes[15] = (((values[21] & 4194303_u32) >> 18) |
      ((values[22] & 4194303_u32) << 4) |
      ((values[23] & 4194303_u32) << 26)).to_u32
    bytes[16] = (((values[23] & 4194303_u32) >> 6) |
      ((values[24] & 4194303_u32) << 16)).to_u32
    bytes[17] = (((values[24] & 4194303_u32) >> 16) |
      ((values[25] & 4194303_u32) << 6) |
      ((values[26] & 4194303_u32) << 28)).to_u32
    bytes[18] = (((values[26] & 4194303_u32) >> 4) |
      ((values[27] & 4194303_u32) << 18)).to_u32
    bytes[19] = (((values[27] & 4194303_u32) >> 14) |
      ((values[28] & 4194303_u32) << 8) |
      ((values[29] & 4194303_u32) << 30)).to_u32
    bytes[20] = (((values[29] & 4194303_u32) >> 2) |
      ((values[30] & 4194303_u32) << 20)).to_u32
    bytes[21] = (((values[30] & 4194303_u32) >> 12) |
      ((values[31] & 4194303_u32) << 10)).to_u32
    bytes
  end

  def self.unpack22(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 4194303_u32)).to_i32
    values[1] = (((bytes[0] >> 22) & 4194303_u32) | ((bytes[1] & 4095_u32) << 10)).to_i32
    values[2] = (((bytes[1] >> 12) & 4194303_u32) | ((bytes[2] & 3_u32) << 20)).to_i32
    values[3] = (((bytes[2] >> 2) & 4194303_u32)).to_i32
    values[4] = (((bytes[2] >> 24) & 4194303_u32) | ((bytes[3] & 16383_u32) << 8)).to_i32
    values[5] = (((bytes[3] >> 14) & 4194303_u32) | ((bytes[4] & 15_u32) << 18)).to_i32
    values[6] = (((bytes[4] >> 4) & 4194303_u32)).to_i32
    values[7] = (((bytes[4] >> 26) & 4194303_u32) | ((bytes[5] & 65535_u32) << 6)).to_i32
    values[8] = (((bytes[5] >> 16) & 4194303_u32) | ((bytes[6] & 63_u32) << 16)).to_i32
    values[9] = (((bytes[6] >> 6) & 4194303_u32)).to_i32
    values[10] = (((bytes[6] >> 28) & 4194303_u32) | ((bytes[7] & 262143_u32) << 4)).to_i32
    values[11] = (((bytes[7] >> 18) & 4194303_u32) | ((bytes[8] & 255_u32) << 14)).to_i32
    values[12] = (((bytes[8] >> 8) & 4194303_u32)).to_i32
    values[13] = (((bytes[8] >> 30) & 4194303_u32) | ((bytes[9] & 1048575_u32) << 2)).to_i32
    values[14] = (((bytes[9] >> 20) & 4194303_u32) | ((bytes[10] & 1023_u32) << 12)).to_i32
    values[15] = (((bytes[10] >> 10) & 4194303_u32)).to_i32
    values[16] = (((bytes[11] >> 0) & 4194303_u32)).to_i32
    values[17] = (((bytes[11] >> 22) & 4194303_u32) | ((bytes[12] & 4095_u32) << 10)).to_i32
    values[18] = (((bytes[12] >> 12) & 4194303_u32) | ((bytes[13] & 3_u32) << 20)).to_i32
    values[19] = (((bytes[13] >> 2) & 4194303_u32)).to_i32
    values[20] = (((bytes[13] >> 24) & 4194303_u32) | ((bytes[14] & 16383_u32) << 8)).to_i32
    values[21] = (((bytes[14] >> 14) & 4194303_u32) | ((bytes[15] & 15_u32) << 18)).to_i32
    values[22] = (((bytes[15] >> 4) & 4194303_u32)).to_i32
    values[23] = (((bytes[15] >> 26) & 4194303_u32) | ((bytes[16] & 65535_u32) << 6)).to_i32
    values[24] = (((bytes[16] >> 16) & 4194303_u32) | ((bytes[17] & 63_u32) << 16)).to_i32
    values[25] = (((bytes[17] >> 6) & 4194303_u32)).to_i32
    values[26] = (((bytes[17] >> 28) & 4194303_u32) | ((bytes[18] & 262143_u32) << 4)).to_i32
    values[27] = (((bytes[18] >> 18) & 4194303_u32) | ((bytes[19] & 255_u32) << 14)).to_i32
    values[28] = (((bytes[19] >> 8) & 4194303_u32)).to_i32
    values[29] = (((bytes[19] >> 30) & 4194303_u32) | ((bytes[20] & 1048575_u32) << 2)).to_i32
    values[30] = (((bytes[20] >> 20) & 4194303_u32) | ((bytes[21] & 1023_u32) << 12)).to_i32
    values[31] = (((bytes[21] >> 10) & 4194303_u32)).to_i32
    values
  end

  def self.pack23(values)
    bytes = Slice(UInt32).new(23, 0_u32)
    bytes[0] = (((values[0] & 8388607_u32) << 0) |
      ((values[1] & 8388607_u32) << 23)).to_u32
    bytes[1] = (((values[1] & 8388607_u32) >> 9) |
      ((values[2] & 8388607_u32) << 14)).to_u32
    bytes[2] = (((values[2] & 8388607_u32) >> 18) |
      ((values[3] & 8388607_u32) << 5) |
      ((values[4] & 8388607_u32) << 28)).to_u32
    bytes[3] = (((values[4] & 8388607_u32) >> 4) |
      ((values[5] & 8388607_u32) << 19)).to_u32
    bytes[4] = (((values[5] & 8388607_u32) >> 13) |
      ((values[6] & 8388607_u32) << 10)).to_u32
    bytes[5] = (((values[6] & 8388607_u32) >> 22) |
      ((values[7] & 8388607_u32) << 1) |
      ((values[8] & 8388607_u32) << 24)).to_u32
    bytes[6] = (((values[8] & 8388607_u32) >> 8) |
      ((values[9] & 8388607_u32) << 15)).to_u32
    bytes[7] = (((values[9] & 8388607_u32) >> 17) |
      ((values[10] & 8388607_u32) << 6) |
      ((values[11] & 8388607_u32) << 29)).to_u32
    bytes[8] = (((values[11] & 8388607_u32) >> 3) |
      ((values[12] & 8388607_u32) << 20)).to_u32
    bytes[9] = (((values[12] & 8388607_u32) >> 12) |
      ((values[13] & 8388607_u32) << 11)).to_u32
    bytes[10] = (((values[13] & 8388607_u32) >> 21) |
      ((values[14] & 8388607_u32) << 2) |
      ((values[15] & 8388607_u32) << 25)).to_u32
    bytes[11] = (((values[15] & 8388607_u32) >> 7) |
      ((values[16] & 8388607_u32) << 16)).to_u32
    bytes[12] = (((values[16] & 8388607_u32) >> 16) |
      ((values[17] & 8388607_u32) << 7) |
      ((values[18] & 8388607_u32) << 30)).to_u32
    bytes[13] = (((values[18] & 8388607_u32) >> 2) |
      ((values[19] & 8388607_u32) << 21)).to_u32
    bytes[14] = (((values[19] & 8388607_u32) >> 11) |
      ((values[20] & 8388607_u32) << 12)).to_u32
    bytes[15] = (((values[20] & 8388607_u32) >> 20) |
      ((values[21] & 8388607_u32) << 3) |
      ((values[22] & 8388607_u32) << 26)).to_u32
    bytes[16] = (((values[22] & 8388607_u32) >> 6) |
      ((values[23] & 8388607_u32) << 17)).to_u32
    bytes[17] = (((values[23] & 8388607_u32) >> 15) |
      ((values[24] & 8388607_u32) << 8) |
      ((values[25] & 8388607_u32) << 31)).to_u32
    bytes[18] = (((values[25] & 8388607_u32) >> 1) |
      ((values[26] & 8388607_u32) << 22)).to_u32
    bytes[19] = (((values[26] & 8388607_u32) >> 10) |
      ((values[27] & 8388607_u32) << 13)).to_u32
    bytes[20] = (((values[27] & 8388607_u32) >> 19) |
      ((values[28] & 8388607_u32) << 4) |
      ((values[29] & 8388607_u32) << 27)).to_u32
    bytes[21] = (((values[29] & 8388607_u32) >> 5) |
      ((values[30] & 8388607_u32) << 18)).to_u32
    bytes[22] = (((values[30] & 8388607_u32) >> 14) |
      ((values[31] & 8388607_u32) << 9)).to_u32
    bytes
  end

  def self.unpack23(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 8388607_u32)).to_i32
    values[1] = (((bytes[0] >> 23) & 8388607_u32) | ((bytes[1] & 16383_u32) << 9)).to_i32
    values[2] = (((bytes[1] >> 14) & 8388607_u32) | ((bytes[2] & 31_u32) << 18)).to_i32
    values[3] = (((bytes[2] >> 5) & 8388607_u32)).to_i32
    values[4] = (((bytes[2] >> 28) & 8388607_u32) | ((bytes[3] & 524287_u32) << 4)).to_i32
    values[5] = (((bytes[3] >> 19) & 8388607_u32) | ((bytes[4] & 1023_u32) << 13)).to_i32
    values[6] = (((bytes[4] >> 10) & 8388607_u32) | ((bytes[5] & 1_u32) << 22)).to_i32
    values[7] = (((bytes[5] >> 1) & 8388607_u32)).to_i32
    values[8] = (((bytes[5] >> 24) & 8388607_u32) | ((bytes[6] & 32767_u32) << 8)).to_i32
    values[9] = (((bytes[6] >> 15) & 8388607_u32) | ((bytes[7] & 63_u32) << 17)).to_i32
    values[10] = (((bytes[7] >> 6) & 8388607_u32)).to_i32
    values[11] = (((bytes[7] >> 29) & 8388607_u32) | ((bytes[8] & 1048575_u32) << 3)).to_i32
    values[12] = (((bytes[8] >> 20) & 8388607_u32) | ((bytes[9] & 2047_u32) << 12)).to_i32
    values[13] = (((bytes[9] >> 11) & 8388607_u32) | ((bytes[10] & 3_u32) << 21)).to_i32
    values[14] = (((bytes[10] >> 2) & 8388607_u32)).to_i32
    values[15] = (((bytes[10] >> 25) & 8388607_u32) | ((bytes[11] & 65535_u32) << 7)).to_i32
    values[16] = (((bytes[11] >> 16) & 8388607_u32) | ((bytes[12] & 127_u32) << 16)).to_i32
    values[17] = (((bytes[12] >> 7) & 8388607_u32)).to_i32
    values[18] = (((bytes[12] >> 30) & 8388607_u32) | ((bytes[13] & 2097151_u32) << 2)).to_i32
    values[19] = (((bytes[13] >> 21) & 8388607_u32) | ((bytes[14] & 4095_u32) << 11)).to_i32
    values[20] = (((bytes[14] >> 12) & 8388607_u32) | ((bytes[15] & 7_u32) << 20)).to_i32
    values[21] = (((bytes[15] >> 3) & 8388607_u32)).to_i32
    values[22] = (((bytes[15] >> 26) & 8388607_u32) | ((bytes[16] & 131071_u32) << 6)).to_i32
    values[23] = (((bytes[16] >> 17) & 8388607_u32) | ((bytes[17] & 255_u32) << 15)).to_i32
    values[24] = (((bytes[17] >> 8) & 8388607_u32)).to_i32
    values[25] = (((bytes[17] >> 31) & 8388607_u32) | ((bytes[18] & 4194303_u32) << 1)).to_i32
    values[26] = (((bytes[18] >> 22) & 8388607_u32) | ((bytes[19] & 8191_u32) << 10)).to_i32
    values[27] = (((bytes[19] >> 13) & 8388607_u32) | ((bytes[20] & 15_u32) << 19)).to_i32
    values[28] = (((bytes[20] >> 4) & 8388607_u32)).to_i32
    values[29] = (((bytes[20] >> 27) & 8388607_u32) | ((bytes[21] & 262143_u32) << 5)).to_i32
    values[30] = (((bytes[21] >> 18) & 8388607_u32) | ((bytes[22] & 511_u32) << 14)).to_i32
    values[31] = (((bytes[22] >> 9) & 8388607_u32)).to_i32
    values
  end

  def self.pack24(values)
    bytes = Slice(UInt32).new(24, 0_u32)
    bytes[0] = (((values[0] & 16777215_u32) << 0) |
      ((values[1] & 16777215_u32) << 24)).to_u32
    bytes[1] = (((values[1] & 16777215_u32) >> 8) |
      ((values[2] & 16777215_u32) << 16)).to_u32
    bytes[2] = (((values[2] & 16777215_u32) >> 16) |
      ((values[3] & 16777215_u32) << 8)).to_u32
    bytes[3] = (((values[4] & 16777215_u32) << 0) |
      ((values[5] & 16777215_u32) << 24)).to_u32
    bytes[4] = (((values[5] & 16777215_u32) >> 8) |
      ((values[6] & 16777215_u32) << 16)).to_u32
    bytes[5] = (((values[6] & 16777215_u32) >> 16) |
      ((values[7] & 16777215_u32) << 8)).to_u32
    bytes[6] = (((values[8] & 16777215_u32) << 0) |
      ((values[9] & 16777215_u32) << 24)).to_u32
    bytes[7] = (((values[9] & 16777215_u32) >> 8) |
      ((values[10] & 16777215_u32) << 16)).to_u32
    bytes[8] = (((values[10] & 16777215_u32) >> 16) |
      ((values[11] & 16777215_u32) << 8)).to_u32
    bytes[9] = (((values[12] & 16777215_u32) << 0) |
      ((values[13] & 16777215_u32) << 24)).to_u32
    bytes[10] = (((values[13] & 16777215_u32) >> 8) |
      ((values[14] & 16777215_u32) << 16)).to_u32
    bytes[11] = (((values[14] & 16777215_u32) >> 16) |
      ((values[15] & 16777215_u32) << 8)).to_u32
    bytes[12] = (((values[16] & 16777215_u32) << 0) |
      ((values[17] & 16777215_u32) << 24)).to_u32
    bytes[13] = (((values[17] & 16777215_u32) >> 8) |
      ((values[18] & 16777215_u32) << 16)).to_u32
    bytes[14] = (((values[18] & 16777215_u32) >> 16) |
      ((values[19] & 16777215_u32) << 8)).to_u32
    bytes[15] = (((values[20] & 16777215_u32) << 0) |
      ((values[21] & 16777215_u32) << 24)).to_u32
    bytes[16] = (((values[21] & 16777215_u32) >> 8) |
      ((values[22] & 16777215_u32) << 16)).to_u32
    bytes[17] = (((values[22] & 16777215_u32) >> 16) |
      ((values[23] & 16777215_u32) << 8)).to_u32
    bytes[18] = (((values[24] & 16777215_u32) << 0) |
      ((values[25] & 16777215_u32) << 24)).to_u32
    bytes[19] = (((values[25] & 16777215_u32) >> 8) |
      ((values[26] & 16777215_u32) << 16)).to_u32
    bytes[20] = (((values[26] & 16777215_u32) >> 16) |
      ((values[27] & 16777215_u32) << 8)).to_u32
    bytes[21] = (((values[28] & 16777215_u32) << 0) |
      ((values[29] & 16777215_u32) << 24)).to_u32
    bytes[22] = (((values[29] & 16777215_u32) >> 8) |
      ((values[30] & 16777215_u32) << 16)).to_u32
    bytes[23] = (((values[30] & 16777215_u32) >> 16) |
      ((values[31] & 16777215_u32) << 8)).to_u32
    bytes
  end

  def self.unpack24(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 16777215_u32)).to_i32
    values[1] = (((bytes[0] >> 24) & 16777215_u32) | ((bytes[1] & 65535_u32) << 8)).to_i32
    values[2] = (((bytes[1] >> 16) & 16777215_u32) | ((bytes[2] & 255_u32) << 16)).to_i32
    values[3] = (((bytes[2] >> 8) & 16777215_u32)).to_i32
    values[4] = (((bytes[3] >> 0) & 16777215_u32)).to_i32
    values[5] = (((bytes[3] >> 24) & 16777215_u32) | ((bytes[4] & 65535_u32) << 8)).to_i32
    values[6] = (((bytes[4] >> 16) & 16777215_u32) | ((bytes[5] & 255_u32) << 16)).to_i32
    values[7] = (((bytes[5] >> 8) & 16777215_u32)).to_i32
    values[8] = (((bytes[6] >> 0) & 16777215_u32)).to_i32
    values[9] = (((bytes[6] >> 24) & 16777215_u32) | ((bytes[7] & 65535_u32) << 8)).to_i32
    values[10] = (((bytes[7] >> 16) & 16777215_u32) | ((bytes[8] & 255_u32) << 16)).to_i32
    values[11] = (((bytes[8] >> 8) & 16777215_u32)).to_i32
    values[12] = (((bytes[9] >> 0) & 16777215_u32)).to_i32
    values[13] = (((bytes[9] >> 24) & 16777215_u32) | ((bytes[10] & 65535_u32) << 8)).to_i32
    values[14] = (((bytes[10] >> 16) & 16777215_u32) | ((bytes[11] & 255_u32) << 16)).to_i32
    values[15] = (((bytes[11] >> 8) & 16777215_u32)).to_i32
    values[16] = (((bytes[12] >> 0) & 16777215_u32)).to_i32
    values[17] = (((bytes[12] >> 24) & 16777215_u32) | ((bytes[13] & 65535_u32) << 8)).to_i32
    values[18] = (((bytes[13] >> 16) & 16777215_u32) | ((bytes[14] & 255_u32) << 16)).to_i32
    values[19] = (((bytes[14] >> 8) & 16777215_u32)).to_i32
    values[20] = (((bytes[15] >> 0) & 16777215_u32)).to_i32
    values[21] = (((bytes[15] >> 24) & 16777215_u32) | ((bytes[16] & 65535_u32) << 8)).to_i32
    values[22] = (((bytes[16] >> 16) & 16777215_u32) | ((bytes[17] & 255_u32) << 16)).to_i32
    values[23] = (((bytes[17] >> 8) & 16777215_u32)).to_i32
    values[24] = (((bytes[18] >> 0) & 16777215_u32)).to_i32
    values[25] = (((bytes[18] >> 24) & 16777215_u32) | ((bytes[19] & 65535_u32) << 8)).to_i32
    values[26] = (((bytes[19] >> 16) & 16777215_u32) | ((bytes[20] & 255_u32) << 16)).to_i32
    values[27] = (((bytes[20] >> 8) & 16777215_u32)).to_i32
    values[28] = (((bytes[21] >> 0) & 16777215_u32)).to_i32
    values[29] = (((bytes[21] >> 24) & 16777215_u32) | ((bytes[22] & 65535_u32) << 8)).to_i32
    values[30] = (((bytes[22] >> 16) & 16777215_u32) | ((bytes[23] & 255_u32) << 16)).to_i32
    values[31] = (((bytes[23] >> 8) & 16777215_u32)).to_i32
    values
  end

  def self.pack25(values)
    bytes = Slice(UInt32).new(25, 0_u32)
    bytes[0] = (((values[0] & 33554431_u32) << 0) |
      ((values[1] & 33554431_u32) << 25)).to_u32
    bytes[1] = (((values[1] & 33554431_u32) >> 7) |
      ((values[2] & 33554431_u32) << 18)).to_u32
    bytes[2] = (((values[2] & 33554431_u32) >> 14) |
      ((values[3] & 33554431_u32) << 11)).to_u32
    bytes[3] = (((values[3] & 33554431_u32) >> 21) |
      ((values[4] & 33554431_u32) << 4) |
      ((values[5] & 33554431_u32) << 29)).to_u32
    bytes[4] = (((values[5] & 33554431_u32) >> 3) |
      ((values[6] & 33554431_u32) << 22)).to_u32
    bytes[5] = (((values[6] & 33554431_u32) >> 10) |
      ((values[7] & 33554431_u32) << 15)).to_u32
    bytes[6] = (((values[7] & 33554431_u32) >> 17) |
      ((values[8] & 33554431_u32) << 8)).to_u32
    bytes[7] = (((values[8] & 33554431_u32) >> 24) |
      ((values[9] & 33554431_u32) << 1) |
      ((values[10] & 33554431_u32) << 26)).to_u32
    bytes[8] = (((values[10] & 33554431_u32) >> 6) |
      ((values[11] & 33554431_u32) << 19)).to_u32
    bytes[9] = (((values[11] & 33554431_u32) >> 13) |
      ((values[12] & 33554431_u32) << 12)).to_u32
    bytes[10] = (((values[12] & 33554431_u32) >> 20) |
      ((values[13] & 33554431_u32) << 5) |
      ((values[14] & 33554431_u32) << 30)).to_u32
    bytes[11] = (((values[14] & 33554431_u32) >> 2) |
      ((values[15] & 33554431_u32) << 23)).to_u32
    bytes[12] = (((values[15] & 33554431_u32) >> 9) |
      ((values[16] & 33554431_u32) << 16)).to_u32
    bytes[13] = (((values[16] & 33554431_u32) >> 16) |
      ((values[17] & 33554431_u32) << 9)).to_u32
    bytes[14] = (((values[17] & 33554431_u32) >> 23) |
      ((values[18] & 33554431_u32) << 2) |
      ((values[19] & 33554431_u32) << 27)).to_u32
    bytes[15] = (((values[19] & 33554431_u32) >> 5) |
      ((values[20] & 33554431_u32) << 20)).to_u32
    bytes[16] = (((values[20] & 33554431_u32) >> 12) |
      ((values[21] & 33554431_u32) << 13)).to_u32
    bytes[17] = (((values[21] & 33554431_u32) >> 19) |
      ((values[22] & 33554431_u32) << 6) |
      ((values[23] & 33554431_u32) << 31)).to_u32
    bytes[18] = (((values[23] & 33554431_u32) >> 1) |
      ((values[24] & 33554431_u32) << 24)).to_u32
    bytes[19] = (((values[24] & 33554431_u32) >> 8) |
      ((values[25] & 33554431_u32) << 17)).to_u32
    bytes[20] = (((values[25] & 33554431_u32) >> 15) |
      ((values[26] & 33554431_u32) << 10)).to_u32
    bytes[21] = (((values[26] & 33554431_u32) >> 22) |
      ((values[27] & 33554431_u32) << 3) |
      ((values[28] & 33554431_u32) << 28)).to_u32
    bytes[22] = (((values[28] & 33554431_u32) >> 4) |
      ((values[29] & 33554431_u32) << 21)).to_u32
    bytes[23] = (((values[29] & 33554431_u32) >> 11) |
      ((values[30] & 33554431_u32) << 14)).to_u32
    bytes[24] = (((values[30] & 33554431_u32) >> 18) |
      ((values[31] & 33554431_u32) << 7)).to_u32
    bytes
  end

  def self.unpack25(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 33554431_u32)).to_i32
    values[1] = (((bytes[0] >> 25) & 33554431_u32) | ((bytes[1] & 262143_u32) << 7)).to_i32
    values[2] = (((bytes[1] >> 18) & 33554431_u32) | ((bytes[2] & 2047_u32) << 14)).to_i32
    values[3] = (((bytes[2] >> 11) & 33554431_u32) | ((bytes[3] & 15_u32) << 21)).to_i32
    values[4] = (((bytes[3] >> 4) & 33554431_u32)).to_i32
    values[5] = (((bytes[3] >> 29) & 33554431_u32) | ((bytes[4] & 4194303_u32) << 3)).to_i32
    values[6] = (((bytes[4] >> 22) & 33554431_u32) | ((bytes[5] & 32767_u32) << 10)).to_i32
    values[7] = (((bytes[5] >> 15) & 33554431_u32) | ((bytes[6] & 255_u32) << 17)).to_i32
    values[8] = (((bytes[6] >> 8) & 33554431_u32) | ((bytes[7] & 1_u32) << 24)).to_i32
    values[9] = (((bytes[7] >> 1) & 33554431_u32)).to_i32
    values[10] = (((bytes[7] >> 26) & 33554431_u32) | ((bytes[8] & 524287_u32) << 6)).to_i32
    values[11] = (((bytes[8] >> 19) & 33554431_u32) | ((bytes[9] & 4095_u32) << 13)).to_i32
    values[12] = (((bytes[9] >> 12) & 33554431_u32) | ((bytes[10] & 31_u32) << 20)).to_i32
    values[13] = (((bytes[10] >> 5) & 33554431_u32)).to_i32
    values[14] = (((bytes[10] >> 30) & 33554431_u32) | ((bytes[11] & 8388607_u32) << 2)).to_i32
    values[15] = (((bytes[11] >> 23) & 33554431_u32) | ((bytes[12] & 65535_u32) << 9)).to_i32
    values[16] = (((bytes[12] >> 16) & 33554431_u32) | ((bytes[13] & 511_u32) << 16)).to_i32
    values[17] = (((bytes[13] >> 9) & 33554431_u32) | ((bytes[14] & 3_u32) << 23)).to_i32
    values[18] = (((bytes[14] >> 2) & 33554431_u32)).to_i32
    values[19] = (((bytes[14] >> 27) & 33554431_u32) | ((bytes[15] & 1048575_u32) << 5)).to_i32
    values[20] = (((bytes[15] >> 20) & 33554431_u32) | ((bytes[16] & 8191_u32) << 12)).to_i32
    values[21] = (((bytes[16] >> 13) & 33554431_u32) | ((bytes[17] & 63_u32) << 19)).to_i32
    values[22] = (((bytes[17] >> 6) & 33554431_u32)).to_i32
    values[23] = (((bytes[17] >> 31) & 33554431_u32) | ((bytes[18] & 16777215_u32) << 1)).to_i32
    values[24] = (((bytes[18] >> 24) & 33554431_u32) | ((bytes[19] & 131071_u32) << 8)).to_i32
    values[25] = (((bytes[19] >> 17) & 33554431_u32) | ((bytes[20] & 1023_u32) << 15)).to_i32
    values[26] = (((bytes[20] >> 10) & 33554431_u32) | ((bytes[21] & 7_u32) << 22)).to_i32
    values[27] = (((bytes[21] >> 3) & 33554431_u32)).to_i32
    values[28] = (((bytes[21] >> 28) & 33554431_u32) | ((bytes[22] & 2097151_u32) << 4)).to_i32
    values[29] = (((bytes[22] >> 21) & 33554431_u32) | ((bytes[23] & 16383_u32) << 11)).to_i32
    values[30] = (((bytes[23] >> 14) & 33554431_u32) | ((bytes[24] & 127_u32) << 18)).to_i32
    values[31] = (((bytes[24] >> 7) & 33554431_u32)).to_i32
    values
  end

  def self.pack26(values)
    bytes = Slice(UInt32).new(26, 0_u32)
    bytes[0] = (((values[0] & 67108863_u32) << 0) |
      ((values[1] & 67108863_u32) << 26)).to_u32
    bytes[1] = (((values[1] & 67108863_u32) >> 6) |
      ((values[2] & 67108863_u32) << 20)).to_u32
    bytes[2] = (((values[2] & 67108863_u32) >> 12) |
      ((values[3] & 67108863_u32) << 14)).to_u32
    bytes[3] = (((values[3] & 67108863_u32) >> 18) |
      ((values[4] & 67108863_u32) << 8)).to_u32
    bytes[4] = (((values[4] & 67108863_u32) >> 24) |
      ((values[5] & 67108863_u32) << 2) |
      ((values[6] & 67108863_u32) << 28)).to_u32
    bytes[5] = (((values[6] & 67108863_u32) >> 4) |
      ((values[7] & 67108863_u32) << 22)).to_u32
    bytes[6] = (((values[7] & 67108863_u32) >> 10) |
      ((values[8] & 67108863_u32) << 16)).to_u32
    bytes[7] = (((values[8] & 67108863_u32) >> 16) |
      ((values[9] & 67108863_u32) << 10)).to_u32
    bytes[8] = (((values[9] & 67108863_u32) >> 22) |
      ((values[10] & 67108863_u32) << 4) |
      ((values[11] & 67108863_u32) << 30)).to_u32
    bytes[9] = (((values[11] & 67108863_u32) >> 2) |
      ((values[12] & 67108863_u32) << 24)).to_u32
    bytes[10] = (((values[12] & 67108863_u32) >> 8) |
      ((values[13] & 67108863_u32) << 18)).to_u32
    bytes[11] = (((values[13] & 67108863_u32) >> 14) |
      ((values[14] & 67108863_u32) << 12)).to_u32
    bytes[12] = (((values[14] & 67108863_u32) >> 20) |
      ((values[15] & 67108863_u32) << 6)).to_u32
    bytes[13] = (((values[16] & 67108863_u32) << 0) |
      ((values[17] & 67108863_u32) << 26)).to_u32
    bytes[14] = (((values[17] & 67108863_u32) >> 6) |
      ((values[18] & 67108863_u32) << 20)).to_u32
    bytes[15] = (((values[18] & 67108863_u32) >> 12) |
      ((values[19] & 67108863_u32) << 14)).to_u32
    bytes[16] = (((values[19] & 67108863_u32) >> 18) |
      ((values[20] & 67108863_u32) << 8)).to_u32
    bytes[17] = (((values[20] & 67108863_u32) >> 24) |
      ((values[21] & 67108863_u32) << 2) |
      ((values[22] & 67108863_u32) << 28)).to_u32
    bytes[18] = (((values[22] & 67108863_u32) >> 4) |
      ((values[23] & 67108863_u32) << 22)).to_u32
    bytes[19] = (((values[23] & 67108863_u32) >> 10) |
      ((values[24] & 67108863_u32) << 16)).to_u32
    bytes[20] = (((values[24] & 67108863_u32) >> 16) |
      ((values[25] & 67108863_u32) << 10)).to_u32
    bytes[21] = (((values[25] & 67108863_u32) >> 22) |
      ((values[26] & 67108863_u32) << 4) |
      ((values[27] & 67108863_u32) << 30)).to_u32
    bytes[22] = (((values[27] & 67108863_u32) >> 2) |
      ((values[28] & 67108863_u32) << 24)).to_u32
    bytes[23] = (((values[28] & 67108863_u32) >> 8) |
      ((values[29] & 67108863_u32) << 18)).to_u32
    bytes[24] = (((values[29] & 67108863_u32) >> 14) |
      ((values[30] & 67108863_u32) << 12)).to_u32
    bytes[25] = (((values[30] & 67108863_u32) >> 20) |
      ((values[31] & 67108863_u32) << 6)).to_u32
    bytes
  end

  def self.unpack26(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 67108863_u32)).to_i32
    values[1] = (((bytes[0] >> 26) & 67108863_u32) | ((bytes[1] & 1048575_u32) << 6)).to_i32
    values[2] = (((bytes[1] >> 20) & 67108863_u32) | ((bytes[2] & 16383_u32) << 12)).to_i32
    values[3] = (((bytes[2] >> 14) & 67108863_u32) | ((bytes[3] & 255_u32) << 18)).to_i32
    values[4] = (((bytes[3] >> 8) & 67108863_u32) | ((bytes[4] & 3_u32) << 24)).to_i32
    values[5] = (((bytes[4] >> 2) & 67108863_u32)).to_i32
    values[6] = (((bytes[4] >> 28) & 67108863_u32) | ((bytes[5] & 4194303_u32) << 4)).to_i32
    values[7] = (((bytes[5] >> 22) & 67108863_u32) | ((bytes[6] & 65535_u32) << 10)).to_i32
    values[8] = (((bytes[6] >> 16) & 67108863_u32) | ((bytes[7] & 1023_u32) << 16)).to_i32
    values[9] = (((bytes[7] >> 10) & 67108863_u32) | ((bytes[8] & 15_u32) << 22)).to_i32
    values[10] = (((bytes[8] >> 4) & 67108863_u32)).to_i32
    values[11] = (((bytes[8] >> 30) & 67108863_u32) | ((bytes[9] & 16777215_u32) << 2)).to_i32
    values[12] = (((bytes[9] >> 24) & 67108863_u32) | ((bytes[10] & 262143_u32) << 8)).to_i32
    values[13] = (((bytes[10] >> 18) & 67108863_u32) | ((bytes[11] & 4095_u32) << 14)).to_i32
    values[14] = (((bytes[11] >> 12) & 67108863_u32) | ((bytes[12] & 63_u32) << 20)).to_i32
    values[15] = (((bytes[12] >> 6) & 67108863_u32)).to_i32
    values[16] = (((bytes[13] >> 0) & 67108863_u32)).to_i32
    values[17] = (((bytes[13] >> 26) & 67108863_u32) | ((bytes[14] & 1048575_u32) << 6)).to_i32
    values[18] = (((bytes[14] >> 20) & 67108863_u32) | ((bytes[15] & 16383_u32) << 12)).to_i32
    values[19] = (((bytes[15] >> 14) & 67108863_u32) | ((bytes[16] & 255_u32) << 18)).to_i32
    values[20] = (((bytes[16] >> 8) & 67108863_u32) | ((bytes[17] & 3_u32) << 24)).to_i32
    values[21] = (((bytes[17] >> 2) & 67108863_u32)).to_i32
    values[22] = (((bytes[17] >> 28) & 67108863_u32) | ((bytes[18] & 4194303_u32) << 4)).to_i32
    values[23] = (((bytes[18] >> 22) & 67108863_u32) | ((bytes[19] & 65535_u32) << 10)).to_i32
    values[24] = (((bytes[19] >> 16) & 67108863_u32) | ((bytes[20] & 1023_u32) << 16)).to_i32
    values[25] = (((bytes[20] >> 10) & 67108863_u32) | ((bytes[21] & 15_u32) << 22)).to_i32
    values[26] = (((bytes[21] >> 4) & 67108863_u32)).to_i32
    values[27] = (((bytes[21] >> 30) & 67108863_u32) | ((bytes[22] & 16777215_u32) << 2)).to_i32
    values[28] = (((bytes[22] >> 24) & 67108863_u32) | ((bytes[23] & 262143_u32) << 8)).to_i32
    values[29] = (((bytes[23] >> 18) & 67108863_u32) | ((bytes[24] & 4095_u32) << 14)).to_i32
    values[30] = (((bytes[24] >> 12) & 67108863_u32) | ((bytes[25] & 63_u32) << 20)).to_i32
    values[31] = (((bytes[25] >> 6) & 67108863_u32)).to_i32
    values
  end

  def self.pack27(values)
    bytes = Slice(UInt32).new(27, 0_u32)
    bytes[0] = (((values[0] & 134217727_u32) << 0) |
      ((values[1] & 134217727_u32) << 27)).to_u32
    bytes[1] = (((values[1] & 134217727_u32) >> 5) |
      ((values[2] & 134217727_u32) << 22)).to_u32
    bytes[2] = (((values[2] & 134217727_u32) >> 10) |
      ((values[3] & 134217727_u32) << 17)).to_u32
    bytes[3] = (((values[3] & 134217727_u32) >> 15) |
      ((values[4] & 134217727_u32) << 12)).to_u32
    bytes[4] = (((values[4] & 134217727_u32) >> 20) |
      ((values[5] & 134217727_u32) << 7)).to_u32
    bytes[5] = (((values[5] & 134217727_u32) >> 25) |
      ((values[6] & 134217727_u32) << 2) |
      ((values[7] & 134217727_u32) << 29)).to_u32
    bytes[6] = (((values[7] & 134217727_u32) >> 3) |
      ((values[8] & 134217727_u32) << 24)).to_u32
    bytes[7] = (((values[8] & 134217727_u32) >> 8) |
      ((values[9] & 134217727_u32) << 19)).to_u32
    bytes[8] = (((values[9] & 134217727_u32) >> 13) |
      ((values[10] & 134217727_u32) << 14)).to_u32
    bytes[9] = (((values[10] & 134217727_u32) >> 18) |
      ((values[11] & 134217727_u32) << 9)).to_u32
    bytes[10] = (((values[11] & 134217727_u32) >> 23) |
      ((values[12] & 134217727_u32) << 4) |
      ((values[13] & 134217727_u32) << 31)).to_u32
    bytes[11] = (((values[13] & 134217727_u32) >> 1) |
      ((values[14] & 134217727_u32) << 26)).to_u32
    bytes[12] = (((values[14] & 134217727_u32) >> 6) |
      ((values[15] & 134217727_u32) << 21)).to_u32
    bytes[13] = (((values[15] & 134217727_u32) >> 11) |
      ((values[16] & 134217727_u32) << 16)).to_u32
    bytes[14] = (((values[16] & 134217727_u32) >> 16) |
      ((values[17] & 134217727_u32) << 11)).to_u32
    bytes[15] = (((values[17] & 134217727_u32) >> 21) |
      ((values[18] & 134217727_u32) << 6)).to_u32
    bytes[16] = (((values[18] & 134217727_u32) >> 26) |
      ((values[19] & 134217727_u32) << 1) |
      ((values[20] & 134217727_u32) << 28)).to_u32
    bytes[17] = (((values[20] & 134217727_u32) >> 4) |
      ((values[21] & 134217727_u32) << 23)).to_u32
    bytes[18] = (((values[21] & 134217727_u32) >> 9) |
      ((values[22] & 134217727_u32) << 18)).to_u32
    bytes[19] = (((values[22] & 134217727_u32) >> 14) |
      ((values[23] & 134217727_u32) << 13)).to_u32
    bytes[20] = (((values[23] & 134217727_u32) >> 19) |
      ((values[24] & 134217727_u32) << 8)).to_u32
    bytes[21] = (((values[24] & 134217727_u32) >> 24) |
      ((values[25] & 134217727_u32) << 3) |
      ((values[26] & 134217727_u32) << 30)).to_u32
    bytes[22] = (((values[26] & 134217727_u32) >> 2) |
      ((values[27] & 134217727_u32) << 25)).to_u32
    bytes[23] = (((values[27] & 134217727_u32) >> 7) |
      ((values[28] & 134217727_u32) << 20)).to_u32
    bytes[24] = (((values[28] & 134217727_u32) >> 12) |
      ((values[29] & 134217727_u32) << 15)).to_u32
    bytes[25] = (((values[29] & 134217727_u32) >> 17) |
      ((values[30] & 134217727_u32) << 10)).to_u32
    bytes[26] = (((values[30] & 134217727_u32) >> 22) |
      ((values[31] & 134217727_u32) << 5)).to_u32
    bytes
  end

  def self.unpack27(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 134217727_u32)).to_i32
    values[1] = (((bytes[0] >> 27) & 134217727_u32) | ((bytes[1] & 4194303_u32) << 5)).to_i32
    values[2] = (((bytes[1] >> 22) & 134217727_u32) | ((bytes[2] & 131071_u32) << 10)).to_i32
    values[3] = (((bytes[2] >> 17) & 134217727_u32) | ((bytes[3] & 4095_u32) << 15)).to_i32
    values[4] = (((bytes[3] >> 12) & 134217727_u32) | ((bytes[4] & 127_u32) << 20)).to_i32
    values[5] = (((bytes[4] >> 7) & 134217727_u32) | ((bytes[5] & 3_u32) << 25)).to_i32
    values[6] = (((bytes[5] >> 2) & 134217727_u32)).to_i32
    values[7] = (((bytes[5] >> 29) & 134217727_u32) | ((bytes[6] & 16777215_u32) << 3)).to_i32
    values[8] = (((bytes[6] >> 24) & 134217727_u32) | ((bytes[7] & 524287_u32) << 8)).to_i32
    values[9] = (((bytes[7] >> 19) & 134217727_u32) | ((bytes[8] & 16383_u32) << 13)).to_i32
    values[10] = (((bytes[8] >> 14) & 134217727_u32) | ((bytes[9] & 511_u32) << 18)).to_i32
    values[11] = (((bytes[9] >> 9) & 134217727_u32) | ((bytes[10] & 15_u32) << 23)).to_i32
    values[12] = (((bytes[10] >> 4) & 134217727_u32)).to_i32
    values[13] = (((bytes[10] >> 31) & 134217727_u32) | ((bytes[11] & 67108863_u32) << 1)).to_i32
    values[14] = (((bytes[11] >> 26) & 134217727_u32) | ((bytes[12] & 2097151_u32) << 6)).to_i32
    values[15] = (((bytes[12] >> 21) & 134217727_u32) | ((bytes[13] & 65535_u32) << 11)).to_i32
    values[16] = (((bytes[13] >> 16) & 134217727_u32) | ((bytes[14] & 2047_u32) << 16)).to_i32
    values[17] = (((bytes[14] >> 11) & 134217727_u32) | ((bytes[15] & 63_u32) << 21)).to_i32
    values[18] = (((bytes[15] >> 6) & 134217727_u32) | ((bytes[16] & 1_u32) << 26)).to_i32
    values[19] = (((bytes[16] >> 1) & 134217727_u32)).to_i32
    values[20] = (((bytes[16] >> 28) & 134217727_u32) | ((bytes[17] & 8388607_u32) << 4)).to_i32
    values[21] = (((bytes[17] >> 23) & 134217727_u32) | ((bytes[18] & 262143_u32) << 9)).to_i32
    values[22] = (((bytes[18] >> 18) & 134217727_u32) | ((bytes[19] & 8191_u32) << 14)).to_i32
    values[23] = (((bytes[19] >> 13) & 134217727_u32) | ((bytes[20] & 255_u32) << 19)).to_i32
    values[24] = (((bytes[20] >> 8) & 134217727_u32) | ((bytes[21] & 7_u32) << 24)).to_i32
    values[25] = (((bytes[21] >> 3) & 134217727_u32)).to_i32
    values[26] = (((bytes[21] >> 30) & 134217727_u32) | ((bytes[22] & 33554431_u32) << 2)).to_i32
    values[27] = (((bytes[22] >> 25) & 134217727_u32) | ((bytes[23] & 1048575_u32) << 7)).to_i32
    values[28] = (((bytes[23] >> 20) & 134217727_u32) | ((bytes[24] & 32767_u32) << 12)).to_i32
    values[29] = (((bytes[24] >> 15) & 134217727_u32) | ((bytes[25] & 1023_u32) << 17)).to_i32
    values[30] = (((bytes[25] >> 10) & 134217727_u32) | ((bytes[26] & 31_u32) << 22)).to_i32
    values[31] = (((bytes[26] >> 5) & 134217727_u32)).to_i32
    values
  end

  def self.pack28(values)
    bytes = Slice(UInt32).new(28, 0_u32)
    bytes[0] = (((values[0] & 268435455_u32) << 0) |
      ((values[1] & 268435455_u32) << 28)).to_u32
    bytes[1] = (((values[1] & 268435455_u32) >> 4) |
      ((values[2] & 268435455_u32) << 24)).to_u32
    bytes[2] = (((values[2] & 268435455_u32) >> 8) |
      ((values[3] & 268435455_u32) << 20)).to_u32
    bytes[3] = (((values[3] & 268435455_u32) >> 12) |
      ((values[4] & 268435455_u32) << 16)).to_u32
    bytes[4] = (((values[4] & 268435455_u32) >> 16) |
      ((values[5] & 268435455_u32) << 12)).to_u32
    bytes[5] = (((values[5] & 268435455_u32) >> 20) |
      ((values[6] & 268435455_u32) << 8)).to_u32
    bytes[6] = (((values[6] & 268435455_u32) >> 24) |
      ((values[7] & 268435455_u32) << 4)).to_u32
    bytes[7] = (((values[8] & 268435455_u32) << 0) |
      ((values[9] & 268435455_u32) << 28)).to_u32
    bytes[8] = (((values[9] & 268435455_u32) >> 4) |
      ((values[10] & 268435455_u32) << 24)).to_u32
    bytes[9] = (((values[10] & 268435455_u32) >> 8) |
      ((values[11] & 268435455_u32) << 20)).to_u32
    bytes[10] = (((values[11] & 268435455_u32) >> 12) |
      ((values[12] & 268435455_u32) << 16)).to_u32
    bytes[11] = (((values[12] & 268435455_u32) >> 16) |
      ((values[13] & 268435455_u32) << 12)).to_u32
    bytes[12] = (((values[13] & 268435455_u32) >> 20) |
      ((values[14] & 268435455_u32) << 8)).to_u32
    bytes[13] = (((values[14] & 268435455_u32) >> 24) |
      ((values[15] & 268435455_u32) << 4)).to_u32
    bytes[14] = (((values[16] & 268435455_u32) << 0) |
      ((values[17] & 268435455_u32) << 28)).to_u32
    bytes[15] = (((values[17] & 268435455_u32) >> 4) |
      ((values[18] & 268435455_u32) << 24)).to_u32
    bytes[16] = (((values[18] & 268435455_u32) >> 8) |
      ((values[19] & 268435455_u32) << 20)).to_u32
    bytes[17] = (((values[19] & 268435455_u32) >> 12) |
      ((values[20] & 268435455_u32) << 16)).to_u32
    bytes[18] = (((values[20] & 268435455_u32) >> 16) |
      ((values[21] & 268435455_u32) << 12)).to_u32
    bytes[19] = (((values[21] & 268435455_u32) >> 20) |
      ((values[22] & 268435455_u32) << 8)).to_u32
    bytes[20] = (((values[22] & 268435455_u32) >> 24) |
      ((values[23] & 268435455_u32) << 4)).to_u32
    bytes[21] = (((values[24] & 268435455_u32) << 0) |
      ((values[25] & 268435455_u32) << 28)).to_u32
    bytes[22] = (((values[25] & 268435455_u32) >> 4) |
      ((values[26] & 268435455_u32) << 24)).to_u32
    bytes[23] = (((values[26] & 268435455_u32) >> 8) |
      ((values[27] & 268435455_u32) << 20)).to_u32
    bytes[24] = (((values[27] & 268435455_u32) >> 12) |
      ((values[28] & 268435455_u32) << 16)).to_u32
    bytes[25] = (((values[28] & 268435455_u32) >> 16) |
      ((values[29] & 268435455_u32) << 12)).to_u32
    bytes[26] = (((values[29] & 268435455_u32) >> 20) |
      ((values[30] & 268435455_u32) << 8)).to_u32
    bytes[27] = (((values[30] & 268435455_u32) >> 24) |
      ((values[31] & 268435455_u32) << 4)).to_u32
    bytes
  end

  def self.unpack28(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 268435455_u32)).to_i32
    values[1] = (((bytes[0] >> 28) & 268435455_u32) | ((bytes[1] & 16777215_u32) << 4)).to_i32
    values[2] = (((bytes[1] >> 24) & 268435455_u32) | ((bytes[2] & 1048575_u32) << 8)).to_i32
    values[3] = (((bytes[2] >> 20) & 268435455_u32) | ((bytes[3] & 65535_u32) << 12)).to_i32
    values[4] = (((bytes[3] >> 16) & 268435455_u32) | ((bytes[4] & 4095_u32) << 16)).to_i32
    values[5] = (((bytes[4] >> 12) & 268435455_u32) | ((bytes[5] & 255_u32) << 20)).to_i32
    values[6] = (((bytes[5] >> 8) & 268435455_u32) | ((bytes[6] & 15_u32) << 24)).to_i32
    values[7] = (((bytes[6] >> 4) & 268435455_u32)).to_i32
    values[8] = (((bytes[7] >> 0) & 268435455_u32)).to_i32
    values[9] = (((bytes[7] >> 28) & 268435455_u32) | ((bytes[8] & 16777215_u32) << 4)).to_i32
    values[10] = (((bytes[8] >> 24) & 268435455_u32) | ((bytes[9] & 1048575_u32) << 8)).to_i32
    values[11] = (((bytes[9] >> 20) & 268435455_u32) | ((bytes[10] & 65535_u32) << 12)).to_i32
    values[12] = (((bytes[10] >> 16) & 268435455_u32) | ((bytes[11] & 4095_u32) << 16)).to_i32
    values[13] = (((bytes[11] >> 12) & 268435455_u32) | ((bytes[12] & 255_u32) << 20)).to_i32
    values[14] = (((bytes[12] >> 8) & 268435455_u32) | ((bytes[13] & 15_u32) << 24)).to_i32
    values[15] = (((bytes[13] >> 4) & 268435455_u32)).to_i32
    values[16] = (((bytes[14] >> 0) & 268435455_u32)).to_i32
    values[17] = (((bytes[14] >> 28) & 268435455_u32) | ((bytes[15] & 16777215_u32) << 4)).to_i32
    values[18] = (((bytes[15] >> 24) & 268435455_u32) | ((bytes[16] & 1048575_u32) << 8)).to_i32
    values[19] = (((bytes[16] >> 20) & 268435455_u32) | ((bytes[17] & 65535_u32) << 12)).to_i32
    values[20] = (((bytes[17] >> 16) & 268435455_u32) | ((bytes[18] & 4095_u32) << 16)).to_i32
    values[21] = (((bytes[18] >> 12) & 268435455_u32) | ((bytes[19] & 255_u32) << 20)).to_i32
    values[22] = (((bytes[19] >> 8) & 268435455_u32) | ((bytes[20] & 15_u32) << 24)).to_i32
    values[23] = (((bytes[20] >> 4) & 268435455_u32)).to_i32
    values[24] = (((bytes[21] >> 0) & 268435455_u32)).to_i32
    values[25] = (((bytes[21] >> 28) & 268435455_u32) | ((bytes[22] & 16777215_u32) << 4)).to_i32
    values[26] = (((bytes[22] >> 24) & 268435455_u32) | ((bytes[23] & 1048575_u32) << 8)).to_i32
    values[27] = (((bytes[23] >> 20) & 268435455_u32) | ((bytes[24] & 65535_u32) << 12)).to_i32
    values[28] = (((bytes[24] >> 16) & 268435455_u32) | ((bytes[25] & 4095_u32) << 16)).to_i32
    values[29] = (((bytes[25] >> 12) & 268435455_u32) | ((bytes[26] & 255_u32) << 20)).to_i32
    values[30] = (((bytes[26] >> 8) & 268435455_u32) | ((bytes[27] & 15_u32) << 24)).to_i32
    values[31] = (((bytes[27] >> 4) & 268435455_u32)).to_i32
    values
  end

  def self.pack29(values)
    bytes = Slice(UInt32).new(29, 0_u32)
    bytes[0] = (((values[0] & 536870911_u32) << 0) |
      ((values[1] & 536870911_u32) << 29)).to_u32
    bytes[1] = (((values[1] & 536870911_u32) >> 3) |
      ((values[2] & 536870911_u32) << 26)).to_u32
    bytes[2] = (((values[2] & 536870911_u32) >> 6) |
      ((values[3] & 536870911_u32) << 23)).to_u32
    bytes[3] = (((values[3] & 536870911_u32) >> 9) |
      ((values[4] & 536870911_u32) << 20)).to_u32
    bytes[4] = (((values[4] & 536870911_u32) >> 12) |
      ((values[5] & 536870911_u32) << 17)).to_u32
    bytes[5] = (((values[5] & 536870911_u32) >> 15) |
      ((values[6] & 536870911_u32) << 14)).to_u32
    bytes[6] = (((values[6] & 536870911_u32) >> 18) |
      ((values[7] & 536870911_u32) << 11)).to_u32
    bytes[7] = (((values[7] & 536870911_u32) >> 21) |
      ((values[8] & 536870911_u32) << 8)).to_u32
    bytes[8] = (((values[8] & 536870911_u32) >> 24) |
      ((values[9] & 536870911_u32) << 5)).to_u32
    bytes[9] = (((values[9] & 536870911_u32) >> 27) |
      ((values[10] & 536870911_u32) << 2) |
      ((values[11] & 536870911_u32) << 31)).to_u32
    bytes[10] = (((values[11] & 536870911_u32) >> 1) |
      ((values[12] & 536870911_u32) << 28)).to_u32
    bytes[11] = (((values[12] & 536870911_u32) >> 4) |
      ((values[13] & 536870911_u32) << 25)).to_u32
    bytes[12] = (((values[13] & 536870911_u32) >> 7) |
      ((values[14] & 536870911_u32) << 22)).to_u32
    bytes[13] = (((values[14] & 536870911_u32) >> 10) |
      ((values[15] & 536870911_u32) << 19)).to_u32
    bytes[14] = (((values[15] & 536870911_u32) >> 13) |
      ((values[16] & 536870911_u32) << 16)).to_u32
    bytes[15] = (((values[16] & 536870911_u32) >> 16) |
      ((values[17] & 536870911_u32) << 13)).to_u32
    bytes[16] = (((values[17] & 536870911_u32) >> 19) |
      ((values[18] & 536870911_u32) << 10)).to_u32
    bytes[17] = (((values[18] & 536870911_u32) >> 22) |
      ((values[19] & 536870911_u32) << 7)).to_u32
    bytes[18] = (((values[19] & 536870911_u32) >> 25) |
      ((values[20] & 536870911_u32) << 4)).to_u32
    bytes[19] = (((values[20] & 536870911_u32) >> 28) |
      ((values[21] & 536870911_u32) << 1) |
      ((values[22] & 536870911_u32) << 30)).to_u32
    bytes[20] = (((values[22] & 536870911_u32) >> 2) |
      ((values[23] & 536870911_u32) << 27)).to_u32
    bytes[21] = (((values[23] & 536870911_u32) >> 5) |
      ((values[24] & 536870911_u32) << 24)).to_u32
    bytes[22] = (((values[24] & 536870911_u32) >> 8) |
      ((values[25] & 536870911_u32) << 21)).to_u32
    bytes[23] = (((values[25] & 536870911_u32) >> 11) |
      ((values[26] & 536870911_u32) << 18)).to_u32
    bytes[24] = (((values[26] & 536870911_u32) >> 14) |
      ((values[27] & 536870911_u32) << 15)).to_u32
    bytes[25] = (((values[27] & 536870911_u32) >> 17) |
      ((values[28] & 536870911_u32) << 12)).to_u32
    bytes[26] = (((values[28] & 536870911_u32) >> 20) |
      ((values[29] & 536870911_u32) << 9)).to_u32
    bytes[27] = (((values[29] & 536870911_u32) >> 23) |
      ((values[30] & 536870911_u32) << 6)).to_u32
    bytes[28] = (((values[30] & 536870911_u32) >> 26) |
      ((values[31] & 536870911_u32) << 3)).to_u32
    bytes
  end

  def self.unpack29(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 536870911_u32)).to_i32
    values[1] = (((bytes[0] >> 29) & 536870911_u32) | ((bytes[1] & 67108863_u32) << 3)).to_i32
    values[2] = (((bytes[1] >> 26) & 536870911_u32) | ((bytes[2] & 8388607_u32) << 6)).to_i32
    values[3] = (((bytes[2] >> 23) & 536870911_u32) | ((bytes[3] & 1048575_u32) << 9)).to_i32
    values[4] = (((bytes[3] >> 20) & 536870911_u32) | ((bytes[4] & 131071_u32) << 12)).to_i32
    values[5] = (((bytes[4] >> 17) & 536870911_u32) | ((bytes[5] & 16383_u32) << 15)).to_i32
    values[6] = (((bytes[5] >> 14) & 536870911_u32) | ((bytes[6] & 2047_u32) << 18)).to_i32
    values[7] = (((bytes[6] >> 11) & 536870911_u32) | ((bytes[7] & 255_u32) << 21)).to_i32
    values[8] = (((bytes[7] >> 8) & 536870911_u32) | ((bytes[8] & 31_u32) << 24)).to_i32
    values[9] = (((bytes[8] >> 5) & 536870911_u32) | ((bytes[9] & 3_u32) << 27)).to_i32
    values[10] = (((bytes[9] >> 2) & 536870911_u32)).to_i32
    values[11] = (((bytes[9] >> 31) & 536870911_u32) | ((bytes[10] & 268435455_u32) << 1)).to_i32
    values[12] = (((bytes[10] >> 28) & 536870911_u32) | ((bytes[11] & 33554431_u32) << 4)).to_i32
    values[13] = (((bytes[11] >> 25) & 536870911_u32) | ((bytes[12] & 4194303_u32) << 7)).to_i32
    values[14] = (((bytes[12] >> 22) & 536870911_u32) | ((bytes[13] & 524287_u32) << 10)).to_i32
    values[15] = (((bytes[13] >> 19) & 536870911_u32) | ((bytes[14] & 65535_u32) << 13)).to_i32
    values[16] = (((bytes[14] >> 16) & 536870911_u32) | ((bytes[15] & 8191_u32) << 16)).to_i32
    values[17] = (((bytes[15] >> 13) & 536870911_u32) | ((bytes[16] & 1023_u32) << 19)).to_i32
    values[18] = (((bytes[16] >> 10) & 536870911_u32) | ((bytes[17] & 127_u32) << 22)).to_i32
    values[19] = (((bytes[17] >> 7) & 536870911_u32) | ((bytes[18] & 15_u32) << 25)).to_i32
    values[20] = (((bytes[18] >> 4) & 536870911_u32) | ((bytes[19] & 1_u32) << 28)).to_i32
    values[21] = (((bytes[19] >> 1) & 536870911_u32)).to_i32
    values[22] = (((bytes[19] >> 30) & 536870911_u32) | ((bytes[20] & 134217727_u32) << 2)).to_i32
    values[23] = (((bytes[20] >> 27) & 536870911_u32) | ((bytes[21] & 16777215_u32) << 5)).to_i32
    values[24] = (((bytes[21] >> 24) & 536870911_u32) | ((bytes[22] & 2097151_u32) << 8)).to_i32
    values[25] = (((bytes[22] >> 21) & 536870911_u32) | ((bytes[23] & 262143_u32) << 11)).to_i32
    values[26] = (((bytes[23] >> 18) & 536870911_u32) | ((bytes[24] & 32767_u32) << 14)).to_i32
    values[27] = (((bytes[24] >> 15) & 536870911_u32) | ((bytes[25] & 4095_u32) << 17)).to_i32
    values[28] = (((bytes[25] >> 12) & 536870911_u32) | ((bytes[26] & 511_u32) << 20)).to_i32
    values[29] = (((bytes[26] >> 9) & 536870911_u32) | ((bytes[27] & 63_u32) << 23)).to_i32
    values[30] = (((bytes[27] >> 6) & 536870911_u32) | ((bytes[28] & 7_u32) << 26)).to_i32
    values[31] = (((bytes[28] >> 3) & 536870911_u32)).to_i32
    values
  end

  def self.pack30(values)
    bytes = Slice(UInt32).new(30, 0_u32)
    bytes[0] = (((values[0] & 1073741823_u32) << 0) |
      ((values[1] & 1073741823_u32) << 30)).to_u32
    bytes[1] = (((values[1] & 1073741823_u32) >> 2) |
      ((values[2] & 1073741823_u32) << 28)).to_u32
    bytes[2] = (((values[2] & 1073741823_u32) >> 4) |
      ((values[3] & 1073741823_u32) << 26)).to_u32
    bytes[3] = (((values[3] & 1073741823_u32) >> 6) |
      ((values[4] & 1073741823_u32) << 24)).to_u32
    bytes[4] = (((values[4] & 1073741823_u32) >> 8) |
      ((values[5] & 1073741823_u32) << 22)).to_u32
    bytes[5] = (((values[5] & 1073741823_u32) >> 10) |
      ((values[6] & 1073741823_u32) << 20)).to_u32
    bytes[6] = (((values[6] & 1073741823_u32) >> 12) |
      ((values[7] & 1073741823_u32) << 18)).to_u32
    bytes[7] = (((values[7] & 1073741823_u32) >> 14) |
      ((values[8] & 1073741823_u32) << 16)).to_u32
    bytes[8] = (((values[8] & 1073741823_u32) >> 16) |
      ((values[9] & 1073741823_u32) << 14)).to_u32
    bytes[9] = (((values[9] & 1073741823_u32) >> 18) |
      ((values[10] & 1073741823_u32) << 12)).to_u32
    bytes[10] = (((values[10] & 1073741823_u32) >> 20) |
      ((values[11] & 1073741823_u32) << 10)).to_u32
    bytes[11] = (((values[11] & 1073741823_u32) >> 22) |
      ((values[12] & 1073741823_u32) << 8)).to_u32
    bytes[12] = (((values[12] & 1073741823_u32) >> 24) |
      ((values[13] & 1073741823_u32) << 6)).to_u32
    bytes[13] = (((values[13] & 1073741823_u32) >> 26) |
      ((values[14] & 1073741823_u32) << 4)).to_u32
    bytes[14] = (((values[14] & 1073741823_u32) >> 28) |
      ((values[15] & 1073741823_u32) << 2)).to_u32
    bytes[15] = (((values[16] & 1073741823_u32) << 0) |
      ((values[17] & 1073741823_u32) << 30)).to_u32
    bytes[16] = (((values[17] & 1073741823_u32) >> 2) |
      ((values[18] & 1073741823_u32) << 28)).to_u32
    bytes[17] = (((values[18] & 1073741823_u32) >> 4) |
      ((values[19] & 1073741823_u32) << 26)).to_u32
    bytes[18] = (((values[19] & 1073741823_u32) >> 6) |
      ((values[20] & 1073741823_u32) << 24)).to_u32
    bytes[19] = (((values[20] & 1073741823_u32) >> 8) |
      ((values[21] & 1073741823_u32) << 22)).to_u32
    bytes[20] = (((values[21] & 1073741823_u32) >> 10) |
      ((values[22] & 1073741823_u32) << 20)).to_u32
    bytes[21] = (((values[22] & 1073741823_u32) >> 12) |
      ((values[23] & 1073741823_u32) << 18)).to_u32
    bytes[22] = (((values[23] & 1073741823_u32) >> 14) |
      ((values[24] & 1073741823_u32) << 16)).to_u32
    bytes[23] = (((values[24] & 1073741823_u32) >> 16) |
      ((values[25] & 1073741823_u32) << 14)).to_u32
    bytes[24] = (((values[25] & 1073741823_u32) >> 18) |
      ((values[26] & 1073741823_u32) << 12)).to_u32
    bytes[25] = (((values[26] & 1073741823_u32) >> 20) |
      ((values[27] & 1073741823_u32) << 10)).to_u32
    bytes[26] = (((values[27] & 1073741823_u32) >> 22) |
      ((values[28] & 1073741823_u32) << 8)).to_u32
    bytes[27] = (((values[28] & 1073741823_u32) >> 24) |
      ((values[29] & 1073741823_u32) << 6)).to_u32
    bytes[28] = (((values[29] & 1073741823_u32) >> 26) |
      ((values[30] & 1073741823_u32) << 4)).to_u32
    bytes[29] = (((values[30] & 1073741823_u32) >> 28) |
      ((values[31] & 1073741823_u32) << 2)).to_u32
    bytes
  end

  def self.unpack30(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 1073741823_u32)).to_i32
    values[1] = (((bytes[0] >> 30) & 1073741823_u32) | ((bytes[1] & 268435455_u32) << 2)).to_i32
    values[2] = (((bytes[1] >> 28) & 1073741823_u32) | ((bytes[2] & 67108863_u32) << 4)).to_i32
    values[3] = (((bytes[2] >> 26) & 1073741823_u32) | ((bytes[3] & 16777215_u32) << 6)).to_i32
    values[4] = (((bytes[3] >> 24) & 1073741823_u32) | ((bytes[4] & 4194303_u32) << 8)).to_i32
    values[5] = (((bytes[4] >> 22) & 1073741823_u32) | ((bytes[5] & 1048575_u32) << 10)).to_i32
    values[6] = (((bytes[5] >> 20) & 1073741823_u32) | ((bytes[6] & 262143_u32) << 12)).to_i32
    values[7] = (((bytes[6] >> 18) & 1073741823_u32) | ((bytes[7] & 65535_u32) << 14)).to_i32
    values[8] = (((bytes[7] >> 16) & 1073741823_u32) | ((bytes[8] & 16383_u32) << 16)).to_i32
    values[9] = (((bytes[8] >> 14) & 1073741823_u32) | ((bytes[9] & 4095_u32) << 18)).to_i32
    values[10] = (((bytes[9] >> 12) & 1073741823_u32) | ((bytes[10] & 1023_u32) << 20)).to_i32
    values[11] = (((bytes[10] >> 10) & 1073741823_u32) | ((bytes[11] & 255_u32) << 22)).to_i32
    values[12] = (((bytes[11] >> 8) & 1073741823_u32) | ((bytes[12] & 63_u32) << 24)).to_i32
    values[13] = (((bytes[12] >> 6) & 1073741823_u32) | ((bytes[13] & 15_u32) << 26)).to_i32
    values[14] = (((bytes[13] >> 4) & 1073741823_u32) | ((bytes[14] & 3_u32) << 28)).to_i32
    values[15] = (((bytes[14] >> 2) & 1073741823_u32)).to_i32
    values[16] = (((bytes[15] >> 0) & 1073741823_u32)).to_i32
    values[17] = (((bytes[15] >> 30) & 1073741823_u32) | ((bytes[16] & 268435455_u32) << 2)).to_i32
    values[18] = (((bytes[16] >> 28) & 1073741823_u32) | ((bytes[17] & 67108863_u32) << 4)).to_i32
    values[19] = (((bytes[17] >> 26) & 1073741823_u32) | ((bytes[18] & 16777215_u32) << 6)).to_i32
    values[20] = (((bytes[18] >> 24) & 1073741823_u32) | ((bytes[19] & 4194303_u32) << 8)).to_i32
    values[21] = (((bytes[19] >> 22) & 1073741823_u32) | ((bytes[20] & 1048575_u32) << 10)).to_i32
    values[22] = (((bytes[20] >> 20) & 1073741823_u32) | ((bytes[21] & 262143_u32) << 12)).to_i32
    values[23] = (((bytes[21] >> 18) & 1073741823_u32) | ((bytes[22] & 65535_u32) << 14)).to_i32
    values[24] = (((bytes[22] >> 16) & 1073741823_u32) | ((bytes[23] & 16383_u32) << 16)).to_i32
    values[25] = (((bytes[23] >> 14) & 1073741823_u32) | ((bytes[24] & 4095_u32) << 18)).to_i32
    values[26] = (((bytes[24] >> 12) & 1073741823_u32) | ((bytes[25] & 1023_u32) << 20)).to_i32
    values[27] = (((bytes[25] >> 10) & 1073741823_u32) | ((bytes[26] & 255_u32) << 22)).to_i32
    values[28] = (((bytes[26] >> 8) & 1073741823_u32) | ((bytes[27] & 63_u32) << 24)).to_i32
    values[29] = (((bytes[27] >> 6) & 1073741823_u32) | ((bytes[28] & 15_u32) << 26)).to_i32
    values[30] = (((bytes[28] >> 4) & 1073741823_u32) | ((bytes[29] & 3_u32) << 28)).to_i32
    values[31] = (((bytes[29] >> 2) & 1073741823_u32)).to_i32
    values
  end

  def self.pack31(values)
    bytes = Slice(UInt32).new(31, 0_u32)
    bytes[0] = (((values[0] & 2147483647_u32) << 0) |
      ((values[1] & 2147483647_u32) << 31)).to_u32
    bytes[1] = (((values[1] & 2147483647_u32) >> 1) |
      ((values[2] & 2147483647_u32) << 30)).to_u32
    bytes[2] = (((values[2] & 2147483647_u32) >> 2) |
      ((values[3] & 2147483647_u32) << 29)).to_u32
    bytes[3] = (((values[3] & 2147483647_u32) >> 3) |
      ((values[4] & 2147483647_u32) << 28)).to_u32
    bytes[4] = (((values[4] & 2147483647_u32) >> 4) |
      ((values[5] & 2147483647_u32) << 27)).to_u32
    bytes[5] = (((values[5] & 2147483647_u32) >> 5) |
      ((values[6] & 2147483647_u32) << 26)).to_u32
    bytes[6] = (((values[6] & 2147483647_u32) >> 6) |
      ((values[7] & 2147483647_u32) << 25)).to_u32
    bytes[7] = (((values[7] & 2147483647_u32) >> 7) |
      ((values[8] & 2147483647_u32) << 24)).to_u32
    bytes[8] = (((values[8] & 2147483647_u32) >> 8) |
      ((values[9] & 2147483647_u32) << 23)).to_u32
    bytes[9] = (((values[9] & 2147483647_u32) >> 9) |
      ((values[10] & 2147483647_u32) << 22)).to_u32
    bytes[10] = (((values[10] & 2147483647_u32) >> 10) |
      ((values[11] & 2147483647_u32) << 21)).to_u32
    bytes[11] = (((values[11] & 2147483647_u32) >> 11) |
      ((values[12] & 2147483647_u32) << 20)).to_u32
    bytes[12] = (((values[12] & 2147483647_u32) >> 12) |
      ((values[13] & 2147483647_u32) << 19)).to_u32
    bytes[13] = (((values[13] & 2147483647_u32) >> 13) |
      ((values[14] & 2147483647_u32) << 18)).to_u32
    bytes[14] = (((values[14] & 2147483647_u32) >> 14) |
      ((values[15] & 2147483647_u32) << 17)).to_u32
    bytes[15] = (((values[15] & 2147483647_u32) >> 15) |
      ((values[16] & 2147483647_u32) << 16)).to_u32
    bytes[16] = (((values[16] & 2147483647_u32) >> 16) |
      ((values[17] & 2147483647_u32) << 15)).to_u32
    bytes[17] = (((values[17] & 2147483647_u32) >> 17) |
      ((values[18] & 2147483647_u32) << 14)).to_u32
    bytes[18] = (((values[18] & 2147483647_u32) >> 18) |
      ((values[19] & 2147483647_u32) << 13)).to_u32
    bytes[19] = (((values[19] & 2147483647_u32) >> 19) |
      ((values[20] & 2147483647_u32) << 12)).to_u32
    bytes[20] = (((values[20] & 2147483647_u32) >> 20) |
      ((values[21] & 2147483647_u32) << 11)).to_u32
    bytes[21] = (((values[21] & 2147483647_u32) >> 21) |
      ((values[22] & 2147483647_u32) << 10)).to_u32
    bytes[22] = (((values[22] & 2147483647_u32) >> 22) |
      ((values[23] & 2147483647_u32) << 9)).to_u32
    bytes[23] = (((values[23] & 2147483647_u32) >> 23) |
      ((values[24] & 2147483647_u32) << 8)).to_u32
    bytes[24] = (((values[24] & 2147483647_u32) >> 24) |
      ((values[25] & 2147483647_u32) << 7)).to_u32
    bytes[25] = (((values[25] & 2147483647_u32) >> 25) |
      ((values[26] & 2147483647_u32) << 6)).to_u32
    bytes[26] = (((values[26] & 2147483647_u32) >> 26) |
      ((values[27] & 2147483647_u32) << 5)).to_u32
    bytes[27] = (((values[27] & 2147483647_u32) >> 27) |
      ((values[28] & 2147483647_u32) << 4)).to_u32
    bytes[28] = (((values[28] & 2147483647_u32) >> 28) |
      ((values[29] & 2147483647_u32) << 3)).to_u32
    bytes[29] = (((values[29] & 2147483647_u32) >> 29) |
      ((values[30] & 2147483647_u32) << 2)).to_u32
    bytes[30] = (((values[30] & 2147483647_u32) >> 30) |
      ((values[31] & 2147483647_u32) << 1)).to_u32
    bytes
  end

  def self.unpack31(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 2147483647_u32)).to_i32
    values[1] = (((bytes[0] >> 31) & 2147483647_u32) | ((bytes[1] & 1073741823_u32) << 1)).to_i32
    values[2] = (((bytes[1] >> 30) & 2147483647_u32) | ((bytes[2] & 536870911_u32) << 2)).to_i32
    values[3] = (((bytes[2] >> 29) & 2147483647_u32) | ((bytes[3] & 268435455_u32) << 3)).to_i32
    values[4] = (((bytes[3] >> 28) & 2147483647_u32) | ((bytes[4] & 134217727_u32) << 4)).to_i32
    values[5] = (((bytes[4] >> 27) & 2147483647_u32) | ((bytes[5] & 67108863_u32) << 5)).to_i32
    values[6] = (((bytes[5] >> 26) & 2147483647_u32) | ((bytes[6] & 33554431_u32) << 6)).to_i32
    values[7] = (((bytes[6] >> 25) & 2147483647_u32) | ((bytes[7] & 16777215_u32) << 7)).to_i32
    values[8] = (((bytes[7] >> 24) & 2147483647_u32) | ((bytes[8] & 8388607_u32) << 8)).to_i32
    values[9] = (((bytes[8] >> 23) & 2147483647_u32) | ((bytes[9] & 4194303_u32) << 9)).to_i32
    values[10] = (((bytes[9] >> 22) & 2147483647_u32) | ((bytes[10] & 2097151_u32) << 10)).to_i32
    values[11] = (((bytes[10] >> 21) & 2147483647_u32) | ((bytes[11] & 1048575_u32) << 11)).to_i32
    values[12] = (((bytes[11] >> 20) & 2147483647_u32) | ((bytes[12] & 524287_u32) << 12)).to_i32
    values[13] = (((bytes[12] >> 19) & 2147483647_u32) | ((bytes[13] & 262143_u32) << 13)).to_i32
    values[14] = (((bytes[13] >> 18) & 2147483647_u32) | ((bytes[14] & 131071_u32) << 14)).to_i32
    values[15] = (((bytes[14] >> 17) & 2147483647_u32) | ((bytes[15] & 65535_u32) << 15)).to_i32
    values[16] = (((bytes[15] >> 16) & 2147483647_u32) | ((bytes[16] & 32767_u32) << 16)).to_i32
    values[17] = (((bytes[16] >> 15) & 2147483647_u32) | ((bytes[17] & 16383_u32) << 17)).to_i32
    values[18] = (((bytes[17] >> 14) & 2147483647_u32) | ((bytes[18] & 8191_u32) << 18)).to_i32
    values[19] = (((bytes[18] >> 13) & 2147483647_u32) | ((bytes[19] & 4095_u32) << 19)).to_i32
    values[20] = (((bytes[19] >> 12) & 2147483647_u32) | ((bytes[20] & 2047_u32) << 20)).to_i32
    values[21] = (((bytes[20] >> 11) & 2147483647_u32) | ((bytes[21] & 1023_u32) << 21)).to_i32
    values[22] = (((bytes[21] >> 10) & 2147483647_u32) | ((bytes[22] & 511_u32) << 22)).to_i32
    values[23] = (((bytes[22] >> 9) & 2147483647_u32) | ((bytes[23] & 255_u32) << 23)).to_i32
    values[24] = (((bytes[23] >> 8) & 2147483647_u32) | ((bytes[24] & 127_u32) << 24)).to_i32
    values[25] = (((bytes[24] >> 7) & 2147483647_u32) | ((bytes[25] & 63_u32) << 25)).to_i32
    values[26] = (((bytes[25] >> 6) & 2147483647_u32) | ((bytes[26] & 31_u32) << 26)).to_i32
    values[27] = (((bytes[26] >> 5) & 2147483647_u32) | ((bytes[27] & 15_u32) << 27)).to_i32
    values[28] = (((bytes[27] >> 4) & 2147483647_u32) | ((bytes[28] & 7_u32) << 28)).to_i32
    values[29] = (((bytes[28] >> 3) & 2147483647_u32) | ((bytes[29] & 3_u32) << 29)).to_i32
    values[30] = (((bytes[29] >> 2) & 2147483647_u32) | ((bytes[30] & 1_u32) << 30)).to_i32
    values[31] = (((bytes[30] >> 1) & 2147483647_u32)).to_i32
    values
  end

  def self.pack32(values)
    bytes = Slice(UInt32).new(32, 0_u32)
    bytes[0] = (((values[0] & 4294967295_u32) << 0)).to_u32
    bytes[1] = (((values[1] & 4294967295_u32) << 0)).to_u32
    bytes[2] = (((values[2] & 4294967295_u32) << 0)).to_u32
    bytes[3] = (((values[3] & 4294967295_u32) << 0)).to_u32
    bytes[4] = (((values[4] & 4294967295_u32) << 0)).to_u32
    bytes[5] = (((values[5] & 4294967295_u32) << 0)).to_u32
    bytes[6] = (((values[6] & 4294967295_u32) << 0)).to_u32
    bytes[7] = (((values[7] & 4294967295_u32) << 0)).to_u32
    bytes[8] = (((values[8] & 4294967295_u32) << 0)).to_u32
    bytes[9] = (((values[9] & 4294967295_u32) << 0)).to_u32
    bytes[10] = (((values[10] & 4294967295_u32) << 0)).to_u32
    bytes[11] = (((values[11] & 4294967295_u32) << 0)).to_u32
    bytes[12] = (((values[12] & 4294967295_u32) << 0)).to_u32
    bytes[13] = (((values[13] & 4294967295_u32) << 0)).to_u32
    bytes[14] = (((values[14] & 4294967295_u32) << 0)).to_u32
    bytes[15] = (((values[15] & 4294967295_u32) << 0)).to_u32
    bytes[16] = (((values[16] & 4294967295_u32) << 0)).to_u32
    bytes[17] = (((values[17] & 4294967295_u32) << 0)).to_u32
    bytes[18] = (((values[18] & 4294967295_u32) << 0)).to_u32
    bytes[19] = (((values[19] & 4294967295_u32) << 0)).to_u32
    bytes[20] = (((values[20] & 4294967295_u32) << 0)).to_u32
    bytes[21] = (((values[21] & 4294967295_u32) << 0)).to_u32
    bytes[22] = (((values[22] & 4294967295_u32) << 0)).to_u32
    bytes[23] = (((values[23] & 4294967295_u32) << 0)).to_u32
    bytes[24] = (((values[24] & 4294967295_u32) << 0)).to_u32
    bytes[25] = (((values[25] & 4294967295_u32) << 0)).to_u32
    bytes[26] = (((values[26] & 4294967295_u32) << 0)).to_u32
    bytes[27] = (((values[27] & 4294967295_u32) << 0)).to_u32
    bytes[28] = (((values[28] & 4294967295_u32) << 0)).to_u32
    bytes[29] = (((values[29] & 4294967295_u32) << 0)).to_u32
    bytes[30] = (((values[30] & 4294967295_u32) << 0)).to_u32
    bytes[31] = (((values[31] & 4294967295_u32) << 0)).to_u32
    bytes
  end

  def self.unpack32(bytes)
    values = Slice(Int32).new(32)
    values[0] = (((bytes[0] >> 0) & 4294967295_u32)).to_i32
    values[1] = (((bytes[1] >> 0) & 4294967295_u32)).to_i32
    values[2] = (((bytes[2] >> 0) & 4294967295_u32)).to_i32
    values[3] = (((bytes[3] >> 0) & 4294967295_u32)).to_i32
    values[4] = (((bytes[4] >> 0) & 4294967295_u32)).to_i32
    values[5] = (((bytes[5] >> 0) & 4294967295_u32)).to_i32
    values[6] = (((bytes[6] >> 0) & 4294967295_u32)).to_i32
    values[7] = (((bytes[7] >> 0) & 4294967295_u32)).to_i32
    values[8] = (((bytes[8] >> 0) & 4294967295_u32)).to_i32
    values[9] = (((bytes[9] >> 0) & 4294967295_u32)).to_i32
    values[10] = (((bytes[10] >> 0) & 4294967295_u32)).to_i32
    values[11] = (((bytes[11] >> 0) & 4294967295_u32)).to_i32
    values[12] = (((bytes[12] >> 0) & 4294967295_u32)).to_i32
    values[13] = (((bytes[13] >> 0) & 4294967295_u32)).to_i32
    values[14] = (((bytes[14] >> 0) & 4294967295_u32)).to_i32
    values[15] = (((bytes[15] >> 0) & 4294967295_u32)).to_i32
    values[16] = (((bytes[16] >> 0) & 4294967295_u32)).to_i32
    values[17] = (((bytes[17] >> 0) & 4294967295_u32)).to_i32
    values[18] = (((bytes[18] >> 0) & 4294967295_u32)).to_i32
    values[19] = (((bytes[19] >> 0) & 4294967295_u32)).to_i32
    values[20] = (((bytes[20] >> 0) & 4294967295_u32)).to_i32
    values[21] = (((bytes[21] >> 0) & 4294967295_u32)).to_i32
    values[22] = (((bytes[22] >> 0) & 4294967295_u32)).to_i32
    values[23] = (((bytes[23] >> 0) & 4294967295_u32)).to_i32
    values[24] = (((bytes[24] >> 0) & 4294967295_u32)).to_i32
    values[25] = (((bytes[25] >> 0) & 4294967295_u32)).to_i32
    values[26] = (((bytes[26] >> 0) & 4294967295_u32)).to_i32
    values[27] = (((bytes[27] >> 0) & 4294967295_u32)).to_i32
    values[28] = (((bytes[28] >> 0) & 4294967295_u32)).to_i32
    values[29] = (((bytes[29] >> 0) & 4294967295_u32)).to_i32
    values[30] = (((bytes[30] >> 0) & 4294967295_u32)).to_i32
    values[31] = (((bytes[31] >> 0) & 4294967295_u32)).to_i32
    values
  end
end
