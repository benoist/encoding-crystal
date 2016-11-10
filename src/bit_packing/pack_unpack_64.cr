module BitPacking64
  def self.pack1(values)
    bytes = Slice(UInt64).new(1, 0_u64)
    bytes[0] = (((values[0] & 1_u64) << 0) |
                ((values[1] & 1_u64) << 1) |
                ((values[2] & 1_u64) << 2) |
                ((values[3] & 1_u64) << 3) |
                ((values[4] & 1_u64) << 4) |
                ((values[5] & 1_u64) << 5) |
                ((values[6] & 1_u64) << 6) |
                ((values[7] & 1_u64) << 7) |
                ((values[8] & 1_u64) << 8) |
                ((values[9] & 1_u64) << 9) |
                ((values[10] & 1_u64) << 10) |
                ((values[11] & 1_u64) << 11) |
                ((values[12] & 1_u64) << 12) |
                ((values[13] & 1_u64) << 13) |
                ((values[14] & 1_u64) << 14) |
                ((values[15] & 1_u64) << 15) |
                ((values[16] & 1_u64) << 16) |
                ((values[17] & 1_u64) << 17) |
                ((values[18] & 1_u64) << 18) |
                ((values[19] & 1_u64) << 19) |
                ((values[20] & 1_u64) << 20) |
                ((values[21] & 1_u64) << 21) |
                ((values[22] & 1_u64) << 22) |
                ((values[23] & 1_u64) << 23) |
                ((values[24] & 1_u64) << 24) |
                ((values[25] & 1_u64) << 25) |
                ((values[26] & 1_u64) << 26) |
                ((values[27] & 1_u64) << 27) |
                ((values[28] & 1_u64) << 28) |
                ((values[29] & 1_u64) << 29) |
                ((values[30] & 1_u64) << 30) |
                ((values[31] & 1_u64) << 31) |
                ((values[32] & 1_u64) << 32) |
                ((values[33] & 1_u64) << 33) |
                ((values[34] & 1_u64) << 34) |
                ((values[35] & 1_u64) << 35) |
                ((values[36] & 1_u64) << 36) |
                ((values[37] & 1_u64) << 37) |
                ((values[38] & 1_u64) << 38) |
                ((values[39] & 1_u64) << 39) |
                ((values[40] & 1_u64) << 40) |
                ((values[41] & 1_u64) << 41) |
                ((values[42] & 1_u64) << 42) |
                ((values[43] & 1_u64) << 43) |
                ((values[44] & 1_u64) << 44) |
                ((values[45] & 1_u64) << 45) |
                ((values[46] & 1_u64) << 46) |
                ((values[47] & 1_u64) << 47) |
                ((values[48] & 1_u64) << 48) |
                ((values[49] & 1_u64) << 49) |
                ((values[50] & 1_u64) << 50) |
                ((values[51] & 1_u64) << 51) |
                ((values[52] & 1_u64) << 52) |
                ((values[53] & 1_u64) << 53) |
                ((values[54] & 1_u64) << 54) |
                ((values[55] & 1_u64) << 55) |
                ((values[56] & 1_u64) << 56) |
                ((values[57] & 1_u64) << 57) |
                ((values[58] & 1_u64) << 58) |
                ((values[59] & 1_u64) << 59) |
                ((values[60] & 1_u64) << 60) |
                ((values[61] & 1_u64) << 61) |
                ((values[62] & 1_u64) << 62) |
                ((values[63] & 1_u64) << 63)).to_u64
    bytes
  end

  def self.unpack1(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1_u64)).to_i64
    values[1] = (((bytes[0] >> 1) & 1_u64)).to_i64
    values[2] = (((bytes[0] >> 2) & 1_u64)).to_i64
    values[3] = (((bytes[0] >> 3) & 1_u64)).to_i64
    values[4] = (((bytes[0] >> 4) & 1_u64)).to_i64
    values[5] = (((bytes[0] >> 5) & 1_u64)).to_i64
    values[6] = (((bytes[0] >> 6) & 1_u64)).to_i64
    values[7] = (((bytes[0] >> 7) & 1_u64)).to_i64
    values[8] = (((bytes[0] >> 8) & 1_u64)).to_i64
    values[9] = (((bytes[0] >> 9) & 1_u64)).to_i64
    values[10] = (((bytes[0] >> 10) & 1_u64)).to_i64
    values[11] = (((bytes[0] >> 11) & 1_u64)).to_i64
    values[12] = (((bytes[0] >> 12) & 1_u64)).to_i64
    values[13] = (((bytes[0] >> 13) & 1_u64)).to_i64
    values[14] = (((bytes[0] >> 14) & 1_u64)).to_i64
    values[15] = (((bytes[0] >> 15) & 1_u64)).to_i64
    values[16] = (((bytes[0] >> 16) & 1_u64)).to_i64
    values[17] = (((bytes[0] >> 17) & 1_u64)).to_i64
    values[18] = (((bytes[0] >> 18) & 1_u64)).to_i64
    values[19] = (((bytes[0] >> 19) & 1_u64)).to_i64
    values[20] = (((bytes[0] >> 20) & 1_u64)).to_i64
    values[21] = (((bytes[0] >> 21) & 1_u64)).to_i64
    values[22] = (((bytes[0] >> 22) & 1_u64)).to_i64
    values[23] = (((bytes[0] >> 23) & 1_u64)).to_i64
    values[24] = (((bytes[0] >> 24) & 1_u64)).to_i64
    values[25] = (((bytes[0] >> 25) & 1_u64)).to_i64
    values[26] = (((bytes[0] >> 26) & 1_u64)).to_i64
    values[27] = (((bytes[0] >> 27) & 1_u64)).to_i64
    values[28] = (((bytes[0] >> 28) & 1_u64)).to_i64
    values[29] = (((bytes[0] >> 29) & 1_u64)).to_i64
    values[30] = (((bytes[0] >> 30) & 1_u64)).to_i64
    values[31] = (((bytes[0] >> 31) & 1_u64)).to_i64
    values[32] = (((bytes[0] >> 32) & 1_u64)).to_i64
    values[33] = (((bytes[0] >> 33) & 1_u64)).to_i64
    values[34] = (((bytes[0] >> 34) & 1_u64)).to_i64
    values[35] = (((bytes[0] >> 35) & 1_u64)).to_i64
    values[36] = (((bytes[0] >> 36) & 1_u64)).to_i64
    values[37] = (((bytes[0] >> 37) & 1_u64)).to_i64
    values[38] = (((bytes[0] >> 38) & 1_u64)).to_i64
    values[39] = (((bytes[0] >> 39) & 1_u64)).to_i64
    values[40] = (((bytes[0] >> 40) & 1_u64)).to_i64
    values[41] = (((bytes[0] >> 41) & 1_u64)).to_i64
    values[42] = (((bytes[0] >> 42) & 1_u64)).to_i64
    values[43] = (((bytes[0] >> 43) & 1_u64)).to_i64
    values[44] = (((bytes[0] >> 44) & 1_u64)).to_i64
    values[45] = (((bytes[0] >> 45) & 1_u64)).to_i64
    values[46] = (((bytes[0] >> 46) & 1_u64)).to_i64
    values[47] = (((bytes[0] >> 47) & 1_u64)).to_i64
    values[48] = (((bytes[0] >> 48) & 1_u64)).to_i64
    values[49] = (((bytes[0] >> 49) & 1_u64)).to_i64
    values[50] = (((bytes[0] >> 50) & 1_u64)).to_i64
    values[51] = (((bytes[0] >> 51) & 1_u64)).to_i64
    values[52] = (((bytes[0] >> 52) & 1_u64)).to_i64
    values[53] = (((bytes[0] >> 53) & 1_u64)).to_i64
    values[54] = (((bytes[0] >> 54) & 1_u64)).to_i64
    values[55] = (((bytes[0] >> 55) & 1_u64)).to_i64
    values[56] = (((bytes[0] >> 56) & 1_u64)).to_i64
    values[57] = (((bytes[0] >> 57) & 1_u64)).to_i64
    values[58] = (((bytes[0] >> 58) & 1_u64)).to_i64
    values[59] = (((bytes[0] >> 59) & 1_u64)).to_i64
    values[60] = (((bytes[0] >> 60) & 1_u64)).to_i64
    values[61] = (((bytes[0] >> 61) & 1_u64)).to_i64
    values[62] = (((bytes[0] >> 62) & 1_u64)).to_i64
    values[63] = (((bytes[0] >> 63) & 1_u64)).to_i64
    values
  end

  def self.pack2(values)
    bytes = Slice(UInt64).new(2, 0_u64)
    bytes[0] = (((values[0] & 3_u64) << 0) |
                ((values[1] & 3_u64) << 2) |
                ((values[2] & 3_u64) << 4) |
                ((values[3] & 3_u64) << 6) |
                ((values[4] & 3_u64) << 8) |
                ((values[5] & 3_u64) << 10) |
                ((values[6] & 3_u64) << 12) |
                ((values[7] & 3_u64) << 14) |
                ((values[8] & 3_u64) << 16) |
                ((values[9] & 3_u64) << 18) |
                ((values[10] & 3_u64) << 20) |
                ((values[11] & 3_u64) << 22) |
                ((values[12] & 3_u64) << 24) |
                ((values[13] & 3_u64) << 26) |
                ((values[14] & 3_u64) << 28) |
                ((values[15] & 3_u64) << 30) |
                ((values[16] & 3_u64) << 32) |
                ((values[17] & 3_u64) << 34) |
                ((values[18] & 3_u64) << 36) |
                ((values[19] & 3_u64) << 38) |
                ((values[20] & 3_u64) << 40) |
                ((values[21] & 3_u64) << 42) |
                ((values[22] & 3_u64) << 44) |
                ((values[23] & 3_u64) << 46) |
                ((values[24] & 3_u64) << 48) |
                ((values[25] & 3_u64) << 50) |
                ((values[26] & 3_u64) << 52) |
                ((values[27] & 3_u64) << 54) |
                ((values[28] & 3_u64) << 56) |
                ((values[29] & 3_u64) << 58) |
                ((values[30] & 3_u64) << 60) |
                ((values[31] & 3_u64) << 62)).to_u64
    bytes[1] = (((values[32] & 3_u64) << 0) |
                ((values[33] & 3_u64) << 2) |
                ((values[34] & 3_u64) << 4) |
                ((values[35] & 3_u64) << 6) |
                ((values[36] & 3_u64) << 8) |
                ((values[37] & 3_u64) << 10) |
                ((values[38] & 3_u64) << 12) |
                ((values[39] & 3_u64) << 14) |
                ((values[40] & 3_u64) << 16) |
                ((values[41] & 3_u64) << 18) |
                ((values[42] & 3_u64) << 20) |
                ((values[43] & 3_u64) << 22) |
                ((values[44] & 3_u64) << 24) |
                ((values[45] & 3_u64) << 26) |
                ((values[46] & 3_u64) << 28) |
                ((values[47] & 3_u64) << 30) |
                ((values[48] & 3_u64) << 32) |
                ((values[49] & 3_u64) << 34) |
                ((values[50] & 3_u64) << 36) |
                ((values[51] & 3_u64) << 38) |
                ((values[52] & 3_u64) << 40) |
                ((values[53] & 3_u64) << 42) |
                ((values[54] & 3_u64) << 44) |
                ((values[55] & 3_u64) << 46) |
                ((values[56] & 3_u64) << 48) |
                ((values[57] & 3_u64) << 50) |
                ((values[58] & 3_u64) << 52) |
                ((values[59] & 3_u64) << 54) |
                ((values[60] & 3_u64) << 56) |
                ((values[61] & 3_u64) << 58) |
                ((values[62] & 3_u64) << 60) |
                ((values[63] & 3_u64) << 62)).to_u64
    bytes
  end

  def self.unpack2(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 3_u64)).to_i64
    values[1] = (((bytes[0] >> 2) & 3_u64)).to_i64
    values[2] = (((bytes[0] >> 4) & 3_u64)).to_i64
    values[3] = (((bytes[0] >> 6) & 3_u64)).to_i64
    values[4] = (((bytes[0] >> 8) & 3_u64)).to_i64
    values[5] = (((bytes[0] >> 10) & 3_u64)).to_i64
    values[6] = (((bytes[0] >> 12) & 3_u64)).to_i64
    values[7] = (((bytes[0] >> 14) & 3_u64)).to_i64
    values[8] = (((bytes[0] >> 16) & 3_u64)).to_i64
    values[9] = (((bytes[0] >> 18) & 3_u64)).to_i64
    values[10] = (((bytes[0] >> 20) & 3_u64)).to_i64
    values[11] = (((bytes[0] >> 22) & 3_u64)).to_i64
    values[12] = (((bytes[0] >> 24) & 3_u64)).to_i64
    values[13] = (((bytes[0] >> 26) & 3_u64)).to_i64
    values[14] = (((bytes[0] >> 28) & 3_u64)).to_i64
    values[15] = (((bytes[0] >> 30) & 3_u64)).to_i64
    values[16] = (((bytes[0] >> 32) & 3_u64)).to_i64
    values[17] = (((bytes[0] >> 34) & 3_u64)).to_i64
    values[18] = (((bytes[0] >> 36) & 3_u64)).to_i64
    values[19] = (((bytes[0] >> 38) & 3_u64)).to_i64
    values[20] = (((bytes[0] >> 40) & 3_u64)).to_i64
    values[21] = (((bytes[0] >> 42) & 3_u64)).to_i64
    values[22] = (((bytes[0] >> 44) & 3_u64)).to_i64
    values[23] = (((bytes[0] >> 46) & 3_u64)).to_i64
    values[24] = (((bytes[0] >> 48) & 3_u64)).to_i64
    values[25] = (((bytes[0] >> 50) & 3_u64)).to_i64
    values[26] = (((bytes[0] >> 52) & 3_u64)).to_i64
    values[27] = (((bytes[0] >> 54) & 3_u64)).to_i64
    values[28] = (((bytes[0] >> 56) & 3_u64)).to_i64
    values[29] = (((bytes[0] >> 58) & 3_u64)).to_i64
    values[30] = (((bytes[0] >> 60) & 3_u64)).to_i64
    values[31] = (((bytes[0] >> 62) & 3_u64)).to_i64
    values[32] = (((bytes[1] >> 0) & 3_u64)).to_i64
    values[33] = (((bytes[1] >> 2) & 3_u64)).to_i64
    values[34] = (((bytes[1] >> 4) & 3_u64)).to_i64
    values[35] = (((bytes[1] >> 6) & 3_u64)).to_i64
    values[36] = (((bytes[1] >> 8) & 3_u64)).to_i64
    values[37] = (((bytes[1] >> 10) & 3_u64)).to_i64
    values[38] = (((bytes[1] >> 12) & 3_u64)).to_i64
    values[39] = (((bytes[1] >> 14) & 3_u64)).to_i64
    values[40] = (((bytes[1] >> 16) & 3_u64)).to_i64
    values[41] = (((bytes[1] >> 18) & 3_u64)).to_i64
    values[42] = (((bytes[1] >> 20) & 3_u64)).to_i64
    values[43] = (((bytes[1] >> 22) & 3_u64)).to_i64
    values[44] = (((bytes[1] >> 24) & 3_u64)).to_i64
    values[45] = (((bytes[1] >> 26) & 3_u64)).to_i64
    values[46] = (((bytes[1] >> 28) & 3_u64)).to_i64
    values[47] = (((bytes[1] >> 30) & 3_u64)).to_i64
    values[48] = (((bytes[1] >> 32) & 3_u64)).to_i64
    values[49] = (((bytes[1] >> 34) & 3_u64)).to_i64
    values[50] = (((bytes[1] >> 36) & 3_u64)).to_i64
    values[51] = (((bytes[1] >> 38) & 3_u64)).to_i64
    values[52] = (((bytes[1] >> 40) & 3_u64)).to_i64
    values[53] = (((bytes[1] >> 42) & 3_u64)).to_i64
    values[54] = (((bytes[1] >> 44) & 3_u64)).to_i64
    values[55] = (((bytes[1] >> 46) & 3_u64)).to_i64
    values[56] = (((bytes[1] >> 48) & 3_u64)).to_i64
    values[57] = (((bytes[1] >> 50) & 3_u64)).to_i64
    values[58] = (((bytes[1] >> 52) & 3_u64)).to_i64
    values[59] = (((bytes[1] >> 54) & 3_u64)).to_i64
    values[60] = (((bytes[1] >> 56) & 3_u64)).to_i64
    values[61] = (((bytes[1] >> 58) & 3_u64)).to_i64
    values[62] = (((bytes[1] >> 60) & 3_u64)).to_i64
    values[63] = (((bytes[1] >> 62) & 3_u64)).to_i64
    values
  end

  def self.pack3(values)
    bytes = Slice(UInt64).new(3, 0_u64)
    bytes[0] = (((values[0] & 7_u64) << 0) |
                ((values[1] & 7_u64) << 3) |
                ((values[2] & 7_u64) << 6) |
                ((values[3] & 7_u64) << 9) |
                ((values[4] & 7_u64) << 12) |
                ((values[5] & 7_u64) << 15) |
                ((values[6] & 7_u64) << 18) |
                ((values[7] & 7_u64) << 21) |
                ((values[8] & 7_u64) << 24) |
                ((values[9] & 7_u64) << 27) |
                ((values[10] & 7_u64) << 30) |
                ((values[11] & 7_u64) << 33) |
                ((values[12] & 7_u64) << 36) |
                ((values[13] & 7_u64) << 39) |
                ((values[14] & 7_u64) << 42) |
                ((values[15] & 7_u64) << 45) |
                ((values[16] & 7_u64) << 48) |
                ((values[17] & 7_u64) << 51) |
                ((values[18] & 7_u64) << 54) |
                ((values[19] & 7_u64) << 57) |
                ((values[20] & 7_u64) << 60) |
                ((values[21] & 7_u64) << 63)).to_u64
    bytes[1] = (((values[21] & 7_u64) >> 1) |
                ((values[22] & 7_u64) << 2) |
                ((values[23] & 7_u64) << 5) |
                ((values[24] & 7_u64) << 8) |
                ((values[25] & 7_u64) << 11) |
                ((values[26] & 7_u64) << 14) |
                ((values[27] & 7_u64) << 17) |
                ((values[28] & 7_u64) << 20) |
                ((values[29] & 7_u64) << 23) |
                ((values[30] & 7_u64) << 26) |
                ((values[31] & 7_u64) << 29) |
                ((values[32] & 7_u64) << 32) |
                ((values[33] & 7_u64) << 35) |
                ((values[34] & 7_u64) << 38) |
                ((values[35] & 7_u64) << 41) |
                ((values[36] & 7_u64) << 44) |
                ((values[37] & 7_u64) << 47) |
                ((values[38] & 7_u64) << 50) |
                ((values[39] & 7_u64) << 53) |
                ((values[40] & 7_u64) << 56) |
                ((values[41] & 7_u64) << 59) |
                ((values[42] & 7_u64) << 62)).to_u64
    bytes[2] = (((values[42] & 7_u64) >> 2) |
                ((values[43] & 7_u64) << 1) |
                ((values[44] & 7_u64) << 4) |
                ((values[45] & 7_u64) << 7) |
                ((values[46] & 7_u64) << 10) |
                ((values[47] & 7_u64) << 13) |
                ((values[48] & 7_u64) << 16) |
                ((values[49] & 7_u64) << 19) |
                ((values[50] & 7_u64) << 22) |
                ((values[51] & 7_u64) << 25) |
                ((values[52] & 7_u64) << 28) |
                ((values[53] & 7_u64) << 31) |
                ((values[54] & 7_u64) << 34) |
                ((values[55] & 7_u64) << 37) |
                ((values[56] & 7_u64) << 40) |
                ((values[57] & 7_u64) << 43) |
                ((values[58] & 7_u64) << 46) |
                ((values[59] & 7_u64) << 49) |
                ((values[60] & 7_u64) << 52) |
                ((values[61] & 7_u64) << 55) |
                ((values[62] & 7_u64) << 58) |
                ((values[63] & 7_u64) << 61)).to_u64
    bytes
  end

  def self.unpack3(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 7_u64)).to_i64
    values[1] = (((bytes[0] >> 3) & 7_u64)).to_i64
    values[2] = (((bytes[0] >> 6) & 7_u64)).to_i64
    values[3] = (((bytes[0] >> 9) & 7_u64)).to_i64
    values[4] = (((bytes[0] >> 12) & 7_u64)).to_i64
    values[5] = (((bytes[0] >> 15) & 7_u64)).to_i64
    values[6] = (((bytes[0] >> 18) & 7_u64)).to_i64
    values[7] = (((bytes[0] >> 21) & 7_u64)).to_i64
    values[8] = (((bytes[0] >> 24) & 7_u64)).to_i64
    values[9] = (((bytes[0] >> 27) & 7_u64)).to_i64
    values[10] = (((bytes[0] >> 30) & 7_u64)).to_i64
    values[11] = (((bytes[0] >> 33) & 7_u64)).to_i64
    values[12] = (((bytes[0] >> 36) & 7_u64)).to_i64
    values[13] = (((bytes[0] >> 39) & 7_u64)).to_i64
    values[14] = (((bytes[0] >> 42) & 7_u64)).to_i64
    values[15] = (((bytes[0] >> 45) & 7_u64)).to_i64
    values[16] = (((bytes[0] >> 48) & 7_u64)).to_i64
    values[17] = (((bytes[0] >> 51) & 7_u64)).to_i64
    values[18] = (((bytes[0] >> 54) & 7_u64)).to_i64
    values[19] = (((bytes[0] >> 57) & 7_u64)).to_i64
    values[20] = (((bytes[0] >> 60) & 7_u64)).to_i64
    values[21] = (((bytes[0] >> 63) & 7_u64) | ((bytes[1] & 3_u64) << 1)).to_i64
    values[22] = (((bytes[1] >> 2) & 7_u64)).to_i64
    values[23] = (((bytes[1] >> 5) & 7_u64)).to_i64
    values[24] = (((bytes[1] >> 8) & 7_u64)).to_i64
    values[25] = (((bytes[1] >> 11) & 7_u64)).to_i64
    values[26] = (((bytes[1] >> 14) & 7_u64)).to_i64
    values[27] = (((bytes[1] >> 17) & 7_u64)).to_i64
    values[28] = (((bytes[1] >> 20) & 7_u64)).to_i64
    values[29] = (((bytes[1] >> 23) & 7_u64)).to_i64
    values[30] = (((bytes[1] >> 26) & 7_u64)).to_i64
    values[31] = (((bytes[1] >> 29) & 7_u64)).to_i64
    values[32] = (((bytes[1] >> 32) & 7_u64)).to_i64
    values[33] = (((bytes[1] >> 35) & 7_u64)).to_i64
    values[34] = (((bytes[1] >> 38) & 7_u64)).to_i64
    values[35] = (((bytes[1] >> 41) & 7_u64)).to_i64
    values[36] = (((bytes[1] >> 44) & 7_u64)).to_i64
    values[37] = (((bytes[1] >> 47) & 7_u64)).to_i64
    values[38] = (((bytes[1] >> 50) & 7_u64)).to_i64
    values[39] = (((bytes[1] >> 53) & 7_u64)).to_i64
    values[40] = (((bytes[1] >> 56) & 7_u64)).to_i64
    values[41] = (((bytes[1] >> 59) & 7_u64)).to_i64
    values[42] = (((bytes[1] >> 62) & 7_u64) | ((bytes[2] & 1_u64) << 2)).to_i64
    values[43] = (((bytes[2] >> 1) & 7_u64)).to_i64
    values[44] = (((bytes[2] >> 4) & 7_u64)).to_i64
    values[45] = (((bytes[2] >> 7) & 7_u64)).to_i64
    values[46] = (((bytes[2] >> 10) & 7_u64)).to_i64
    values[47] = (((bytes[2] >> 13) & 7_u64)).to_i64
    values[48] = (((bytes[2] >> 16) & 7_u64)).to_i64
    values[49] = (((bytes[2] >> 19) & 7_u64)).to_i64
    values[50] = (((bytes[2] >> 22) & 7_u64)).to_i64
    values[51] = (((bytes[2] >> 25) & 7_u64)).to_i64
    values[52] = (((bytes[2] >> 28) & 7_u64)).to_i64
    values[53] = (((bytes[2] >> 31) & 7_u64)).to_i64
    values[54] = (((bytes[2] >> 34) & 7_u64)).to_i64
    values[55] = (((bytes[2] >> 37) & 7_u64)).to_i64
    values[56] = (((bytes[2] >> 40) & 7_u64)).to_i64
    values[57] = (((bytes[2] >> 43) & 7_u64)).to_i64
    values[58] = (((bytes[2] >> 46) & 7_u64)).to_i64
    values[59] = (((bytes[2] >> 49) & 7_u64)).to_i64
    values[60] = (((bytes[2] >> 52) & 7_u64)).to_i64
    values[61] = (((bytes[2] >> 55) & 7_u64)).to_i64
    values[62] = (((bytes[2] >> 58) & 7_u64)).to_i64
    values[63] = (((bytes[2] >> 61) & 7_u64)).to_i64
    values
  end

  def self.pack4(values)
    bytes = Slice(UInt64).new(4, 0_u64)
    bytes[0] = (((values[0] & 15_u64) << 0) |
                ((values[1] & 15_u64) << 4) |
                ((values[2] & 15_u64) << 8) |
                ((values[3] & 15_u64) << 12) |
                ((values[4] & 15_u64) << 16) |
                ((values[5] & 15_u64) << 20) |
                ((values[6] & 15_u64) << 24) |
                ((values[7] & 15_u64) << 28) |
                ((values[8] & 15_u64) << 32) |
                ((values[9] & 15_u64) << 36) |
                ((values[10] & 15_u64) << 40) |
                ((values[11] & 15_u64) << 44) |
                ((values[12] & 15_u64) << 48) |
                ((values[13] & 15_u64) << 52) |
                ((values[14] & 15_u64) << 56) |
                ((values[15] & 15_u64) << 60)).to_u64
    bytes[1] = (((values[16] & 15_u64) << 0) |
                ((values[17] & 15_u64) << 4) |
                ((values[18] & 15_u64) << 8) |
                ((values[19] & 15_u64) << 12) |
                ((values[20] & 15_u64) << 16) |
                ((values[21] & 15_u64) << 20) |
                ((values[22] & 15_u64) << 24) |
                ((values[23] & 15_u64) << 28) |
                ((values[24] & 15_u64) << 32) |
                ((values[25] & 15_u64) << 36) |
                ((values[26] & 15_u64) << 40) |
                ((values[27] & 15_u64) << 44) |
                ((values[28] & 15_u64) << 48) |
                ((values[29] & 15_u64) << 52) |
                ((values[30] & 15_u64) << 56) |
                ((values[31] & 15_u64) << 60)).to_u64
    bytes[2] = (((values[32] & 15_u64) << 0) |
                ((values[33] & 15_u64) << 4) |
                ((values[34] & 15_u64) << 8) |
                ((values[35] & 15_u64) << 12) |
                ((values[36] & 15_u64) << 16) |
                ((values[37] & 15_u64) << 20) |
                ((values[38] & 15_u64) << 24) |
                ((values[39] & 15_u64) << 28) |
                ((values[40] & 15_u64) << 32) |
                ((values[41] & 15_u64) << 36) |
                ((values[42] & 15_u64) << 40) |
                ((values[43] & 15_u64) << 44) |
                ((values[44] & 15_u64) << 48) |
                ((values[45] & 15_u64) << 52) |
                ((values[46] & 15_u64) << 56) |
                ((values[47] & 15_u64) << 60)).to_u64
    bytes[3] = (((values[48] & 15_u64) << 0) |
                ((values[49] & 15_u64) << 4) |
                ((values[50] & 15_u64) << 8) |
                ((values[51] & 15_u64) << 12) |
                ((values[52] & 15_u64) << 16) |
                ((values[53] & 15_u64) << 20) |
                ((values[54] & 15_u64) << 24) |
                ((values[55] & 15_u64) << 28) |
                ((values[56] & 15_u64) << 32) |
                ((values[57] & 15_u64) << 36) |
                ((values[58] & 15_u64) << 40) |
                ((values[59] & 15_u64) << 44) |
                ((values[60] & 15_u64) << 48) |
                ((values[61] & 15_u64) << 52) |
                ((values[62] & 15_u64) << 56) |
                ((values[63] & 15_u64) << 60)).to_u64
    bytes
  end

  def self.unpack4(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 15_u64)).to_i64
    values[1] = (((bytes[0] >> 4) & 15_u64)).to_i64
    values[2] = (((bytes[0] >> 8) & 15_u64)).to_i64
    values[3] = (((bytes[0] >> 12) & 15_u64)).to_i64
    values[4] = (((bytes[0] >> 16) & 15_u64)).to_i64
    values[5] = (((bytes[0] >> 20) & 15_u64)).to_i64
    values[6] = (((bytes[0] >> 24) & 15_u64)).to_i64
    values[7] = (((bytes[0] >> 28) & 15_u64)).to_i64
    values[8] = (((bytes[0] >> 32) & 15_u64)).to_i64
    values[9] = (((bytes[0] >> 36) & 15_u64)).to_i64
    values[10] = (((bytes[0] >> 40) & 15_u64)).to_i64
    values[11] = (((bytes[0] >> 44) & 15_u64)).to_i64
    values[12] = (((bytes[0] >> 48) & 15_u64)).to_i64
    values[13] = (((bytes[0] >> 52) & 15_u64)).to_i64
    values[14] = (((bytes[0] >> 56) & 15_u64)).to_i64
    values[15] = (((bytes[0] >> 60) & 15_u64)).to_i64
    values[16] = (((bytes[1] >> 0) & 15_u64)).to_i64
    values[17] = (((bytes[1] >> 4) & 15_u64)).to_i64
    values[18] = (((bytes[1] >> 8) & 15_u64)).to_i64
    values[19] = (((bytes[1] >> 12) & 15_u64)).to_i64
    values[20] = (((bytes[1] >> 16) & 15_u64)).to_i64
    values[21] = (((bytes[1] >> 20) & 15_u64)).to_i64
    values[22] = (((bytes[1] >> 24) & 15_u64)).to_i64
    values[23] = (((bytes[1] >> 28) & 15_u64)).to_i64
    values[24] = (((bytes[1] >> 32) & 15_u64)).to_i64
    values[25] = (((bytes[1] >> 36) & 15_u64)).to_i64
    values[26] = (((bytes[1] >> 40) & 15_u64)).to_i64
    values[27] = (((bytes[1] >> 44) & 15_u64)).to_i64
    values[28] = (((bytes[1] >> 48) & 15_u64)).to_i64
    values[29] = (((bytes[1] >> 52) & 15_u64)).to_i64
    values[30] = (((bytes[1] >> 56) & 15_u64)).to_i64
    values[31] = (((bytes[1] >> 60) & 15_u64)).to_i64
    values[32] = (((bytes[2] >> 0) & 15_u64)).to_i64
    values[33] = (((bytes[2] >> 4) & 15_u64)).to_i64
    values[34] = (((bytes[2] >> 8) & 15_u64)).to_i64
    values[35] = (((bytes[2] >> 12) & 15_u64)).to_i64
    values[36] = (((bytes[2] >> 16) & 15_u64)).to_i64
    values[37] = (((bytes[2] >> 20) & 15_u64)).to_i64
    values[38] = (((bytes[2] >> 24) & 15_u64)).to_i64
    values[39] = (((bytes[2] >> 28) & 15_u64)).to_i64
    values[40] = (((bytes[2] >> 32) & 15_u64)).to_i64
    values[41] = (((bytes[2] >> 36) & 15_u64)).to_i64
    values[42] = (((bytes[2] >> 40) & 15_u64)).to_i64
    values[43] = (((bytes[2] >> 44) & 15_u64)).to_i64
    values[44] = (((bytes[2] >> 48) & 15_u64)).to_i64
    values[45] = (((bytes[2] >> 52) & 15_u64)).to_i64
    values[46] = (((bytes[2] >> 56) & 15_u64)).to_i64
    values[47] = (((bytes[2] >> 60) & 15_u64)).to_i64
    values[48] = (((bytes[3] >> 0) & 15_u64)).to_i64
    values[49] = (((bytes[3] >> 4) & 15_u64)).to_i64
    values[50] = (((bytes[3] >> 8) & 15_u64)).to_i64
    values[51] = (((bytes[3] >> 12) & 15_u64)).to_i64
    values[52] = (((bytes[3] >> 16) & 15_u64)).to_i64
    values[53] = (((bytes[3] >> 20) & 15_u64)).to_i64
    values[54] = (((bytes[3] >> 24) & 15_u64)).to_i64
    values[55] = (((bytes[3] >> 28) & 15_u64)).to_i64
    values[56] = (((bytes[3] >> 32) & 15_u64)).to_i64
    values[57] = (((bytes[3] >> 36) & 15_u64)).to_i64
    values[58] = (((bytes[3] >> 40) & 15_u64)).to_i64
    values[59] = (((bytes[3] >> 44) & 15_u64)).to_i64
    values[60] = (((bytes[3] >> 48) & 15_u64)).to_i64
    values[61] = (((bytes[3] >> 52) & 15_u64)).to_i64
    values[62] = (((bytes[3] >> 56) & 15_u64)).to_i64
    values[63] = (((bytes[3] >> 60) & 15_u64)).to_i64
    values
  end

  def self.pack5(values)
    bytes = Slice(UInt64).new(5, 0_u64)
    bytes[0] = (((values[0] & 31_u64) << 0) |
                ((values[1] & 31_u64) << 5) |
                ((values[2] & 31_u64) << 10) |
                ((values[3] & 31_u64) << 15) |
                ((values[4] & 31_u64) << 20) |
                ((values[5] & 31_u64) << 25) |
                ((values[6] & 31_u64) << 30) |
                ((values[7] & 31_u64) << 35) |
                ((values[8] & 31_u64) << 40) |
                ((values[9] & 31_u64) << 45) |
                ((values[10] & 31_u64) << 50) |
                ((values[11] & 31_u64) << 55) |
                ((values[12] & 31_u64) << 60)).to_u64
    bytes[1] = (((values[12] & 31_u64) >> 4) |
                ((values[13] & 31_u64) << 1) |
                ((values[14] & 31_u64) << 6) |
                ((values[15] & 31_u64) << 11) |
                ((values[16] & 31_u64) << 16) |
                ((values[17] & 31_u64) << 21) |
                ((values[18] & 31_u64) << 26) |
                ((values[19] & 31_u64) << 31) |
                ((values[20] & 31_u64) << 36) |
                ((values[21] & 31_u64) << 41) |
                ((values[22] & 31_u64) << 46) |
                ((values[23] & 31_u64) << 51) |
                ((values[24] & 31_u64) << 56) |
                ((values[25] & 31_u64) << 61)).to_u64
    bytes[2] = (((values[25] & 31_u64) >> 3) |
                ((values[26] & 31_u64) << 2) |
                ((values[27] & 31_u64) << 7) |
                ((values[28] & 31_u64) << 12) |
                ((values[29] & 31_u64) << 17) |
                ((values[30] & 31_u64) << 22) |
                ((values[31] & 31_u64) << 27) |
                ((values[32] & 31_u64) << 32) |
                ((values[33] & 31_u64) << 37) |
                ((values[34] & 31_u64) << 42) |
                ((values[35] & 31_u64) << 47) |
                ((values[36] & 31_u64) << 52) |
                ((values[37] & 31_u64) << 57) |
                ((values[38] & 31_u64) << 62)).to_u64
    bytes[3] = (((values[38] & 31_u64) >> 2) |
                ((values[39] & 31_u64) << 3) |
                ((values[40] & 31_u64) << 8) |
                ((values[41] & 31_u64) << 13) |
                ((values[42] & 31_u64) << 18) |
                ((values[43] & 31_u64) << 23) |
                ((values[44] & 31_u64) << 28) |
                ((values[45] & 31_u64) << 33) |
                ((values[46] & 31_u64) << 38) |
                ((values[47] & 31_u64) << 43) |
                ((values[48] & 31_u64) << 48) |
                ((values[49] & 31_u64) << 53) |
                ((values[50] & 31_u64) << 58) |
                ((values[51] & 31_u64) << 63)).to_u64
    bytes[4] = (((values[51] & 31_u64) >> 1) |
                ((values[52] & 31_u64) << 4) |
                ((values[53] & 31_u64) << 9) |
                ((values[54] & 31_u64) << 14) |
                ((values[55] & 31_u64) << 19) |
                ((values[56] & 31_u64) << 24) |
                ((values[57] & 31_u64) << 29) |
                ((values[58] & 31_u64) << 34) |
                ((values[59] & 31_u64) << 39) |
                ((values[60] & 31_u64) << 44) |
                ((values[61] & 31_u64) << 49) |
                ((values[62] & 31_u64) << 54) |
                ((values[63] & 31_u64) << 59)).to_u64
    bytes
  end

  def self.unpack5(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 31_u64)).to_i64
    values[1] = (((bytes[0] >> 5) & 31_u64)).to_i64
    values[2] = (((bytes[0] >> 10) & 31_u64)).to_i64
    values[3] = (((bytes[0] >> 15) & 31_u64)).to_i64
    values[4] = (((bytes[0] >> 20) & 31_u64)).to_i64
    values[5] = (((bytes[0] >> 25) & 31_u64)).to_i64
    values[6] = (((bytes[0] >> 30) & 31_u64)).to_i64
    values[7] = (((bytes[0] >> 35) & 31_u64)).to_i64
    values[8] = (((bytes[0] >> 40) & 31_u64)).to_i64
    values[9] = (((bytes[0] >> 45) & 31_u64)).to_i64
    values[10] = (((bytes[0] >> 50) & 31_u64)).to_i64
    values[11] = (((bytes[0] >> 55) & 31_u64)).to_i64
    values[12] = (((bytes[0] >> 60) & 31_u64) | ((bytes[1] & 1_u64) << 4)).to_i64
    values[13] = (((bytes[1] >> 1) & 31_u64)).to_i64
    values[14] = (((bytes[1] >> 6) & 31_u64)).to_i64
    values[15] = (((bytes[1] >> 11) & 31_u64)).to_i64
    values[16] = (((bytes[1] >> 16) & 31_u64)).to_i64
    values[17] = (((bytes[1] >> 21) & 31_u64)).to_i64
    values[18] = (((bytes[1] >> 26) & 31_u64)).to_i64
    values[19] = (((bytes[1] >> 31) & 31_u64)).to_i64
    values[20] = (((bytes[1] >> 36) & 31_u64)).to_i64
    values[21] = (((bytes[1] >> 41) & 31_u64)).to_i64
    values[22] = (((bytes[1] >> 46) & 31_u64)).to_i64
    values[23] = (((bytes[1] >> 51) & 31_u64)).to_i64
    values[24] = (((bytes[1] >> 56) & 31_u64)).to_i64
    values[25] = (((bytes[1] >> 61) & 31_u64) | ((bytes[2] & 3_u64) << 3)).to_i64
    values[26] = (((bytes[2] >> 2) & 31_u64)).to_i64
    values[27] = (((bytes[2] >> 7) & 31_u64)).to_i64
    values[28] = (((bytes[2] >> 12) & 31_u64)).to_i64
    values[29] = (((bytes[2] >> 17) & 31_u64)).to_i64
    values[30] = (((bytes[2] >> 22) & 31_u64)).to_i64
    values[31] = (((bytes[2] >> 27) & 31_u64)).to_i64
    values[32] = (((bytes[2] >> 32) & 31_u64)).to_i64
    values[33] = (((bytes[2] >> 37) & 31_u64)).to_i64
    values[34] = (((bytes[2] >> 42) & 31_u64)).to_i64
    values[35] = (((bytes[2] >> 47) & 31_u64)).to_i64
    values[36] = (((bytes[2] >> 52) & 31_u64)).to_i64
    values[37] = (((bytes[2] >> 57) & 31_u64)).to_i64
    values[38] = (((bytes[2] >> 62) & 31_u64) | ((bytes[3] & 7_u64) << 2)).to_i64
    values[39] = (((bytes[3] >> 3) & 31_u64)).to_i64
    values[40] = (((bytes[3] >> 8) & 31_u64)).to_i64
    values[41] = (((bytes[3] >> 13) & 31_u64)).to_i64
    values[42] = (((bytes[3] >> 18) & 31_u64)).to_i64
    values[43] = (((bytes[3] >> 23) & 31_u64)).to_i64
    values[44] = (((bytes[3] >> 28) & 31_u64)).to_i64
    values[45] = (((bytes[3] >> 33) & 31_u64)).to_i64
    values[46] = (((bytes[3] >> 38) & 31_u64)).to_i64
    values[47] = (((bytes[3] >> 43) & 31_u64)).to_i64
    values[48] = (((bytes[3] >> 48) & 31_u64)).to_i64
    values[49] = (((bytes[3] >> 53) & 31_u64)).to_i64
    values[50] = (((bytes[3] >> 58) & 31_u64)).to_i64
    values[51] = (((bytes[3] >> 63) & 31_u64) | ((bytes[4] & 15_u64) << 1)).to_i64
    values[52] = (((bytes[4] >> 4) & 31_u64)).to_i64
    values[53] = (((bytes[4] >> 9) & 31_u64)).to_i64
    values[54] = (((bytes[4] >> 14) & 31_u64)).to_i64
    values[55] = (((bytes[4] >> 19) & 31_u64)).to_i64
    values[56] = (((bytes[4] >> 24) & 31_u64)).to_i64
    values[57] = (((bytes[4] >> 29) & 31_u64)).to_i64
    values[58] = (((bytes[4] >> 34) & 31_u64)).to_i64
    values[59] = (((bytes[4] >> 39) & 31_u64)).to_i64
    values[60] = (((bytes[4] >> 44) & 31_u64)).to_i64
    values[61] = (((bytes[4] >> 49) & 31_u64)).to_i64
    values[62] = (((bytes[4] >> 54) & 31_u64)).to_i64
    values[63] = (((bytes[4] >> 59) & 31_u64)).to_i64
    values
  end

  def self.pack6(values)
    bytes = Slice(UInt64).new(6, 0_u64)
    bytes[0] = (((values[0] & 63_u64) << 0) |
                ((values[1] & 63_u64) << 6) |
                ((values[2] & 63_u64) << 12) |
                ((values[3] & 63_u64) << 18) |
                ((values[4] & 63_u64) << 24) |
                ((values[5] & 63_u64) << 30) |
                ((values[6] & 63_u64) << 36) |
                ((values[7] & 63_u64) << 42) |
                ((values[8] & 63_u64) << 48) |
                ((values[9] & 63_u64) << 54) |
                ((values[10] & 63_u64) << 60)).to_u64
    bytes[1] = (((values[10] & 63_u64) >> 4) |
                ((values[11] & 63_u64) << 2) |
                ((values[12] & 63_u64) << 8) |
                ((values[13] & 63_u64) << 14) |
                ((values[14] & 63_u64) << 20) |
                ((values[15] & 63_u64) << 26) |
                ((values[16] & 63_u64) << 32) |
                ((values[17] & 63_u64) << 38) |
                ((values[18] & 63_u64) << 44) |
                ((values[19] & 63_u64) << 50) |
                ((values[20] & 63_u64) << 56) |
                ((values[21] & 63_u64) << 62)).to_u64
    bytes[2] = (((values[21] & 63_u64) >> 2) |
                ((values[22] & 63_u64) << 4) |
                ((values[23] & 63_u64) << 10) |
                ((values[24] & 63_u64) << 16) |
                ((values[25] & 63_u64) << 22) |
                ((values[26] & 63_u64) << 28) |
                ((values[27] & 63_u64) << 34) |
                ((values[28] & 63_u64) << 40) |
                ((values[29] & 63_u64) << 46) |
                ((values[30] & 63_u64) << 52) |
                ((values[31] & 63_u64) << 58)).to_u64
    bytes[3] = (((values[32] & 63_u64) << 0) |
                ((values[33] & 63_u64) << 6) |
                ((values[34] & 63_u64) << 12) |
                ((values[35] & 63_u64) << 18) |
                ((values[36] & 63_u64) << 24) |
                ((values[37] & 63_u64) << 30) |
                ((values[38] & 63_u64) << 36) |
                ((values[39] & 63_u64) << 42) |
                ((values[40] & 63_u64) << 48) |
                ((values[41] & 63_u64) << 54) |
                ((values[42] & 63_u64) << 60)).to_u64
    bytes[4] = (((values[42] & 63_u64) >> 4) |
                ((values[43] & 63_u64) << 2) |
                ((values[44] & 63_u64) << 8) |
                ((values[45] & 63_u64) << 14) |
                ((values[46] & 63_u64) << 20) |
                ((values[47] & 63_u64) << 26) |
                ((values[48] & 63_u64) << 32) |
                ((values[49] & 63_u64) << 38) |
                ((values[50] & 63_u64) << 44) |
                ((values[51] & 63_u64) << 50) |
                ((values[52] & 63_u64) << 56) |
                ((values[53] & 63_u64) << 62)).to_u64
    bytes[5] = (((values[53] & 63_u64) >> 2) |
                ((values[54] & 63_u64) << 4) |
                ((values[55] & 63_u64) << 10) |
                ((values[56] & 63_u64) << 16) |
                ((values[57] & 63_u64) << 22) |
                ((values[58] & 63_u64) << 28) |
                ((values[59] & 63_u64) << 34) |
                ((values[60] & 63_u64) << 40) |
                ((values[61] & 63_u64) << 46) |
                ((values[62] & 63_u64) << 52) |
                ((values[63] & 63_u64) << 58)).to_u64
    bytes
  end

  def self.unpack6(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 63_u64)).to_i64
    values[1] = (((bytes[0] >> 6) & 63_u64)).to_i64
    values[2] = (((bytes[0] >> 12) & 63_u64)).to_i64
    values[3] = (((bytes[0] >> 18) & 63_u64)).to_i64
    values[4] = (((bytes[0] >> 24) & 63_u64)).to_i64
    values[5] = (((bytes[0] >> 30) & 63_u64)).to_i64
    values[6] = (((bytes[0] >> 36) & 63_u64)).to_i64
    values[7] = (((bytes[0] >> 42) & 63_u64)).to_i64
    values[8] = (((bytes[0] >> 48) & 63_u64)).to_i64
    values[9] = (((bytes[0] >> 54) & 63_u64)).to_i64
    values[10] = (((bytes[0] >> 60) & 63_u64) | ((bytes[1] & 3_u64) << 4)).to_i64
    values[11] = (((bytes[1] >> 2) & 63_u64)).to_i64
    values[12] = (((bytes[1] >> 8) & 63_u64)).to_i64
    values[13] = (((bytes[1] >> 14) & 63_u64)).to_i64
    values[14] = (((bytes[1] >> 20) & 63_u64)).to_i64
    values[15] = (((bytes[1] >> 26) & 63_u64)).to_i64
    values[16] = (((bytes[1] >> 32) & 63_u64)).to_i64
    values[17] = (((bytes[1] >> 38) & 63_u64)).to_i64
    values[18] = (((bytes[1] >> 44) & 63_u64)).to_i64
    values[19] = (((bytes[1] >> 50) & 63_u64)).to_i64
    values[20] = (((bytes[1] >> 56) & 63_u64)).to_i64
    values[21] = (((bytes[1] >> 62) & 63_u64) | ((bytes[2] & 15_u64) << 2)).to_i64
    values[22] = (((bytes[2] >> 4) & 63_u64)).to_i64
    values[23] = (((bytes[2] >> 10) & 63_u64)).to_i64
    values[24] = (((bytes[2] >> 16) & 63_u64)).to_i64
    values[25] = (((bytes[2] >> 22) & 63_u64)).to_i64
    values[26] = (((bytes[2] >> 28) & 63_u64)).to_i64
    values[27] = (((bytes[2] >> 34) & 63_u64)).to_i64
    values[28] = (((bytes[2] >> 40) & 63_u64)).to_i64
    values[29] = (((bytes[2] >> 46) & 63_u64)).to_i64
    values[30] = (((bytes[2] >> 52) & 63_u64)).to_i64
    values[31] = (((bytes[2] >> 58) & 63_u64)).to_i64
    values[32] = (((bytes[3] >> 0) & 63_u64)).to_i64
    values[33] = (((bytes[3] >> 6) & 63_u64)).to_i64
    values[34] = (((bytes[3] >> 12) & 63_u64)).to_i64
    values[35] = (((bytes[3] >> 18) & 63_u64)).to_i64
    values[36] = (((bytes[3] >> 24) & 63_u64)).to_i64
    values[37] = (((bytes[3] >> 30) & 63_u64)).to_i64
    values[38] = (((bytes[3] >> 36) & 63_u64)).to_i64
    values[39] = (((bytes[3] >> 42) & 63_u64)).to_i64
    values[40] = (((bytes[3] >> 48) & 63_u64)).to_i64
    values[41] = (((bytes[3] >> 54) & 63_u64)).to_i64
    values[42] = (((bytes[3] >> 60) & 63_u64) | ((bytes[4] & 3_u64) << 4)).to_i64
    values[43] = (((bytes[4] >> 2) & 63_u64)).to_i64
    values[44] = (((bytes[4] >> 8) & 63_u64)).to_i64
    values[45] = (((bytes[4] >> 14) & 63_u64)).to_i64
    values[46] = (((bytes[4] >> 20) & 63_u64)).to_i64
    values[47] = (((bytes[4] >> 26) & 63_u64)).to_i64
    values[48] = (((bytes[4] >> 32) & 63_u64)).to_i64
    values[49] = (((bytes[4] >> 38) & 63_u64)).to_i64
    values[50] = (((bytes[4] >> 44) & 63_u64)).to_i64
    values[51] = (((bytes[4] >> 50) & 63_u64)).to_i64
    values[52] = (((bytes[4] >> 56) & 63_u64)).to_i64
    values[53] = (((bytes[4] >> 62) & 63_u64) | ((bytes[5] & 15_u64) << 2)).to_i64
    values[54] = (((bytes[5] >> 4) & 63_u64)).to_i64
    values[55] = (((bytes[5] >> 10) & 63_u64)).to_i64
    values[56] = (((bytes[5] >> 16) & 63_u64)).to_i64
    values[57] = (((bytes[5] >> 22) & 63_u64)).to_i64
    values[58] = (((bytes[5] >> 28) & 63_u64)).to_i64
    values[59] = (((bytes[5] >> 34) & 63_u64)).to_i64
    values[60] = (((bytes[5] >> 40) & 63_u64)).to_i64
    values[61] = (((bytes[5] >> 46) & 63_u64)).to_i64
    values[62] = (((bytes[5] >> 52) & 63_u64)).to_i64
    values[63] = (((bytes[5] >> 58) & 63_u64)).to_i64
    values
  end

  def self.pack7(values)
    bytes = Slice(UInt64).new(7, 0_u64)
    bytes[0] = (((values[0] & 127_u64) << 0) |
                ((values[1] & 127_u64) << 7) |
                ((values[2] & 127_u64) << 14) |
                ((values[3] & 127_u64) << 21) |
                ((values[4] & 127_u64) << 28) |
                ((values[5] & 127_u64) << 35) |
                ((values[6] & 127_u64) << 42) |
                ((values[7] & 127_u64) << 49) |
                ((values[8] & 127_u64) << 56) |
                ((values[9] & 127_u64) << 63)).to_u64
    bytes[1] = (((values[9] & 127_u64) >> 1) |
                ((values[10] & 127_u64) << 6) |
                ((values[11] & 127_u64) << 13) |
                ((values[12] & 127_u64) << 20) |
                ((values[13] & 127_u64) << 27) |
                ((values[14] & 127_u64) << 34) |
                ((values[15] & 127_u64) << 41) |
                ((values[16] & 127_u64) << 48) |
                ((values[17] & 127_u64) << 55) |
                ((values[18] & 127_u64) << 62)).to_u64
    bytes[2] = (((values[18] & 127_u64) >> 2) |
                ((values[19] & 127_u64) << 5) |
                ((values[20] & 127_u64) << 12) |
                ((values[21] & 127_u64) << 19) |
                ((values[22] & 127_u64) << 26) |
                ((values[23] & 127_u64) << 33) |
                ((values[24] & 127_u64) << 40) |
                ((values[25] & 127_u64) << 47) |
                ((values[26] & 127_u64) << 54) |
                ((values[27] & 127_u64) << 61)).to_u64
    bytes[3] = (((values[27] & 127_u64) >> 3) |
                ((values[28] & 127_u64) << 4) |
                ((values[29] & 127_u64) << 11) |
                ((values[30] & 127_u64) << 18) |
                ((values[31] & 127_u64) << 25) |
                ((values[32] & 127_u64) << 32) |
                ((values[33] & 127_u64) << 39) |
                ((values[34] & 127_u64) << 46) |
                ((values[35] & 127_u64) << 53) |
                ((values[36] & 127_u64) << 60)).to_u64
    bytes[4] = (((values[36] & 127_u64) >> 4) |
                ((values[37] & 127_u64) << 3) |
                ((values[38] & 127_u64) << 10) |
                ((values[39] & 127_u64) << 17) |
                ((values[40] & 127_u64) << 24) |
                ((values[41] & 127_u64) << 31) |
                ((values[42] & 127_u64) << 38) |
                ((values[43] & 127_u64) << 45) |
                ((values[44] & 127_u64) << 52) |
                ((values[45] & 127_u64) << 59)).to_u64
    bytes[5] = (((values[45] & 127_u64) >> 5) |
                ((values[46] & 127_u64) << 2) |
                ((values[47] & 127_u64) << 9) |
                ((values[48] & 127_u64) << 16) |
                ((values[49] & 127_u64) << 23) |
                ((values[50] & 127_u64) << 30) |
                ((values[51] & 127_u64) << 37) |
                ((values[52] & 127_u64) << 44) |
                ((values[53] & 127_u64) << 51) |
                ((values[54] & 127_u64) << 58)).to_u64
    bytes[6] = (((values[54] & 127_u64) >> 6) |
                ((values[55] & 127_u64) << 1) |
                ((values[56] & 127_u64) << 8) |
                ((values[57] & 127_u64) << 15) |
                ((values[58] & 127_u64) << 22) |
                ((values[59] & 127_u64) << 29) |
                ((values[60] & 127_u64) << 36) |
                ((values[61] & 127_u64) << 43) |
                ((values[62] & 127_u64) << 50) |
                ((values[63] & 127_u64) << 57)).to_u64
    bytes
  end

  def self.unpack7(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 127_u64)).to_i64
    values[1] = (((bytes[0] >> 7) & 127_u64)).to_i64
    values[2] = (((bytes[0] >> 14) & 127_u64)).to_i64
    values[3] = (((bytes[0] >> 21) & 127_u64)).to_i64
    values[4] = (((bytes[0] >> 28) & 127_u64)).to_i64
    values[5] = (((bytes[0] >> 35) & 127_u64)).to_i64
    values[6] = (((bytes[0] >> 42) & 127_u64)).to_i64
    values[7] = (((bytes[0] >> 49) & 127_u64)).to_i64
    values[8] = (((bytes[0] >> 56) & 127_u64)).to_i64
    values[9] = (((bytes[0] >> 63) & 127_u64) | ((bytes[1] & 63_u64) << 1)).to_i64
    values[10] = (((bytes[1] >> 6) & 127_u64)).to_i64
    values[11] = (((bytes[1] >> 13) & 127_u64)).to_i64
    values[12] = (((bytes[1] >> 20) & 127_u64)).to_i64
    values[13] = (((bytes[1] >> 27) & 127_u64)).to_i64
    values[14] = (((bytes[1] >> 34) & 127_u64)).to_i64
    values[15] = (((bytes[1] >> 41) & 127_u64)).to_i64
    values[16] = (((bytes[1] >> 48) & 127_u64)).to_i64
    values[17] = (((bytes[1] >> 55) & 127_u64)).to_i64
    values[18] = (((bytes[1] >> 62) & 127_u64) | ((bytes[2] & 31_u64) << 2)).to_i64
    values[19] = (((bytes[2] >> 5) & 127_u64)).to_i64
    values[20] = (((bytes[2] >> 12) & 127_u64)).to_i64
    values[21] = (((bytes[2] >> 19) & 127_u64)).to_i64
    values[22] = (((bytes[2] >> 26) & 127_u64)).to_i64
    values[23] = (((bytes[2] >> 33) & 127_u64)).to_i64
    values[24] = (((bytes[2] >> 40) & 127_u64)).to_i64
    values[25] = (((bytes[2] >> 47) & 127_u64)).to_i64
    values[26] = (((bytes[2] >> 54) & 127_u64)).to_i64
    values[27] = (((bytes[2] >> 61) & 127_u64) | ((bytes[3] & 15_u64) << 3)).to_i64
    values[28] = (((bytes[3] >> 4) & 127_u64)).to_i64
    values[29] = (((bytes[3] >> 11) & 127_u64)).to_i64
    values[30] = (((bytes[3] >> 18) & 127_u64)).to_i64
    values[31] = (((bytes[3] >> 25) & 127_u64)).to_i64
    values[32] = (((bytes[3] >> 32) & 127_u64)).to_i64
    values[33] = (((bytes[3] >> 39) & 127_u64)).to_i64
    values[34] = (((bytes[3] >> 46) & 127_u64)).to_i64
    values[35] = (((bytes[3] >> 53) & 127_u64)).to_i64
    values[36] = (((bytes[3] >> 60) & 127_u64) | ((bytes[4] & 7_u64) << 4)).to_i64
    values[37] = (((bytes[4] >> 3) & 127_u64)).to_i64
    values[38] = (((bytes[4] >> 10) & 127_u64)).to_i64
    values[39] = (((bytes[4] >> 17) & 127_u64)).to_i64
    values[40] = (((bytes[4] >> 24) & 127_u64)).to_i64
    values[41] = (((bytes[4] >> 31) & 127_u64)).to_i64
    values[42] = (((bytes[4] >> 38) & 127_u64)).to_i64
    values[43] = (((bytes[4] >> 45) & 127_u64)).to_i64
    values[44] = (((bytes[4] >> 52) & 127_u64)).to_i64
    values[45] = (((bytes[4] >> 59) & 127_u64) | ((bytes[5] & 3_u64) << 5)).to_i64
    values[46] = (((bytes[5] >> 2) & 127_u64)).to_i64
    values[47] = (((bytes[5] >> 9) & 127_u64)).to_i64
    values[48] = (((bytes[5] >> 16) & 127_u64)).to_i64
    values[49] = (((bytes[5] >> 23) & 127_u64)).to_i64
    values[50] = (((bytes[5] >> 30) & 127_u64)).to_i64
    values[51] = (((bytes[5] >> 37) & 127_u64)).to_i64
    values[52] = (((bytes[5] >> 44) & 127_u64)).to_i64
    values[53] = (((bytes[5] >> 51) & 127_u64)).to_i64
    values[54] = (((bytes[5] >> 58) & 127_u64) | ((bytes[6] & 1_u64) << 6)).to_i64
    values[55] = (((bytes[6] >> 1) & 127_u64)).to_i64
    values[56] = (((bytes[6] >> 8) & 127_u64)).to_i64
    values[57] = (((bytes[6] >> 15) & 127_u64)).to_i64
    values[58] = (((bytes[6] >> 22) & 127_u64)).to_i64
    values[59] = (((bytes[6] >> 29) & 127_u64)).to_i64
    values[60] = (((bytes[6] >> 36) & 127_u64)).to_i64
    values[61] = (((bytes[6] >> 43) & 127_u64)).to_i64
    values[62] = (((bytes[6] >> 50) & 127_u64)).to_i64
    values[63] = (((bytes[6] >> 57) & 127_u64)).to_i64
    values
  end

  def self.pack8(values)
    bytes = Slice(UInt64).new(8, 0_u64)
    bytes[0] = (((values[0] & 255_u64) << 0) |
                ((values[1] & 255_u64) << 8) |
                ((values[2] & 255_u64) << 16) |
                ((values[3] & 255_u64) << 24) |
                ((values[4] & 255_u64) << 32) |
                ((values[5] & 255_u64) << 40) |
                ((values[6] & 255_u64) << 48) |
                ((values[7] & 255_u64) << 56)).to_u64
    bytes[1] = (((values[8] & 255_u64) << 0) |
                ((values[9] & 255_u64) << 8) |
                ((values[10] & 255_u64) << 16) |
                ((values[11] & 255_u64) << 24) |
                ((values[12] & 255_u64) << 32) |
                ((values[13] & 255_u64) << 40) |
                ((values[14] & 255_u64) << 48) |
                ((values[15] & 255_u64) << 56)).to_u64
    bytes[2] = (((values[16] & 255_u64) << 0) |
                ((values[17] & 255_u64) << 8) |
                ((values[18] & 255_u64) << 16) |
                ((values[19] & 255_u64) << 24) |
                ((values[20] & 255_u64) << 32) |
                ((values[21] & 255_u64) << 40) |
                ((values[22] & 255_u64) << 48) |
                ((values[23] & 255_u64) << 56)).to_u64
    bytes[3] = (((values[24] & 255_u64) << 0) |
                ((values[25] & 255_u64) << 8) |
                ((values[26] & 255_u64) << 16) |
                ((values[27] & 255_u64) << 24) |
                ((values[28] & 255_u64) << 32) |
                ((values[29] & 255_u64) << 40) |
                ((values[30] & 255_u64) << 48) |
                ((values[31] & 255_u64) << 56)).to_u64
    bytes[4] = (((values[32] & 255_u64) << 0) |
                ((values[33] & 255_u64) << 8) |
                ((values[34] & 255_u64) << 16) |
                ((values[35] & 255_u64) << 24) |
                ((values[36] & 255_u64) << 32) |
                ((values[37] & 255_u64) << 40) |
                ((values[38] & 255_u64) << 48) |
                ((values[39] & 255_u64) << 56)).to_u64
    bytes[5] = (((values[40] & 255_u64) << 0) |
                ((values[41] & 255_u64) << 8) |
                ((values[42] & 255_u64) << 16) |
                ((values[43] & 255_u64) << 24) |
                ((values[44] & 255_u64) << 32) |
                ((values[45] & 255_u64) << 40) |
                ((values[46] & 255_u64) << 48) |
                ((values[47] & 255_u64) << 56)).to_u64
    bytes[6] = (((values[48] & 255_u64) << 0) |
                ((values[49] & 255_u64) << 8) |
                ((values[50] & 255_u64) << 16) |
                ((values[51] & 255_u64) << 24) |
                ((values[52] & 255_u64) << 32) |
                ((values[53] & 255_u64) << 40) |
                ((values[54] & 255_u64) << 48) |
                ((values[55] & 255_u64) << 56)).to_u64
    bytes[7] = (((values[56] & 255_u64) << 0) |
                ((values[57] & 255_u64) << 8) |
                ((values[58] & 255_u64) << 16) |
                ((values[59] & 255_u64) << 24) |
                ((values[60] & 255_u64) << 32) |
                ((values[61] & 255_u64) << 40) |
                ((values[62] & 255_u64) << 48) |
                ((values[63] & 255_u64) << 56)).to_u64
    bytes
  end

  def self.unpack8(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 255_u64)).to_i64
    values[1] = (((bytes[0] >> 8) & 255_u64)).to_i64
    values[2] = (((bytes[0] >> 16) & 255_u64)).to_i64
    values[3] = (((bytes[0] >> 24) & 255_u64)).to_i64
    values[4] = (((bytes[0] >> 32) & 255_u64)).to_i64
    values[5] = (((bytes[0] >> 40) & 255_u64)).to_i64
    values[6] = (((bytes[0] >> 48) & 255_u64)).to_i64
    values[7] = (((bytes[0] >> 56) & 255_u64)).to_i64
    values[8] = (((bytes[1] >> 0) & 255_u64)).to_i64
    values[9] = (((bytes[1] >> 8) & 255_u64)).to_i64
    values[10] = (((bytes[1] >> 16) & 255_u64)).to_i64
    values[11] = (((bytes[1] >> 24) & 255_u64)).to_i64
    values[12] = (((bytes[1] >> 32) & 255_u64)).to_i64
    values[13] = (((bytes[1] >> 40) & 255_u64)).to_i64
    values[14] = (((bytes[1] >> 48) & 255_u64)).to_i64
    values[15] = (((bytes[1] >> 56) & 255_u64)).to_i64
    values[16] = (((bytes[2] >> 0) & 255_u64)).to_i64
    values[17] = (((bytes[2] >> 8) & 255_u64)).to_i64
    values[18] = (((bytes[2] >> 16) & 255_u64)).to_i64
    values[19] = (((bytes[2] >> 24) & 255_u64)).to_i64
    values[20] = (((bytes[2] >> 32) & 255_u64)).to_i64
    values[21] = (((bytes[2] >> 40) & 255_u64)).to_i64
    values[22] = (((bytes[2] >> 48) & 255_u64)).to_i64
    values[23] = (((bytes[2] >> 56) & 255_u64)).to_i64
    values[24] = (((bytes[3] >> 0) & 255_u64)).to_i64
    values[25] = (((bytes[3] >> 8) & 255_u64)).to_i64
    values[26] = (((bytes[3] >> 16) & 255_u64)).to_i64
    values[27] = (((bytes[3] >> 24) & 255_u64)).to_i64
    values[28] = (((bytes[3] >> 32) & 255_u64)).to_i64
    values[29] = (((bytes[3] >> 40) & 255_u64)).to_i64
    values[30] = (((bytes[3] >> 48) & 255_u64)).to_i64
    values[31] = (((bytes[3] >> 56) & 255_u64)).to_i64
    values[32] = (((bytes[4] >> 0) & 255_u64)).to_i64
    values[33] = (((bytes[4] >> 8) & 255_u64)).to_i64
    values[34] = (((bytes[4] >> 16) & 255_u64)).to_i64
    values[35] = (((bytes[4] >> 24) & 255_u64)).to_i64
    values[36] = (((bytes[4] >> 32) & 255_u64)).to_i64
    values[37] = (((bytes[4] >> 40) & 255_u64)).to_i64
    values[38] = (((bytes[4] >> 48) & 255_u64)).to_i64
    values[39] = (((bytes[4] >> 56) & 255_u64)).to_i64
    values[40] = (((bytes[5] >> 0) & 255_u64)).to_i64
    values[41] = (((bytes[5] >> 8) & 255_u64)).to_i64
    values[42] = (((bytes[5] >> 16) & 255_u64)).to_i64
    values[43] = (((bytes[5] >> 24) & 255_u64)).to_i64
    values[44] = (((bytes[5] >> 32) & 255_u64)).to_i64
    values[45] = (((bytes[5] >> 40) & 255_u64)).to_i64
    values[46] = (((bytes[5] >> 48) & 255_u64)).to_i64
    values[47] = (((bytes[5] >> 56) & 255_u64)).to_i64
    values[48] = (((bytes[6] >> 0) & 255_u64)).to_i64
    values[49] = (((bytes[6] >> 8) & 255_u64)).to_i64
    values[50] = (((bytes[6] >> 16) & 255_u64)).to_i64
    values[51] = (((bytes[6] >> 24) & 255_u64)).to_i64
    values[52] = (((bytes[6] >> 32) & 255_u64)).to_i64
    values[53] = (((bytes[6] >> 40) & 255_u64)).to_i64
    values[54] = (((bytes[6] >> 48) & 255_u64)).to_i64
    values[55] = (((bytes[6] >> 56) & 255_u64)).to_i64
    values[56] = (((bytes[7] >> 0) & 255_u64)).to_i64
    values[57] = (((bytes[7] >> 8) & 255_u64)).to_i64
    values[58] = (((bytes[7] >> 16) & 255_u64)).to_i64
    values[59] = (((bytes[7] >> 24) & 255_u64)).to_i64
    values[60] = (((bytes[7] >> 32) & 255_u64)).to_i64
    values[61] = (((bytes[7] >> 40) & 255_u64)).to_i64
    values[62] = (((bytes[7] >> 48) & 255_u64)).to_i64
    values[63] = (((bytes[7] >> 56) & 255_u64)).to_i64
    values
  end

  def self.pack9(values)
    bytes = Slice(UInt64).new(9, 0_u64)
    bytes[0] = (((values[0] & 511_u64) << 0) |
                ((values[1] & 511_u64) << 9) |
                ((values[2] & 511_u64) << 18) |
                ((values[3] & 511_u64) << 27) |
                ((values[4] & 511_u64) << 36) |
                ((values[5] & 511_u64) << 45) |
                ((values[6] & 511_u64) << 54) |
                ((values[7] & 511_u64) << 63)).to_u64
    bytes[1] = (((values[7] & 511_u64) >> 1) |
                ((values[8] & 511_u64) << 8) |
                ((values[9] & 511_u64) << 17) |
                ((values[10] & 511_u64) << 26) |
                ((values[11] & 511_u64) << 35) |
                ((values[12] & 511_u64) << 44) |
                ((values[13] & 511_u64) << 53) |
                ((values[14] & 511_u64) << 62)).to_u64
    bytes[2] = (((values[14] & 511_u64) >> 2) |
                ((values[15] & 511_u64) << 7) |
                ((values[16] & 511_u64) << 16) |
                ((values[17] & 511_u64) << 25) |
                ((values[18] & 511_u64) << 34) |
                ((values[19] & 511_u64) << 43) |
                ((values[20] & 511_u64) << 52) |
                ((values[21] & 511_u64) << 61)).to_u64
    bytes[3] = (((values[21] & 511_u64) >> 3) |
                ((values[22] & 511_u64) << 6) |
                ((values[23] & 511_u64) << 15) |
                ((values[24] & 511_u64) << 24) |
                ((values[25] & 511_u64) << 33) |
                ((values[26] & 511_u64) << 42) |
                ((values[27] & 511_u64) << 51) |
                ((values[28] & 511_u64) << 60)).to_u64
    bytes[4] = (((values[28] & 511_u64) >> 4) |
                ((values[29] & 511_u64) << 5) |
                ((values[30] & 511_u64) << 14) |
                ((values[31] & 511_u64) << 23) |
                ((values[32] & 511_u64) << 32) |
                ((values[33] & 511_u64) << 41) |
                ((values[34] & 511_u64) << 50) |
                ((values[35] & 511_u64) << 59)).to_u64
    bytes[5] = (((values[35] & 511_u64) >> 5) |
                ((values[36] & 511_u64) << 4) |
                ((values[37] & 511_u64) << 13) |
                ((values[38] & 511_u64) << 22) |
                ((values[39] & 511_u64) << 31) |
                ((values[40] & 511_u64) << 40) |
                ((values[41] & 511_u64) << 49) |
                ((values[42] & 511_u64) << 58)).to_u64
    bytes[6] = (((values[42] & 511_u64) >> 6) |
                ((values[43] & 511_u64) << 3) |
                ((values[44] & 511_u64) << 12) |
                ((values[45] & 511_u64) << 21) |
                ((values[46] & 511_u64) << 30) |
                ((values[47] & 511_u64) << 39) |
                ((values[48] & 511_u64) << 48) |
                ((values[49] & 511_u64) << 57)).to_u64
    bytes[7] = (((values[49] & 511_u64) >> 7) |
                ((values[50] & 511_u64) << 2) |
                ((values[51] & 511_u64) << 11) |
                ((values[52] & 511_u64) << 20) |
                ((values[53] & 511_u64) << 29) |
                ((values[54] & 511_u64) << 38) |
                ((values[55] & 511_u64) << 47) |
                ((values[56] & 511_u64) << 56)).to_u64
    bytes[8] = (((values[56] & 511_u64) >> 8) |
                ((values[57] & 511_u64) << 1) |
                ((values[58] & 511_u64) << 10) |
                ((values[59] & 511_u64) << 19) |
                ((values[60] & 511_u64) << 28) |
                ((values[61] & 511_u64) << 37) |
                ((values[62] & 511_u64) << 46) |
                ((values[63] & 511_u64) << 55)).to_u64
    bytes
  end

  def self.unpack9(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 511_u64)).to_i64
    values[1] = (((bytes[0] >> 9) & 511_u64)).to_i64
    values[2] = (((bytes[0] >> 18) & 511_u64)).to_i64
    values[3] = (((bytes[0] >> 27) & 511_u64)).to_i64
    values[4] = (((bytes[0] >> 36) & 511_u64)).to_i64
    values[5] = (((bytes[0] >> 45) & 511_u64)).to_i64
    values[6] = (((bytes[0] >> 54) & 511_u64)).to_i64
    values[7] = (((bytes[0] >> 63) & 511_u64) | ((bytes[1] & 255_u64) << 1)).to_i64
    values[8] = (((bytes[1] >> 8) & 511_u64)).to_i64
    values[9] = (((bytes[1] >> 17) & 511_u64)).to_i64
    values[10] = (((bytes[1] >> 26) & 511_u64)).to_i64
    values[11] = (((bytes[1] >> 35) & 511_u64)).to_i64
    values[12] = (((bytes[1] >> 44) & 511_u64)).to_i64
    values[13] = (((bytes[1] >> 53) & 511_u64)).to_i64
    values[14] = (((bytes[1] >> 62) & 511_u64) | ((bytes[2] & 127_u64) << 2)).to_i64
    values[15] = (((bytes[2] >> 7) & 511_u64)).to_i64
    values[16] = (((bytes[2] >> 16) & 511_u64)).to_i64
    values[17] = (((bytes[2] >> 25) & 511_u64)).to_i64
    values[18] = (((bytes[2] >> 34) & 511_u64)).to_i64
    values[19] = (((bytes[2] >> 43) & 511_u64)).to_i64
    values[20] = (((bytes[2] >> 52) & 511_u64)).to_i64
    values[21] = (((bytes[2] >> 61) & 511_u64) | ((bytes[3] & 63_u64) << 3)).to_i64
    values[22] = (((bytes[3] >> 6) & 511_u64)).to_i64
    values[23] = (((bytes[3] >> 15) & 511_u64)).to_i64
    values[24] = (((bytes[3] >> 24) & 511_u64)).to_i64
    values[25] = (((bytes[3] >> 33) & 511_u64)).to_i64
    values[26] = (((bytes[3] >> 42) & 511_u64)).to_i64
    values[27] = (((bytes[3] >> 51) & 511_u64)).to_i64
    values[28] = (((bytes[3] >> 60) & 511_u64) | ((bytes[4] & 31_u64) << 4)).to_i64
    values[29] = (((bytes[4] >> 5) & 511_u64)).to_i64
    values[30] = (((bytes[4] >> 14) & 511_u64)).to_i64
    values[31] = (((bytes[4] >> 23) & 511_u64)).to_i64
    values[32] = (((bytes[4] >> 32) & 511_u64)).to_i64
    values[33] = (((bytes[4] >> 41) & 511_u64)).to_i64
    values[34] = (((bytes[4] >> 50) & 511_u64)).to_i64
    values[35] = (((bytes[4] >> 59) & 511_u64) | ((bytes[5] & 15_u64) << 5)).to_i64
    values[36] = (((bytes[5] >> 4) & 511_u64)).to_i64
    values[37] = (((bytes[5] >> 13) & 511_u64)).to_i64
    values[38] = (((bytes[5] >> 22) & 511_u64)).to_i64
    values[39] = (((bytes[5] >> 31) & 511_u64)).to_i64
    values[40] = (((bytes[5] >> 40) & 511_u64)).to_i64
    values[41] = (((bytes[5] >> 49) & 511_u64)).to_i64
    values[42] = (((bytes[5] >> 58) & 511_u64) | ((bytes[6] & 7_u64) << 6)).to_i64
    values[43] = (((bytes[6] >> 3) & 511_u64)).to_i64
    values[44] = (((bytes[6] >> 12) & 511_u64)).to_i64
    values[45] = (((bytes[6] >> 21) & 511_u64)).to_i64
    values[46] = (((bytes[6] >> 30) & 511_u64)).to_i64
    values[47] = (((bytes[6] >> 39) & 511_u64)).to_i64
    values[48] = (((bytes[6] >> 48) & 511_u64)).to_i64
    values[49] = (((bytes[6] >> 57) & 511_u64) | ((bytes[7] & 3_u64) << 7)).to_i64
    values[50] = (((bytes[7] >> 2) & 511_u64)).to_i64
    values[51] = (((bytes[7] >> 11) & 511_u64)).to_i64
    values[52] = (((bytes[7] >> 20) & 511_u64)).to_i64
    values[53] = (((bytes[7] >> 29) & 511_u64)).to_i64
    values[54] = (((bytes[7] >> 38) & 511_u64)).to_i64
    values[55] = (((bytes[7] >> 47) & 511_u64)).to_i64
    values[56] = (((bytes[7] >> 56) & 511_u64) | ((bytes[8] & 1_u64) << 8)).to_i64
    values[57] = (((bytes[8] >> 1) & 511_u64)).to_i64
    values[58] = (((bytes[8] >> 10) & 511_u64)).to_i64
    values[59] = (((bytes[8] >> 19) & 511_u64)).to_i64
    values[60] = (((bytes[8] >> 28) & 511_u64)).to_i64
    values[61] = (((bytes[8] >> 37) & 511_u64)).to_i64
    values[62] = (((bytes[8] >> 46) & 511_u64)).to_i64
    values[63] = (((bytes[8] >> 55) & 511_u64)).to_i64
    values
  end

  def self.pack10(values)
    bytes = Slice(UInt64).new(10, 0_u64)
    bytes[0] = (((values[0] & 1023_u64) << 0) |
                ((values[1] & 1023_u64) << 10) |
                ((values[2] & 1023_u64) << 20) |
                ((values[3] & 1023_u64) << 30) |
                ((values[4] & 1023_u64) << 40) |
                ((values[5] & 1023_u64) << 50) |
                ((values[6] & 1023_u64) << 60)).to_u64
    bytes[1] = (((values[6] & 1023_u64) >> 4) |
                ((values[7] & 1023_u64) << 6) |
                ((values[8] & 1023_u64) << 16) |
                ((values[9] & 1023_u64) << 26) |
                ((values[10] & 1023_u64) << 36) |
                ((values[11] & 1023_u64) << 46) |
                ((values[12] & 1023_u64) << 56)).to_u64
    bytes[2] = (((values[12] & 1023_u64) >> 8) |
                ((values[13] & 1023_u64) << 2) |
                ((values[14] & 1023_u64) << 12) |
                ((values[15] & 1023_u64) << 22) |
                ((values[16] & 1023_u64) << 32) |
                ((values[17] & 1023_u64) << 42) |
                ((values[18] & 1023_u64) << 52) |
                ((values[19] & 1023_u64) << 62)).to_u64
    bytes[3] = (((values[19] & 1023_u64) >> 2) |
                ((values[20] & 1023_u64) << 8) |
                ((values[21] & 1023_u64) << 18) |
                ((values[22] & 1023_u64) << 28) |
                ((values[23] & 1023_u64) << 38) |
                ((values[24] & 1023_u64) << 48) |
                ((values[25] & 1023_u64) << 58)).to_u64
    bytes[4] = (((values[25] & 1023_u64) >> 6) |
                ((values[26] & 1023_u64) << 4) |
                ((values[27] & 1023_u64) << 14) |
                ((values[28] & 1023_u64) << 24) |
                ((values[29] & 1023_u64) << 34) |
                ((values[30] & 1023_u64) << 44) |
                ((values[31] & 1023_u64) << 54)).to_u64
    bytes[5] = (((values[32] & 1023_u64) << 0) |
                ((values[33] & 1023_u64) << 10) |
                ((values[34] & 1023_u64) << 20) |
                ((values[35] & 1023_u64) << 30) |
                ((values[36] & 1023_u64) << 40) |
                ((values[37] & 1023_u64) << 50) |
                ((values[38] & 1023_u64) << 60)).to_u64
    bytes[6] = (((values[38] & 1023_u64) >> 4) |
                ((values[39] & 1023_u64) << 6) |
                ((values[40] & 1023_u64) << 16) |
                ((values[41] & 1023_u64) << 26) |
                ((values[42] & 1023_u64) << 36) |
                ((values[43] & 1023_u64) << 46) |
                ((values[44] & 1023_u64) << 56)).to_u64
    bytes[7] = (((values[44] & 1023_u64) >> 8) |
                ((values[45] & 1023_u64) << 2) |
                ((values[46] & 1023_u64) << 12) |
                ((values[47] & 1023_u64) << 22) |
                ((values[48] & 1023_u64) << 32) |
                ((values[49] & 1023_u64) << 42) |
                ((values[50] & 1023_u64) << 52) |
                ((values[51] & 1023_u64) << 62)).to_u64
    bytes[8] = (((values[51] & 1023_u64) >> 2) |
                ((values[52] & 1023_u64) << 8) |
                ((values[53] & 1023_u64) << 18) |
                ((values[54] & 1023_u64) << 28) |
                ((values[55] & 1023_u64) << 38) |
                ((values[56] & 1023_u64) << 48) |
                ((values[57] & 1023_u64) << 58)).to_u64
    bytes[9] = (((values[57] & 1023_u64) >> 6) |
                ((values[58] & 1023_u64) << 4) |
                ((values[59] & 1023_u64) << 14) |
                ((values[60] & 1023_u64) << 24) |
                ((values[61] & 1023_u64) << 34) |
                ((values[62] & 1023_u64) << 44) |
                ((values[63] & 1023_u64) << 54)).to_u64
    bytes
  end

  def self.unpack10(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1023_u64)).to_i64
    values[1] = (((bytes[0] >> 10) & 1023_u64)).to_i64
    values[2] = (((bytes[0] >> 20) & 1023_u64)).to_i64
    values[3] = (((bytes[0] >> 30) & 1023_u64)).to_i64
    values[4] = (((bytes[0] >> 40) & 1023_u64)).to_i64
    values[5] = (((bytes[0] >> 50) & 1023_u64)).to_i64
    values[6] = (((bytes[0] >> 60) & 1023_u64) | ((bytes[1] & 63_u64) << 4)).to_i64
    values[7] = (((bytes[1] >> 6) & 1023_u64)).to_i64
    values[8] = (((bytes[1] >> 16) & 1023_u64)).to_i64
    values[9] = (((bytes[1] >> 26) & 1023_u64)).to_i64
    values[10] = (((bytes[1] >> 36) & 1023_u64)).to_i64
    values[11] = (((bytes[1] >> 46) & 1023_u64)).to_i64
    values[12] = (((bytes[1] >> 56) & 1023_u64) | ((bytes[2] & 3_u64) << 8)).to_i64
    values[13] = (((bytes[2] >> 2) & 1023_u64)).to_i64
    values[14] = (((bytes[2] >> 12) & 1023_u64)).to_i64
    values[15] = (((bytes[2] >> 22) & 1023_u64)).to_i64
    values[16] = (((bytes[2] >> 32) & 1023_u64)).to_i64
    values[17] = (((bytes[2] >> 42) & 1023_u64)).to_i64
    values[18] = (((bytes[2] >> 52) & 1023_u64)).to_i64
    values[19] = (((bytes[2] >> 62) & 1023_u64) | ((bytes[3] & 255_u64) << 2)).to_i64
    values[20] = (((bytes[3] >> 8) & 1023_u64)).to_i64
    values[21] = (((bytes[3] >> 18) & 1023_u64)).to_i64
    values[22] = (((bytes[3] >> 28) & 1023_u64)).to_i64
    values[23] = (((bytes[3] >> 38) & 1023_u64)).to_i64
    values[24] = (((bytes[3] >> 48) & 1023_u64)).to_i64
    values[25] = (((bytes[3] >> 58) & 1023_u64) | ((bytes[4] & 15_u64) << 6)).to_i64
    values[26] = (((bytes[4] >> 4) & 1023_u64)).to_i64
    values[27] = (((bytes[4] >> 14) & 1023_u64)).to_i64
    values[28] = (((bytes[4] >> 24) & 1023_u64)).to_i64
    values[29] = (((bytes[4] >> 34) & 1023_u64)).to_i64
    values[30] = (((bytes[4] >> 44) & 1023_u64)).to_i64
    values[31] = (((bytes[4] >> 54) & 1023_u64)).to_i64
    values[32] = (((bytes[5] >> 0) & 1023_u64)).to_i64
    values[33] = (((bytes[5] >> 10) & 1023_u64)).to_i64
    values[34] = (((bytes[5] >> 20) & 1023_u64)).to_i64
    values[35] = (((bytes[5] >> 30) & 1023_u64)).to_i64
    values[36] = (((bytes[5] >> 40) & 1023_u64)).to_i64
    values[37] = (((bytes[5] >> 50) & 1023_u64)).to_i64
    values[38] = (((bytes[5] >> 60) & 1023_u64) | ((bytes[6] & 63_u64) << 4)).to_i64
    values[39] = (((bytes[6] >> 6) & 1023_u64)).to_i64
    values[40] = (((bytes[6] >> 16) & 1023_u64)).to_i64
    values[41] = (((bytes[6] >> 26) & 1023_u64)).to_i64
    values[42] = (((bytes[6] >> 36) & 1023_u64)).to_i64
    values[43] = (((bytes[6] >> 46) & 1023_u64)).to_i64
    values[44] = (((bytes[6] >> 56) & 1023_u64) | ((bytes[7] & 3_u64) << 8)).to_i64
    values[45] = (((bytes[7] >> 2) & 1023_u64)).to_i64
    values[46] = (((bytes[7] >> 12) & 1023_u64)).to_i64
    values[47] = (((bytes[7] >> 22) & 1023_u64)).to_i64
    values[48] = (((bytes[7] >> 32) & 1023_u64)).to_i64
    values[49] = (((bytes[7] >> 42) & 1023_u64)).to_i64
    values[50] = (((bytes[7] >> 52) & 1023_u64)).to_i64
    values[51] = (((bytes[7] >> 62) & 1023_u64) | ((bytes[8] & 255_u64) << 2)).to_i64
    values[52] = (((bytes[8] >> 8) & 1023_u64)).to_i64
    values[53] = (((bytes[8] >> 18) & 1023_u64)).to_i64
    values[54] = (((bytes[8] >> 28) & 1023_u64)).to_i64
    values[55] = (((bytes[8] >> 38) & 1023_u64)).to_i64
    values[56] = (((bytes[8] >> 48) & 1023_u64)).to_i64
    values[57] = (((bytes[8] >> 58) & 1023_u64) | ((bytes[9] & 15_u64) << 6)).to_i64
    values[58] = (((bytes[9] >> 4) & 1023_u64)).to_i64
    values[59] = (((bytes[9] >> 14) & 1023_u64)).to_i64
    values[60] = (((bytes[9] >> 24) & 1023_u64)).to_i64
    values[61] = (((bytes[9] >> 34) & 1023_u64)).to_i64
    values[62] = (((bytes[9] >> 44) & 1023_u64)).to_i64
    values[63] = (((bytes[9] >> 54) & 1023_u64)).to_i64
    values
  end

  def self.pack11(values)
    bytes = Slice(UInt64).new(11, 0_u64)
    bytes[0] = (((values[0] & 2047_u64) << 0) |
                ((values[1] & 2047_u64) << 11) |
                ((values[2] & 2047_u64) << 22) |
                ((values[3] & 2047_u64) << 33) |
                ((values[4] & 2047_u64) << 44) |
                ((values[5] & 2047_u64) << 55)).to_u64
    bytes[1] = (((values[5] & 2047_u64) >> 9) |
                ((values[6] & 2047_u64) << 2) |
                ((values[7] & 2047_u64) << 13) |
                ((values[8] & 2047_u64) << 24) |
                ((values[9] & 2047_u64) << 35) |
                ((values[10] & 2047_u64) << 46) |
                ((values[11] & 2047_u64) << 57)).to_u64
    bytes[2] = (((values[11] & 2047_u64) >> 7) |
                ((values[12] & 2047_u64) << 4) |
                ((values[13] & 2047_u64) << 15) |
                ((values[14] & 2047_u64) << 26) |
                ((values[15] & 2047_u64) << 37) |
                ((values[16] & 2047_u64) << 48) |
                ((values[17] & 2047_u64) << 59)).to_u64
    bytes[3] = (((values[17] & 2047_u64) >> 5) |
                ((values[18] & 2047_u64) << 6) |
                ((values[19] & 2047_u64) << 17) |
                ((values[20] & 2047_u64) << 28) |
                ((values[21] & 2047_u64) << 39) |
                ((values[22] & 2047_u64) << 50) |
                ((values[23] & 2047_u64) << 61)).to_u64
    bytes[4] = (((values[23] & 2047_u64) >> 3) |
                ((values[24] & 2047_u64) << 8) |
                ((values[25] & 2047_u64) << 19) |
                ((values[26] & 2047_u64) << 30) |
                ((values[27] & 2047_u64) << 41) |
                ((values[28] & 2047_u64) << 52) |
                ((values[29] & 2047_u64) << 63)).to_u64
    bytes[5] = (((values[29] & 2047_u64) >> 1) |
                ((values[30] & 2047_u64) << 10) |
                ((values[31] & 2047_u64) << 21) |
                ((values[32] & 2047_u64) << 32) |
                ((values[33] & 2047_u64) << 43) |
                ((values[34] & 2047_u64) << 54)).to_u64
    bytes[6] = (((values[34] & 2047_u64) >> 10) |
                ((values[35] & 2047_u64) << 1) |
                ((values[36] & 2047_u64) << 12) |
                ((values[37] & 2047_u64) << 23) |
                ((values[38] & 2047_u64) << 34) |
                ((values[39] & 2047_u64) << 45) |
                ((values[40] & 2047_u64) << 56)).to_u64
    bytes[7] = (((values[40] & 2047_u64) >> 8) |
                ((values[41] & 2047_u64) << 3) |
                ((values[42] & 2047_u64) << 14) |
                ((values[43] & 2047_u64) << 25) |
                ((values[44] & 2047_u64) << 36) |
                ((values[45] & 2047_u64) << 47) |
                ((values[46] & 2047_u64) << 58)).to_u64
    bytes[8] = (((values[46] & 2047_u64) >> 6) |
                ((values[47] & 2047_u64) << 5) |
                ((values[48] & 2047_u64) << 16) |
                ((values[49] & 2047_u64) << 27) |
                ((values[50] & 2047_u64) << 38) |
                ((values[51] & 2047_u64) << 49) |
                ((values[52] & 2047_u64) << 60)).to_u64
    bytes[9] = (((values[52] & 2047_u64) >> 4) |
                ((values[53] & 2047_u64) << 7) |
                ((values[54] & 2047_u64) << 18) |
                ((values[55] & 2047_u64) << 29) |
                ((values[56] & 2047_u64) << 40) |
                ((values[57] & 2047_u64) << 51) |
                ((values[58] & 2047_u64) << 62)).to_u64
    bytes[10] = (((values[58] & 2047_u64) >> 2) |
                 ((values[59] & 2047_u64) << 9) |
                 ((values[60] & 2047_u64) << 20) |
                 ((values[61] & 2047_u64) << 31) |
                 ((values[62] & 2047_u64) << 42) |
                 ((values[63] & 2047_u64) << 53)).to_u64
    bytes
  end

  def self.unpack11(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2047_u64)).to_i64
    values[1] = (((bytes[0] >> 11) & 2047_u64)).to_i64
    values[2] = (((bytes[0] >> 22) & 2047_u64)).to_i64
    values[3] = (((bytes[0] >> 33) & 2047_u64)).to_i64
    values[4] = (((bytes[0] >> 44) & 2047_u64)).to_i64
    values[5] = (((bytes[0] >> 55) & 2047_u64) | ((bytes[1] & 3_u64) << 9)).to_i64
    values[6] = (((bytes[1] >> 2) & 2047_u64)).to_i64
    values[7] = (((bytes[1] >> 13) & 2047_u64)).to_i64
    values[8] = (((bytes[1] >> 24) & 2047_u64)).to_i64
    values[9] = (((bytes[1] >> 35) & 2047_u64)).to_i64
    values[10] = (((bytes[1] >> 46) & 2047_u64)).to_i64
    values[11] = (((bytes[1] >> 57) & 2047_u64) | ((bytes[2] & 15_u64) << 7)).to_i64
    values[12] = (((bytes[2] >> 4) & 2047_u64)).to_i64
    values[13] = (((bytes[2] >> 15) & 2047_u64)).to_i64
    values[14] = (((bytes[2] >> 26) & 2047_u64)).to_i64
    values[15] = (((bytes[2] >> 37) & 2047_u64)).to_i64
    values[16] = (((bytes[2] >> 48) & 2047_u64)).to_i64
    values[17] = (((bytes[2] >> 59) & 2047_u64) | ((bytes[3] & 63_u64) << 5)).to_i64
    values[18] = (((bytes[3] >> 6) & 2047_u64)).to_i64
    values[19] = (((bytes[3] >> 17) & 2047_u64)).to_i64
    values[20] = (((bytes[3] >> 28) & 2047_u64)).to_i64
    values[21] = (((bytes[3] >> 39) & 2047_u64)).to_i64
    values[22] = (((bytes[3] >> 50) & 2047_u64)).to_i64
    values[23] = (((bytes[3] >> 61) & 2047_u64) | ((bytes[4] & 255_u64) << 3)).to_i64
    values[24] = (((bytes[4] >> 8) & 2047_u64)).to_i64
    values[25] = (((bytes[4] >> 19) & 2047_u64)).to_i64
    values[26] = (((bytes[4] >> 30) & 2047_u64)).to_i64
    values[27] = (((bytes[4] >> 41) & 2047_u64)).to_i64
    values[28] = (((bytes[4] >> 52) & 2047_u64)).to_i64
    values[29] = (((bytes[4] >> 63) & 2047_u64) | ((bytes[5] & 1023_u64) << 1)).to_i64
    values[30] = (((bytes[5] >> 10) & 2047_u64)).to_i64
    values[31] = (((bytes[5] >> 21) & 2047_u64)).to_i64
    values[32] = (((bytes[5] >> 32) & 2047_u64)).to_i64
    values[33] = (((bytes[5] >> 43) & 2047_u64)).to_i64
    values[34] = (((bytes[5] >> 54) & 2047_u64) | ((bytes[6] & 1_u64) << 10)).to_i64
    values[35] = (((bytes[6] >> 1) & 2047_u64)).to_i64
    values[36] = (((bytes[6] >> 12) & 2047_u64)).to_i64
    values[37] = (((bytes[6] >> 23) & 2047_u64)).to_i64
    values[38] = (((bytes[6] >> 34) & 2047_u64)).to_i64
    values[39] = (((bytes[6] >> 45) & 2047_u64)).to_i64
    values[40] = (((bytes[6] >> 56) & 2047_u64) | ((bytes[7] & 7_u64) << 8)).to_i64
    values[41] = (((bytes[7] >> 3) & 2047_u64)).to_i64
    values[42] = (((bytes[7] >> 14) & 2047_u64)).to_i64
    values[43] = (((bytes[7] >> 25) & 2047_u64)).to_i64
    values[44] = (((bytes[7] >> 36) & 2047_u64)).to_i64
    values[45] = (((bytes[7] >> 47) & 2047_u64)).to_i64
    values[46] = (((bytes[7] >> 58) & 2047_u64) | ((bytes[8] & 31_u64) << 6)).to_i64
    values[47] = (((bytes[8] >> 5) & 2047_u64)).to_i64
    values[48] = (((bytes[8] >> 16) & 2047_u64)).to_i64
    values[49] = (((bytes[8] >> 27) & 2047_u64)).to_i64
    values[50] = (((bytes[8] >> 38) & 2047_u64)).to_i64
    values[51] = (((bytes[8] >> 49) & 2047_u64)).to_i64
    values[52] = (((bytes[8] >> 60) & 2047_u64) | ((bytes[9] & 127_u64) << 4)).to_i64
    values[53] = (((bytes[9] >> 7) & 2047_u64)).to_i64
    values[54] = (((bytes[9] >> 18) & 2047_u64)).to_i64
    values[55] = (((bytes[9] >> 29) & 2047_u64)).to_i64
    values[56] = (((bytes[9] >> 40) & 2047_u64)).to_i64
    values[57] = (((bytes[9] >> 51) & 2047_u64)).to_i64
    values[58] = (((bytes[9] >> 62) & 2047_u64) | ((bytes[10] & 511_u64) << 2)).to_i64
    values[59] = (((bytes[10] >> 9) & 2047_u64)).to_i64
    values[60] = (((bytes[10] >> 20) & 2047_u64)).to_i64
    values[61] = (((bytes[10] >> 31) & 2047_u64)).to_i64
    values[62] = (((bytes[10] >> 42) & 2047_u64)).to_i64
    values[63] = (((bytes[10] >> 53) & 2047_u64)).to_i64
    values
  end

  def self.pack12(values)
    bytes = Slice(UInt64).new(12, 0_u64)
    bytes[0] = (((values[0] & 4095_u64) << 0) |
                ((values[1] & 4095_u64) << 12) |
                ((values[2] & 4095_u64) << 24) |
                ((values[3] & 4095_u64) << 36) |
                ((values[4] & 4095_u64) << 48) |
                ((values[5] & 4095_u64) << 60)).to_u64
    bytes[1] = (((values[5] & 4095_u64) >> 4) |
                ((values[6] & 4095_u64) << 8) |
                ((values[7] & 4095_u64) << 20) |
                ((values[8] & 4095_u64) << 32) |
                ((values[9] & 4095_u64) << 44) |
                ((values[10] & 4095_u64) << 56)).to_u64
    bytes[2] = (((values[10] & 4095_u64) >> 8) |
                ((values[11] & 4095_u64) << 4) |
                ((values[12] & 4095_u64) << 16) |
                ((values[13] & 4095_u64) << 28) |
                ((values[14] & 4095_u64) << 40) |
                ((values[15] & 4095_u64) << 52)).to_u64
    bytes[3] = (((values[16] & 4095_u64) << 0) |
                ((values[17] & 4095_u64) << 12) |
                ((values[18] & 4095_u64) << 24) |
                ((values[19] & 4095_u64) << 36) |
                ((values[20] & 4095_u64) << 48) |
                ((values[21] & 4095_u64) << 60)).to_u64
    bytes[4] = (((values[21] & 4095_u64) >> 4) |
                ((values[22] & 4095_u64) << 8) |
                ((values[23] & 4095_u64) << 20) |
                ((values[24] & 4095_u64) << 32) |
                ((values[25] & 4095_u64) << 44) |
                ((values[26] & 4095_u64) << 56)).to_u64
    bytes[5] = (((values[26] & 4095_u64) >> 8) |
                ((values[27] & 4095_u64) << 4) |
                ((values[28] & 4095_u64) << 16) |
                ((values[29] & 4095_u64) << 28) |
                ((values[30] & 4095_u64) << 40) |
                ((values[31] & 4095_u64) << 52)).to_u64
    bytes[6] = (((values[32] & 4095_u64) << 0) |
                ((values[33] & 4095_u64) << 12) |
                ((values[34] & 4095_u64) << 24) |
                ((values[35] & 4095_u64) << 36) |
                ((values[36] & 4095_u64) << 48) |
                ((values[37] & 4095_u64) << 60)).to_u64
    bytes[7] = (((values[37] & 4095_u64) >> 4) |
                ((values[38] & 4095_u64) << 8) |
                ((values[39] & 4095_u64) << 20) |
                ((values[40] & 4095_u64) << 32) |
                ((values[41] & 4095_u64) << 44) |
                ((values[42] & 4095_u64) << 56)).to_u64
    bytes[8] = (((values[42] & 4095_u64) >> 8) |
                ((values[43] & 4095_u64) << 4) |
                ((values[44] & 4095_u64) << 16) |
                ((values[45] & 4095_u64) << 28) |
                ((values[46] & 4095_u64) << 40) |
                ((values[47] & 4095_u64) << 52)).to_u64
    bytes[9] = (((values[48] & 4095_u64) << 0) |
                ((values[49] & 4095_u64) << 12) |
                ((values[50] & 4095_u64) << 24) |
                ((values[51] & 4095_u64) << 36) |
                ((values[52] & 4095_u64) << 48) |
                ((values[53] & 4095_u64) << 60)).to_u64
    bytes[10] = (((values[53] & 4095_u64) >> 4) |
                 ((values[54] & 4095_u64) << 8) |
                 ((values[55] & 4095_u64) << 20) |
                 ((values[56] & 4095_u64) << 32) |
                 ((values[57] & 4095_u64) << 44) |
                 ((values[58] & 4095_u64) << 56)).to_u64
    bytes[11] = (((values[58] & 4095_u64) >> 8) |
                 ((values[59] & 4095_u64) << 4) |
                 ((values[60] & 4095_u64) << 16) |
                 ((values[61] & 4095_u64) << 28) |
                 ((values[62] & 4095_u64) << 40) |
                 ((values[63] & 4095_u64) << 52)).to_u64
    bytes
  end

  def self.unpack12(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4095_u64)).to_i64
    values[1] = (((bytes[0] >> 12) & 4095_u64)).to_i64
    values[2] = (((bytes[0] >> 24) & 4095_u64)).to_i64
    values[3] = (((bytes[0] >> 36) & 4095_u64)).to_i64
    values[4] = (((bytes[0] >> 48) & 4095_u64)).to_i64
    values[5] = (((bytes[0] >> 60) & 4095_u64) | ((bytes[1] & 255_u64) << 4)).to_i64
    values[6] = (((bytes[1] >> 8) & 4095_u64)).to_i64
    values[7] = (((bytes[1] >> 20) & 4095_u64)).to_i64
    values[8] = (((bytes[1] >> 32) & 4095_u64)).to_i64
    values[9] = (((bytes[1] >> 44) & 4095_u64)).to_i64
    values[10] = (((bytes[1] >> 56) & 4095_u64) | ((bytes[2] & 15_u64) << 8)).to_i64
    values[11] = (((bytes[2] >> 4) & 4095_u64)).to_i64
    values[12] = (((bytes[2] >> 16) & 4095_u64)).to_i64
    values[13] = (((bytes[2] >> 28) & 4095_u64)).to_i64
    values[14] = (((bytes[2] >> 40) & 4095_u64)).to_i64
    values[15] = (((bytes[2] >> 52) & 4095_u64)).to_i64
    values[16] = (((bytes[3] >> 0) & 4095_u64)).to_i64
    values[17] = (((bytes[3] >> 12) & 4095_u64)).to_i64
    values[18] = (((bytes[3] >> 24) & 4095_u64)).to_i64
    values[19] = (((bytes[3] >> 36) & 4095_u64)).to_i64
    values[20] = (((bytes[3] >> 48) & 4095_u64)).to_i64
    values[21] = (((bytes[3] >> 60) & 4095_u64) | ((bytes[4] & 255_u64) << 4)).to_i64
    values[22] = (((bytes[4] >> 8) & 4095_u64)).to_i64
    values[23] = (((bytes[4] >> 20) & 4095_u64)).to_i64
    values[24] = (((bytes[4] >> 32) & 4095_u64)).to_i64
    values[25] = (((bytes[4] >> 44) & 4095_u64)).to_i64
    values[26] = (((bytes[4] >> 56) & 4095_u64) | ((bytes[5] & 15_u64) << 8)).to_i64
    values[27] = (((bytes[5] >> 4) & 4095_u64)).to_i64
    values[28] = (((bytes[5] >> 16) & 4095_u64)).to_i64
    values[29] = (((bytes[5] >> 28) & 4095_u64)).to_i64
    values[30] = (((bytes[5] >> 40) & 4095_u64)).to_i64
    values[31] = (((bytes[5] >> 52) & 4095_u64)).to_i64
    values[32] = (((bytes[6] >> 0) & 4095_u64)).to_i64
    values[33] = (((bytes[6] >> 12) & 4095_u64)).to_i64
    values[34] = (((bytes[6] >> 24) & 4095_u64)).to_i64
    values[35] = (((bytes[6] >> 36) & 4095_u64)).to_i64
    values[36] = (((bytes[6] >> 48) & 4095_u64)).to_i64
    values[37] = (((bytes[6] >> 60) & 4095_u64) | ((bytes[7] & 255_u64) << 4)).to_i64
    values[38] = (((bytes[7] >> 8) & 4095_u64)).to_i64
    values[39] = (((bytes[7] >> 20) & 4095_u64)).to_i64
    values[40] = (((bytes[7] >> 32) & 4095_u64)).to_i64
    values[41] = (((bytes[7] >> 44) & 4095_u64)).to_i64
    values[42] = (((bytes[7] >> 56) & 4095_u64) | ((bytes[8] & 15_u64) << 8)).to_i64
    values[43] = (((bytes[8] >> 4) & 4095_u64)).to_i64
    values[44] = (((bytes[8] >> 16) & 4095_u64)).to_i64
    values[45] = (((bytes[8] >> 28) & 4095_u64)).to_i64
    values[46] = (((bytes[8] >> 40) & 4095_u64)).to_i64
    values[47] = (((bytes[8] >> 52) & 4095_u64)).to_i64
    values[48] = (((bytes[9] >> 0) & 4095_u64)).to_i64
    values[49] = (((bytes[9] >> 12) & 4095_u64)).to_i64
    values[50] = (((bytes[9] >> 24) & 4095_u64)).to_i64
    values[51] = (((bytes[9] >> 36) & 4095_u64)).to_i64
    values[52] = (((bytes[9] >> 48) & 4095_u64)).to_i64
    values[53] = (((bytes[9] >> 60) & 4095_u64) | ((bytes[10] & 255_u64) << 4)).to_i64
    values[54] = (((bytes[10] >> 8) & 4095_u64)).to_i64
    values[55] = (((bytes[10] >> 20) & 4095_u64)).to_i64
    values[56] = (((bytes[10] >> 32) & 4095_u64)).to_i64
    values[57] = (((bytes[10] >> 44) & 4095_u64)).to_i64
    values[58] = (((bytes[10] >> 56) & 4095_u64) | ((bytes[11] & 15_u64) << 8)).to_i64
    values[59] = (((bytes[11] >> 4) & 4095_u64)).to_i64
    values[60] = (((bytes[11] >> 16) & 4095_u64)).to_i64
    values[61] = (((bytes[11] >> 28) & 4095_u64)).to_i64
    values[62] = (((bytes[11] >> 40) & 4095_u64)).to_i64
    values[63] = (((bytes[11] >> 52) & 4095_u64)).to_i64
    values
  end

  def self.pack13(values)
    bytes = Slice(UInt64).new(13, 0_u64)
    bytes[0] = (((values[0] & 8191_u64) << 0) |
                ((values[1] & 8191_u64) << 13) |
                ((values[2] & 8191_u64) << 26) |
                ((values[3] & 8191_u64) << 39) |
                ((values[4] & 8191_u64) << 52)).to_u64
    bytes[1] = (((values[4] & 8191_u64) >> 12) |
                ((values[5] & 8191_u64) << 1) |
                ((values[6] & 8191_u64) << 14) |
                ((values[7] & 8191_u64) << 27) |
                ((values[8] & 8191_u64) << 40) |
                ((values[9] & 8191_u64) << 53)).to_u64
    bytes[2] = (((values[9] & 8191_u64) >> 11) |
                ((values[10] & 8191_u64) << 2) |
                ((values[11] & 8191_u64) << 15) |
                ((values[12] & 8191_u64) << 28) |
                ((values[13] & 8191_u64) << 41) |
                ((values[14] & 8191_u64) << 54)).to_u64
    bytes[3] = (((values[14] & 8191_u64) >> 10) |
                ((values[15] & 8191_u64) << 3) |
                ((values[16] & 8191_u64) << 16) |
                ((values[17] & 8191_u64) << 29) |
                ((values[18] & 8191_u64) << 42) |
                ((values[19] & 8191_u64) << 55)).to_u64
    bytes[4] = (((values[19] & 8191_u64) >> 9) |
                ((values[20] & 8191_u64) << 4) |
                ((values[21] & 8191_u64) << 17) |
                ((values[22] & 8191_u64) << 30) |
                ((values[23] & 8191_u64) << 43) |
                ((values[24] & 8191_u64) << 56)).to_u64
    bytes[5] = (((values[24] & 8191_u64) >> 8) |
                ((values[25] & 8191_u64) << 5) |
                ((values[26] & 8191_u64) << 18) |
                ((values[27] & 8191_u64) << 31) |
                ((values[28] & 8191_u64) << 44) |
                ((values[29] & 8191_u64) << 57)).to_u64
    bytes[6] = (((values[29] & 8191_u64) >> 7) |
                ((values[30] & 8191_u64) << 6) |
                ((values[31] & 8191_u64) << 19) |
                ((values[32] & 8191_u64) << 32) |
                ((values[33] & 8191_u64) << 45) |
                ((values[34] & 8191_u64) << 58)).to_u64
    bytes[7] = (((values[34] & 8191_u64) >> 6) |
                ((values[35] & 8191_u64) << 7) |
                ((values[36] & 8191_u64) << 20) |
                ((values[37] & 8191_u64) << 33) |
                ((values[38] & 8191_u64) << 46) |
                ((values[39] & 8191_u64) << 59)).to_u64
    bytes[8] = (((values[39] & 8191_u64) >> 5) |
                ((values[40] & 8191_u64) << 8) |
                ((values[41] & 8191_u64) << 21) |
                ((values[42] & 8191_u64) << 34) |
                ((values[43] & 8191_u64) << 47) |
                ((values[44] & 8191_u64) << 60)).to_u64
    bytes[9] = (((values[44] & 8191_u64) >> 4) |
                ((values[45] & 8191_u64) << 9) |
                ((values[46] & 8191_u64) << 22) |
                ((values[47] & 8191_u64) << 35) |
                ((values[48] & 8191_u64) << 48) |
                ((values[49] & 8191_u64) << 61)).to_u64
    bytes[10] = (((values[49] & 8191_u64) >> 3) |
                 ((values[50] & 8191_u64) << 10) |
                 ((values[51] & 8191_u64) << 23) |
                 ((values[52] & 8191_u64) << 36) |
                 ((values[53] & 8191_u64) << 49) |
                 ((values[54] & 8191_u64) << 62)).to_u64
    bytes[11] = (((values[54] & 8191_u64) >> 2) |
                 ((values[55] & 8191_u64) << 11) |
                 ((values[56] & 8191_u64) << 24) |
                 ((values[57] & 8191_u64) << 37) |
                 ((values[58] & 8191_u64) << 50) |
                 ((values[59] & 8191_u64) << 63)).to_u64
    bytes[12] = (((values[59] & 8191_u64) >> 1) |
                 ((values[60] & 8191_u64) << 12) |
                 ((values[61] & 8191_u64) << 25) |
                 ((values[62] & 8191_u64) << 38) |
                 ((values[63] & 8191_u64) << 51)).to_u64
    bytes
  end

  def self.unpack13(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 8191_u64)).to_i64
    values[1] = (((bytes[0] >> 13) & 8191_u64)).to_i64
    values[2] = (((bytes[0] >> 26) & 8191_u64)).to_i64
    values[3] = (((bytes[0] >> 39) & 8191_u64)).to_i64
    values[4] = (((bytes[0] >> 52) & 8191_u64) | ((bytes[1] & 1_u64) << 12)).to_i64
    values[5] = (((bytes[1] >> 1) & 8191_u64)).to_i64
    values[6] = (((bytes[1] >> 14) & 8191_u64)).to_i64
    values[7] = (((bytes[1] >> 27) & 8191_u64)).to_i64
    values[8] = (((bytes[1] >> 40) & 8191_u64)).to_i64
    values[9] = (((bytes[1] >> 53) & 8191_u64) | ((bytes[2] & 3_u64) << 11)).to_i64
    values[10] = (((bytes[2] >> 2) & 8191_u64)).to_i64
    values[11] = (((bytes[2] >> 15) & 8191_u64)).to_i64
    values[12] = (((bytes[2] >> 28) & 8191_u64)).to_i64
    values[13] = (((bytes[2] >> 41) & 8191_u64)).to_i64
    values[14] = (((bytes[2] >> 54) & 8191_u64) | ((bytes[3] & 7_u64) << 10)).to_i64
    values[15] = (((bytes[3] >> 3) & 8191_u64)).to_i64
    values[16] = (((bytes[3] >> 16) & 8191_u64)).to_i64
    values[17] = (((bytes[3] >> 29) & 8191_u64)).to_i64
    values[18] = (((bytes[3] >> 42) & 8191_u64)).to_i64
    values[19] = (((bytes[3] >> 55) & 8191_u64) | ((bytes[4] & 15_u64) << 9)).to_i64
    values[20] = (((bytes[4] >> 4) & 8191_u64)).to_i64
    values[21] = (((bytes[4] >> 17) & 8191_u64)).to_i64
    values[22] = (((bytes[4] >> 30) & 8191_u64)).to_i64
    values[23] = (((bytes[4] >> 43) & 8191_u64)).to_i64
    values[24] = (((bytes[4] >> 56) & 8191_u64) | ((bytes[5] & 31_u64) << 8)).to_i64
    values[25] = (((bytes[5] >> 5) & 8191_u64)).to_i64
    values[26] = (((bytes[5] >> 18) & 8191_u64)).to_i64
    values[27] = (((bytes[5] >> 31) & 8191_u64)).to_i64
    values[28] = (((bytes[5] >> 44) & 8191_u64)).to_i64
    values[29] = (((bytes[5] >> 57) & 8191_u64) | ((bytes[6] & 63_u64) << 7)).to_i64
    values[30] = (((bytes[6] >> 6) & 8191_u64)).to_i64
    values[31] = (((bytes[6] >> 19) & 8191_u64)).to_i64
    values[32] = (((bytes[6] >> 32) & 8191_u64)).to_i64
    values[33] = (((bytes[6] >> 45) & 8191_u64)).to_i64
    values[34] = (((bytes[6] >> 58) & 8191_u64) | ((bytes[7] & 127_u64) << 6)).to_i64
    values[35] = (((bytes[7] >> 7) & 8191_u64)).to_i64
    values[36] = (((bytes[7] >> 20) & 8191_u64)).to_i64
    values[37] = (((bytes[7] >> 33) & 8191_u64)).to_i64
    values[38] = (((bytes[7] >> 46) & 8191_u64)).to_i64
    values[39] = (((bytes[7] >> 59) & 8191_u64) | ((bytes[8] & 255_u64) << 5)).to_i64
    values[40] = (((bytes[8] >> 8) & 8191_u64)).to_i64
    values[41] = (((bytes[8] >> 21) & 8191_u64)).to_i64
    values[42] = (((bytes[8] >> 34) & 8191_u64)).to_i64
    values[43] = (((bytes[8] >> 47) & 8191_u64)).to_i64
    values[44] = (((bytes[8] >> 60) & 8191_u64) | ((bytes[9] & 511_u64) << 4)).to_i64
    values[45] = (((bytes[9] >> 9) & 8191_u64)).to_i64
    values[46] = (((bytes[9] >> 22) & 8191_u64)).to_i64
    values[47] = (((bytes[9] >> 35) & 8191_u64)).to_i64
    values[48] = (((bytes[9] >> 48) & 8191_u64)).to_i64
    values[49] = (((bytes[9] >> 61) & 8191_u64) | ((bytes[10] & 1023_u64) << 3)).to_i64
    values[50] = (((bytes[10] >> 10) & 8191_u64)).to_i64
    values[51] = (((bytes[10] >> 23) & 8191_u64)).to_i64
    values[52] = (((bytes[10] >> 36) & 8191_u64)).to_i64
    values[53] = (((bytes[10] >> 49) & 8191_u64)).to_i64
    values[54] = (((bytes[10] >> 62) & 8191_u64) | ((bytes[11] & 2047_u64) << 2)).to_i64
    values[55] = (((bytes[11] >> 11) & 8191_u64)).to_i64
    values[56] = (((bytes[11] >> 24) & 8191_u64)).to_i64
    values[57] = (((bytes[11] >> 37) & 8191_u64)).to_i64
    values[58] = (((bytes[11] >> 50) & 8191_u64)).to_i64
    values[59] = (((bytes[11] >> 63) & 8191_u64) | ((bytes[12] & 4095_u64) << 1)).to_i64
    values[60] = (((bytes[12] >> 12) & 8191_u64)).to_i64
    values[61] = (((bytes[12] >> 25) & 8191_u64)).to_i64
    values[62] = (((bytes[12] >> 38) & 8191_u64)).to_i64
    values[63] = (((bytes[12] >> 51) & 8191_u64)).to_i64
    values
  end

  def self.pack14(values)
    bytes = Slice(UInt64).new(14, 0_u64)
    bytes[0] = (((values[0] & 16383_u64) << 0) |
                ((values[1] & 16383_u64) << 14) |
                ((values[2] & 16383_u64) << 28) |
                ((values[3] & 16383_u64) << 42) |
                ((values[4] & 16383_u64) << 56)).to_u64
    bytes[1] = (((values[4] & 16383_u64) >> 8) |
                ((values[5] & 16383_u64) << 6) |
                ((values[6] & 16383_u64) << 20) |
                ((values[7] & 16383_u64) << 34) |
                ((values[8] & 16383_u64) << 48) |
                ((values[9] & 16383_u64) << 62)).to_u64
    bytes[2] = (((values[9] & 16383_u64) >> 2) |
                ((values[10] & 16383_u64) << 12) |
                ((values[11] & 16383_u64) << 26) |
                ((values[12] & 16383_u64) << 40) |
                ((values[13] & 16383_u64) << 54)).to_u64
    bytes[3] = (((values[13] & 16383_u64) >> 10) |
                ((values[14] & 16383_u64) << 4) |
                ((values[15] & 16383_u64) << 18) |
                ((values[16] & 16383_u64) << 32) |
                ((values[17] & 16383_u64) << 46) |
                ((values[18] & 16383_u64) << 60)).to_u64
    bytes[4] = (((values[18] & 16383_u64) >> 4) |
                ((values[19] & 16383_u64) << 10) |
                ((values[20] & 16383_u64) << 24) |
                ((values[21] & 16383_u64) << 38) |
                ((values[22] & 16383_u64) << 52)).to_u64
    bytes[5] = (((values[22] & 16383_u64) >> 12) |
                ((values[23] & 16383_u64) << 2) |
                ((values[24] & 16383_u64) << 16) |
                ((values[25] & 16383_u64) << 30) |
                ((values[26] & 16383_u64) << 44) |
                ((values[27] & 16383_u64) << 58)).to_u64
    bytes[6] = (((values[27] & 16383_u64) >> 6) |
                ((values[28] & 16383_u64) << 8) |
                ((values[29] & 16383_u64) << 22) |
                ((values[30] & 16383_u64) << 36) |
                ((values[31] & 16383_u64) << 50)).to_u64
    bytes[7] = (((values[32] & 16383_u64) << 0) |
                ((values[33] & 16383_u64) << 14) |
                ((values[34] & 16383_u64) << 28) |
                ((values[35] & 16383_u64) << 42) |
                ((values[36] & 16383_u64) << 56)).to_u64
    bytes[8] = (((values[36] & 16383_u64) >> 8) |
                ((values[37] & 16383_u64) << 6) |
                ((values[38] & 16383_u64) << 20) |
                ((values[39] & 16383_u64) << 34) |
                ((values[40] & 16383_u64) << 48) |
                ((values[41] & 16383_u64) << 62)).to_u64
    bytes[9] = (((values[41] & 16383_u64) >> 2) |
                ((values[42] & 16383_u64) << 12) |
                ((values[43] & 16383_u64) << 26) |
                ((values[44] & 16383_u64) << 40) |
                ((values[45] & 16383_u64) << 54)).to_u64
    bytes[10] = (((values[45] & 16383_u64) >> 10) |
                 ((values[46] & 16383_u64) << 4) |
                 ((values[47] & 16383_u64) << 18) |
                 ((values[48] & 16383_u64) << 32) |
                 ((values[49] & 16383_u64) << 46) |
                 ((values[50] & 16383_u64) << 60)).to_u64
    bytes[11] = (((values[50] & 16383_u64) >> 4) |
                 ((values[51] & 16383_u64) << 10) |
                 ((values[52] & 16383_u64) << 24) |
                 ((values[53] & 16383_u64) << 38) |
                 ((values[54] & 16383_u64) << 52)).to_u64
    bytes[12] = (((values[54] & 16383_u64) >> 12) |
                 ((values[55] & 16383_u64) << 2) |
                 ((values[56] & 16383_u64) << 16) |
                 ((values[57] & 16383_u64) << 30) |
                 ((values[58] & 16383_u64) << 44) |
                 ((values[59] & 16383_u64) << 58)).to_u64
    bytes[13] = (((values[59] & 16383_u64) >> 6) |
                 ((values[60] & 16383_u64) << 8) |
                 ((values[61] & 16383_u64) << 22) |
                 ((values[62] & 16383_u64) << 36) |
                 ((values[63] & 16383_u64) << 50)).to_u64
    bytes
  end

  def self.unpack14(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 16383_u64)).to_i64
    values[1] = (((bytes[0] >> 14) & 16383_u64)).to_i64
    values[2] = (((bytes[0] >> 28) & 16383_u64)).to_i64
    values[3] = (((bytes[0] >> 42) & 16383_u64)).to_i64
    values[4] = (((bytes[0] >> 56) & 16383_u64) | ((bytes[1] & 63_u64) << 8)).to_i64
    values[5] = (((bytes[1] >> 6) & 16383_u64)).to_i64
    values[6] = (((bytes[1] >> 20) & 16383_u64)).to_i64
    values[7] = (((bytes[1] >> 34) & 16383_u64)).to_i64
    values[8] = (((bytes[1] >> 48) & 16383_u64)).to_i64
    values[9] = (((bytes[1] >> 62) & 16383_u64) | ((bytes[2] & 4095_u64) << 2)).to_i64
    values[10] = (((bytes[2] >> 12) & 16383_u64)).to_i64
    values[11] = (((bytes[2] >> 26) & 16383_u64)).to_i64
    values[12] = (((bytes[2] >> 40) & 16383_u64)).to_i64
    values[13] = (((bytes[2] >> 54) & 16383_u64) | ((bytes[3] & 15_u64) << 10)).to_i64
    values[14] = (((bytes[3] >> 4) & 16383_u64)).to_i64
    values[15] = (((bytes[3] >> 18) & 16383_u64)).to_i64
    values[16] = (((bytes[3] >> 32) & 16383_u64)).to_i64
    values[17] = (((bytes[3] >> 46) & 16383_u64)).to_i64
    values[18] = (((bytes[3] >> 60) & 16383_u64) | ((bytes[4] & 1023_u64) << 4)).to_i64
    values[19] = (((bytes[4] >> 10) & 16383_u64)).to_i64
    values[20] = (((bytes[4] >> 24) & 16383_u64)).to_i64
    values[21] = (((bytes[4] >> 38) & 16383_u64)).to_i64
    values[22] = (((bytes[4] >> 52) & 16383_u64) | ((bytes[5] & 3_u64) << 12)).to_i64
    values[23] = (((bytes[5] >> 2) & 16383_u64)).to_i64
    values[24] = (((bytes[5] >> 16) & 16383_u64)).to_i64
    values[25] = (((bytes[5] >> 30) & 16383_u64)).to_i64
    values[26] = (((bytes[5] >> 44) & 16383_u64)).to_i64
    values[27] = (((bytes[5] >> 58) & 16383_u64) | ((bytes[6] & 255_u64) << 6)).to_i64
    values[28] = (((bytes[6] >> 8) & 16383_u64)).to_i64
    values[29] = (((bytes[6] >> 22) & 16383_u64)).to_i64
    values[30] = (((bytes[6] >> 36) & 16383_u64)).to_i64
    values[31] = (((bytes[6] >> 50) & 16383_u64)).to_i64
    values[32] = (((bytes[7] >> 0) & 16383_u64)).to_i64
    values[33] = (((bytes[7] >> 14) & 16383_u64)).to_i64
    values[34] = (((bytes[7] >> 28) & 16383_u64)).to_i64
    values[35] = (((bytes[7] >> 42) & 16383_u64)).to_i64
    values[36] = (((bytes[7] >> 56) & 16383_u64) | ((bytes[8] & 63_u64) << 8)).to_i64
    values[37] = (((bytes[8] >> 6) & 16383_u64)).to_i64
    values[38] = (((bytes[8] >> 20) & 16383_u64)).to_i64
    values[39] = (((bytes[8] >> 34) & 16383_u64)).to_i64
    values[40] = (((bytes[8] >> 48) & 16383_u64)).to_i64
    values[41] = (((bytes[8] >> 62) & 16383_u64) | ((bytes[9] & 4095_u64) << 2)).to_i64
    values[42] = (((bytes[9] >> 12) & 16383_u64)).to_i64
    values[43] = (((bytes[9] >> 26) & 16383_u64)).to_i64
    values[44] = (((bytes[9] >> 40) & 16383_u64)).to_i64
    values[45] = (((bytes[9] >> 54) & 16383_u64) | ((bytes[10] & 15_u64) << 10)).to_i64
    values[46] = (((bytes[10] >> 4) & 16383_u64)).to_i64
    values[47] = (((bytes[10] >> 18) & 16383_u64)).to_i64
    values[48] = (((bytes[10] >> 32) & 16383_u64)).to_i64
    values[49] = (((bytes[10] >> 46) & 16383_u64)).to_i64
    values[50] = (((bytes[10] >> 60) & 16383_u64) | ((bytes[11] & 1023_u64) << 4)).to_i64
    values[51] = (((bytes[11] >> 10) & 16383_u64)).to_i64
    values[52] = (((bytes[11] >> 24) & 16383_u64)).to_i64
    values[53] = (((bytes[11] >> 38) & 16383_u64)).to_i64
    values[54] = (((bytes[11] >> 52) & 16383_u64) | ((bytes[12] & 3_u64) << 12)).to_i64
    values[55] = (((bytes[12] >> 2) & 16383_u64)).to_i64
    values[56] = (((bytes[12] >> 16) & 16383_u64)).to_i64
    values[57] = (((bytes[12] >> 30) & 16383_u64)).to_i64
    values[58] = (((bytes[12] >> 44) & 16383_u64)).to_i64
    values[59] = (((bytes[12] >> 58) & 16383_u64) | ((bytes[13] & 255_u64) << 6)).to_i64
    values[60] = (((bytes[13] >> 8) & 16383_u64)).to_i64
    values[61] = (((bytes[13] >> 22) & 16383_u64)).to_i64
    values[62] = (((bytes[13] >> 36) & 16383_u64)).to_i64
    values[63] = (((bytes[13] >> 50) & 16383_u64)).to_i64
    values
  end

  def self.pack15(values)
    bytes = Slice(UInt64).new(15, 0_u64)
    bytes[0] = (((values[0] & 32767_u64) << 0) |
                ((values[1] & 32767_u64) << 15) |
                ((values[2] & 32767_u64) << 30) |
                ((values[3] & 32767_u64) << 45) |
                ((values[4] & 32767_u64) << 60)).to_u64
    bytes[1] = (((values[4] & 32767_u64) >> 4) |
                ((values[5] & 32767_u64) << 11) |
                ((values[6] & 32767_u64) << 26) |
                ((values[7] & 32767_u64) << 41) |
                ((values[8] & 32767_u64) << 56)).to_u64
    bytes[2] = (((values[8] & 32767_u64) >> 8) |
                ((values[9] & 32767_u64) << 7) |
                ((values[10] & 32767_u64) << 22) |
                ((values[11] & 32767_u64) << 37) |
                ((values[12] & 32767_u64) << 52)).to_u64
    bytes[3] = (((values[12] & 32767_u64) >> 12) |
                ((values[13] & 32767_u64) << 3) |
                ((values[14] & 32767_u64) << 18) |
                ((values[15] & 32767_u64) << 33) |
                ((values[16] & 32767_u64) << 48) |
                ((values[17] & 32767_u64) << 63)).to_u64
    bytes[4] = (((values[17] & 32767_u64) >> 1) |
                ((values[18] & 32767_u64) << 14) |
                ((values[19] & 32767_u64) << 29) |
                ((values[20] & 32767_u64) << 44) |
                ((values[21] & 32767_u64) << 59)).to_u64
    bytes[5] = (((values[21] & 32767_u64) >> 5) |
                ((values[22] & 32767_u64) << 10) |
                ((values[23] & 32767_u64) << 25) |
                ((values[24] & 32767_u64) << 40) |
                ((values[25] & 32767_u64) << 55)).to_u64
    bytes[6] = (((values[25] & 32767_u64) >> 9) |
                ((values[26] & 32767_u64) << 6) |
                ((values[27] & 32767_u64) << 21) |
                ((values[28] & 32767_u64) << 36) |
                ((values[29] & 32767_u64) << 51)).to_u64
    bytes[7] = (((values[29] & 32767_u64) >> 13) |
                ((values[30] & 32767_u64) << 2) |
                ((values[31] & 32767_u64) << 17) |
                ((values[32] & 32767_u64) << 32) |
                ((values[33] & 32767_u64) << 47) |
                ((values[34] & 32767_u64) << 62)).to_u64
    bytes[8] = (((values[34] & 32767_u64) >> 2) |
                ((values[35] & 32767_u64) << 13) |
                ((values[36] & 32767_u64) << 28) |
                ((values[37] & 32767_u64) << 43) |
                ((values[38] & 32767_u64) << 58)).to_u64
    bytes[9] = (((values[38] & 32767_u64) >> 6) |
                ((values[39] & 32767_u64) << 9) |
                ((values[40] & 32767_u64) << 24) |
                ((values[41] & 32767_u64) << 39) |
                ((values[42] & 32767_u64) << 54)).to_u64
    bytes[10] = (((values[42] & 32767_u64) >> 10) |
                 ((values[43] & 32767_u64) << 5) |
                 ((values[44] & 32767_u64) << 20) |
                 ((values[45] & 32767_u64) << 35) |
                 ((values[46] & 32767_u64) << 50)).to_u64
    bytes[11] = (((values[46] & 32767_u64) >> 14) |
                 ((values[47] & 32767_u64) << 1) |
                 ((values[48] & 32767_u64) << 16) |
                 ((values[49] & 32767_u64) << 31) |
                 ((values[50] & 32767_u64) << 46) |
                 ((values[51] & 32767_u64) << 61)).to_u64
    bytes[12] = (((values[51] & 32767_u64) >> 3) |
                 ((values[52] & 32767_u64) << 12) |
                 ((values[53] & 32767_u64) << 27) |
                 ((values[54] & 32767_u64) << 42) |
                 ((values[55] & 32767_u64) << 57)).to_u64
    bytes[13] = (((values[55] & 32767_u64) >> 7) |
                 ((values[56] & 32767_u64) << 8) |
                 ((values[57] & 32767_u64) << 23) |
                 ((values[58] & 32767_u64) << 38) |
                 ((values[59] & 32767_u64) << 53)).to_u64
    bytes[14] = (((values[59] & 32767_u64) >> 11) |
                 ((values[60] & 32767_u64) << 4) |
                 ((values[61] & 32767_u64) << 19) |
                 ((values[62] & 32767_u64) << 34) |
                 ((values[63] & 32767_u64) << 49)).to_u64
    bytes
  end

  def self.unpack15(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 32767_u64)).to_i64
    values[1] = (((bytes[0] >> 15) & 32767_u64)).to_i64
    values[2] = (((bytes[0] >> 30) & 32767_u64)).to_i64
    values[3] = (((bytes[0] >> 45) & 32767_u64)).to_i64
    values[4] = (((bytes[0] >> 60) & 32767_u64) | ((bytes[1] & 2047_u64) << 4)).to_i64
    values[5] = (((bytes[1] >> 11) & 32767_u64)).to_i64
    values[6] = (((bytes[1] >> 26) & 32767_u64)).to_i64
    values[7] = (((bytes[1] >> 41) & 32767_u64)).to_i64
    values[8] = (((bytes[1] >> 56) & 32767_u64) | ((bytes[2] & 127_u64) << 8)).to_i64
    values[9] = (((bytes[2] >> 7) & 32767_u64)).to_i64
    values[10] = (((bytes[2] >> 22) & 32767_u64)).to_i64
    values[11] = (((bytes[2] >> 37) & 32767_u64)).to_i64
    values[12] = (((bytes[2] >> 52) & 32767_u64) | ((bytes[3] & 7_u64) << 12)).to_i64
    values[13] = (((bytes[3] >> 3) & 32767_u64)).to_i64
    values[14] = (((bytes[3] >> 18) & 32767_u64)).to_i64
    values[15] = (((bytes[3] >> 33) & 32767_u64)).to_i64
    values[16] = (((bytes[3] >> 48) & 32767_u64)).to_i64
    values[17] = (((bytes[3] >> 63) & 32767_u64) | ((bytes[4] & 16383_u64) << 1)).to_i64
    values[18] = (((bytes[4] >> 14) & 32767_u64)).to_i64
    values[19] = (((bytes[4] >> 29) & 32767_u64)).to_i64
    values[20] = (((bytes[4] >> 44) & 32767_u64)).to_i64
    values[21] = (((bytes[4] >> 59) & 32767_u64) | ((bytes[5] & 1023_u64) << 5)).to_i64
    values[22] = (((bytes[5] >> 10) & 32767_u64)).to_i64
    values[23] = (((bytes[5] >> 25) & 32767_u64)).to_i64
    values[24] = (((bytes[5] >> 40) & 32767_u64)).to_i64
    values[25] = (((bytes[5] >> 55) & 32767_u64) | ((bytes[6] & 63_u64) << 9)).to_i64
    values[26] = (((bytes[6] >> 6) & 32767_u64)).to_i64
    values[27] = (((bytes[6] >> 21) & 32767_u64)).to_i64
    values[28] = (((bytes[6] >> 36) & 32767_u64)).to_i64
    values[29] = (((bytes[6] >> 51) & 32767_u64) | ((bytes[7] & 3_u64) << 13)).to_i64
    values[30] = (((bytes[7] >> 2) & 32767_u64)).to_i64
    values[31] = (((bytes[7] >> 17) & 32767_u64)).to_i64
    values[32] = (((bytes[7] >> 32) & 32767_u64)).to_i64
    values[33] = (((bytes[7] >> 47) & 32767_u64)).to_i64
    values[34] = (((bytes[7] >> 62) & 32767_u64) | ((bytes[8] & 8191_u64) << 2)).to_i64
    values[35] = (((bytes[8] >> 13) & 32767_u64)).to_i64
    values[36] = (((bytes[8] >> 28) & 32767_u64)).to_i64
    values[37] = (((bytes[8] >> 43) & 32767_u64)).to_i64
    values[38] = (((bytes[8] >> 58) & 32767_u64) | ((bytes[9] & 511_u64) << 6)).to_i64
    values[39] = (((bytes[9] >> 9) & 32767_u64)).to_i64
    values[40] = (((bytes[9] >> 24) & 32767_u64)).to_i64
    values[41] = (((bytes[9] >> 39) & 32767_u64)).to_i64
    values[42] = (((bytes[9] >> 54) & 32767_u64) | ((bytes[10] & 31_u64) << 10)).to_i64
    values[43] = (((bytes[10] >> 5) & 32767_u64)).to_i64
    values[44] = (((bytes[10] >> 20) & 32767_u64)).to_i64
    values[45] = (((bytes[10] >> 35) & 32767_u64)).to_i64
    values[46] = (((bytes[10] >> 50) & 32767_u64) | ((bytes[11] & 1_u64) << 14)).to_i64
    values[47] = (((bytes[11] >> 1) & 32767_u64)).to_i64
    values[48] = (((bytes[11] >> 16) & 32767_u64)).to_i64
    values[49] = (((bytes[11] >> 31) & 32767_u64)).to_i64
    values[50] = (((bytes[11] >> 46) & 32767_u64)).to_i64
    values[51] = (((bytes[11] >> 61) & 32767_u64) | ((bytes[12] & 4095_u64) << 3)).to_i64
    values[52] = (((bytes[12] >> 12) & 32767_u64)).to_i64
    values[53] = (((bytes[12] >> 27) & 32767_u64)).to_i64
    values[54] = (((bytes[12] >> 42) & 32767_u64)).to_i64
    values[55] = (((bytes[12] >> 57) & 32767_u64) | ((bytes[13] & 255_u64) << 7)).to_i64
    values[56] = (((bytes[13] >> 8) & 32767_u64)).to_i64
    values[57] = (((bytes[13] >> 23) & 32767_u64)).to_i64
    values[58] = (((bytes[13] >> 38) & 32767_u64)).to_i64
    values[59] = (((bytes[13] >> 53) & 32767_u64) | ((bytes[14] & 15_u64) << 11)).to_i64
    values[60] = (((bytes[14] >> 4) & 32767_u64)).to_i64
    values[61] = (((bytes[14] >> 19) & 32767_u64)).to_i64
    values[62] = (((bytes[14] >> 34) & 32767_u64)).to_i64
    values[63] = (((bytes[14] >> 49) & 32767_u64)).to_i64
    values
  end

  def self.pack16(values)
    bytes = Slice(UInt64).new(16, 0_u64)
    bytes[0] = (((values[0] & 65535_u64) << 0) |
                ((values[1] & 65535_u64) << 16) |
                ((values[2] & 65535_u64) << 32) |
                ((values[3] & 65535_u64) << 48)).to_u64
    bytes[1] = (((values[4] & 65535_u64) << 0) |
                ((values[5] & 65535_u64) << 16) |
                ((values[6] & 65535_u64) << 32) |
                ((values[7] & 65535_u64) << 48)).to_u64
    bytes[2] = (((values[8] & 65535_u64) << 0) |
                ((values[9] & 65535_u64) << 16) |
                ((values[10] & 65535_u64) << 32) |
                ((values[11] & 65535_u64) << 48)).to_u64
    bytes[3] = (((values[12] & 65535_u64) << 0) |
                ((values[13] & 65535_u64) << 16) |
                ((values[14] & 65535_u64) << 32) |
                ((values[15] & 65535_u64) << 48)).to_u64
    bytes[4] = (((values[16] & 65535_u64) << 0) |
                ((values[17] & 65535_u64) << 16) |
                ((values[18] & 65535_u64) << 32) |
                ((values[19] & 65535_u64) << 48)).to_u64
    bytes[5] = (((values[20] & 65535_u64) << 0) |
                ((values[21] & 65535_u64) << 16) |
                ((values[22] & 65535_u64) << 32) |
                ((values[23] & 65535_u64) << 48)).to_u64
    bytes[6] = (((values[24] & 65535_u64) << 0) |
                ((values[25] & 65535_u64) << 16) |
                ((values[26] & 65535_u64) << 32) |
                ((values[27] & 65535_u64) << 48)).to_u64
    bytes[7] = (((values[28] & 65535_u64) << 0) |
                ((values[29] & 65535_u64) << 16) |
                ((values[30] & 65535_u64) << 32) |
                ((values[31] & 65535_u64) << 48)).to_u64
    bytes[8] = (((values[32] & 65535_u64) << 0) |
                ((values[33] & 65535_u64) << 16) |
                ((values[34] & 65535_u64) << 32) |
                ((values[35] & 65535_u64) << 48)).to_u64
    bytes[9] = (((values[36] & 65535_u64) << 0) |
                ((values[37] & 65535_u64) << 16) |
                ((values[38] & 65535_u64) << 32) |
                ((values[39] & 65535_u64) << 48)).to_u64
    bytes[10] = (((values[40] & 65535_u64) << 0) |
                 ((values[41] & 65535_u64) << 16) |
                 ((values[42] & 65535_u64) << 32) |
                 ((values[43] & 65535_u64) << 48)).to_u64
    bytes[11] = (((values[44] & 65535_u64) << 0) |
                 ((values[45] & 65535_u64) << 16) |
                 ((values[46] & 65535_u64) << 32) |
                 ((values[47] & 65535_u64) << 48)).to_u64
    bytes[12] = (((values[48] & 65535_u64) << 0) |
                 ((values[49] & 65535_u64) << 16) |
                 ((values[50] & 65535_u64) << 32) |
                 ((values[51] & 65535_u64) << 48)).to_u64
    bytes[13] = (((values[52] & 65535_u64) << 0) |
                 ((values[53] & 65535_u64) << 16) |
                 ((values[54] & 65535_u64) << 32) |
                 ((values[55] & 65535_u64) << 48)).to_u64
    bytes[14] = (((values[56] & 65535_u64) << 0) |
                 ((values[57] & 65535_u64) << 16) |
                 ((values[58] & 65535_u64) << 32) |
                 ((values[59] & 65535_u64) << 48)).to_u64
    bytes[15] = (((values[60] & 65535_u64) << 0) |
                 ((values[61] & 65535_u64) << 16) |
                 ((values[62] & 65535_u64) << 32) |
                 ((values[63] & 65535_u64) << 48)).to_u64
    bytes
  end

  def self.unpack16(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 65535_u64)).to_i64
    values[1] = (((bytes[0] >> 16) & 65535_u64)).to_i64
    values[2] = (((bytes[0] >> 32) & 65535_u64)).to_i64
    values[3] = (((bytes[0] >> 48) & 65535_u64)).to_i64
    values[4] = (((bytes[1] >> 0) & 65535_u64)).to_i64
    values[5] = (((bytes[1] >> 16) & 65535_u64)).to_i64
    values[6] = (((bytes[1] >> 32) & 65535_u64)).to_i64
    values[7] = (((bytes[1] >> 48) & 65535_u64)).to_i64
    values[8] = (((bytes[2] >> 0) & 65535_u64)).to_i64
    values[9] = (((bytes[2] >> 16) & 65535_u64)).to_i64
    values[10] = (((bytes[2] >> 32) & 65535_u64)).to_i64
    values[11] = (((bytes[2] >> 48) & 65535_u64)).to_i64
    values[12] = (((bytes[3] >> 0) & 65535_u64)).to_i64
    values[13] = (((bytes[3] >> 16) & 65535_u64)).to_i64
    values[14] = (((bytes[3] >> 32) & 65535_u64)).to_i64
    values[15] = (((bytes[3] >> 48) & 65535_u64)).to_i64
    values[16] = (((bytes[4] >> 0) & 65535_u64)).to_i64
    values[17] = (((bytes[4] >> 16) & 65535_u64)).to_i64
    values[18] = (((bytes[4] >> 32) & 65535_u64)).to_i64
    values[19] = (((bytes[4] >> 48) & 65535_u64)).to_i64
    values[20] = (((bytes[5] >> 0) & 65535_u64)).to_i64
    values[21] = (((bytes[5] >> 16) & 65535_u64)).to_i64
    values[22] = (((bytes[5] >> 32) & 65535_u64)).to_i64
    values[23] = (((bytes[5] >> 48) & 65535_u64)).to_i64
    values[24] = (((bytes[6] >> 0) & 65535_u64)).to_i64
    values[25] = (((bytes[6] >> 16) & 65535_u64)).to_i64
    values[26] = (((bytes[6] >> 32) & 65535_u64)).to_i64
    values[27] = (((bytes[6] >> 48) & 65535_u64)).to_i64
    values[28] = (((bytes[7] >> 0) & 65535_u64)).to_i64
    values[29] = (((bytes[7] >> 16) & 65535_u64)).to_i64
    values[30] = (((bytes[7] >> 32) & 65535_u64)).to_i64
    values[31] = (((bytes[7] >> 48) & 65535_u64)).to_i64
    values[32] = (((bytes[8] >> 0) & 65535_u64)).to_i64
    values[33] = (((bytes[8] >> 16) & 65535_u64)).to_i64
    values[34] = (((bytes[8] >> 32) & 65535_u64)).to_i64
    values[35] = (((bytes[8] >> 48) & 65535_u64)).to_i64
    values[36] = (((bytes[9] >> 0) & 65535_u64)).to_i64
    values[37] = (((bytes[9] >> 16) & 65535_u64)).to_i64
    values[38] = (((bytes[9] >> 32) & 65535_u64)).to_i64
    values[39] = (((bytes[9] >> 48) & 65535_u64)).to_i64
    values[40] = (((bytes[10] >> 0) & 65535_u64)).to_i64
    values[41] = (((bytes[10] >> 16) & 65535_u64)).to_i64
    values[42] = (((bytes[10] >> 32) & 65535_u64)).to_i64
    values[43] = (((bytes[10] >> 48) & 65535_u64)).to_i64
    values[44] = (((bytes[11] >> 0) & 65535_u64)).to_i64
    values[45] = (((bytes[11] >> 16) & 65535_u64)).to_i64
    values[46] = (((bytes[11] >> 32) & 65535_u64)).to_i64
    values[47] = (((bytes[11] >> 48) & 65535_u64)).to_i64
    values[48] = (((bytes[12] >> 0) & 65535_u64)).to_i64
    values[49] = (((bytes[12] >> 16) & 65535_u64)).to_i64
    values[50] = (((bytes[12] >> 32) & 65535_u64)).to_i64
    values[51] = (((bytes[12] >> 48) & 65535_u64)).to_i64
    values[52] = (((bytes[13] >> 0) & 65535_u64)).to_i64
    values[53] = (((bytes[13] >> 16) & 65535_u64)).to_i64
    values[54] = (((bytes[13] >> 32) & 65535_u64)).to_i64
    values[55] = (((bytes[13] >> 48) & 65535_u64)).to_i64
    values[56] = (((bytes[14] >> 0) & 65535_u64)).to_i64
    values[57] = (((bytes[14] >> 16) & 65535_u64)).to_i64
    values[58] = (((bytes[14] >> 32) & 65535_u64)).to_i64
    values[59] = (((bytes[14] >> 48) & 65535_u64)).to_i64
    values[60] = (((bytes[15] >> 0) & 65535_u64)).to_i64
    values[61] = (((bytes[15] >> 16) & 65535_u64)).to_i64
    values[62] = (((bytes[15] >> 32) & 65535_u64)).to_i64
    values[63] = (((bytes[15] >> 48) & 65535_u64)).to_i64
    values
  end

  def self.pack17(values)
    bytes = Slice(UInt64).new(17, 0_u64)
    bytes[0] = (((values[0] & 131071_u64) << 0) |
                ((values[1] & 131071_u64) << 17) |
                ((values[2] & 131071_u64) << 34) |
                ((values[3] & 131071_u64) << 51)).to_u64
    bytes[1] = (((values[3] & 131071_u64) >> 13) |
                ((values[4] & 131071_u64) << 4) |
                ((values[5] & 131071_u64) << 21) |
                ((values[6] & 131071_u64) << 38) |
                ((values[7] & 131071_u64) << 55)).to_u64
    bytes[2] = (((values[7] & 131071_u64) >> 9) |
                ((values[8] & 131071_u64) << 8) |
                ((values[9] & 131071_u64) << 25) |
                ((values[10] & 131071_u64) << 42) |
                ((values[11] & 131071_u64) << 59)).to_u64
    bytes[3] = (((values[11] & 131071_u64) >> 5) |
                ((values[12] & 131071_u64) << 12) |
                ((values[13] & 131071_u64) << 29) |
                ((values[14] & 131071_u64) << 46) |
                ((values[15] & 131071_u64) << 63)).to_u64
    bytes[4] = (((values[15] & 131071_u64) >> 1) |
                ((values[16] & 131071_u64) << 16) |
                ((values[17] & 131071_u64) << 33) |
                ((values[18] & 131071_u64) << 50)).to_u64
    bytes[5] = (((values[18] & 131071_u64) >> 14) |
                ((values[19] & 131071_u64) << 3) |
                ((values[20] & 131071_u64) << 20) |
                ((values[21] & 131071_u64) << 37) |
                ((values[22] & 131071_u64) << 54)).to_u64
    bytes[6] = (((values[22] & 131071_u64) >> 10) |
                ((values[23] & 131071_u64) << 7) |
                ((values[24] & 131071_u64) << 24) |
                ((values[25] & 131071_u64) << 41) |
                ((values[26] & 131071_u64) << 58)).to_u64
    bytes[7] = (((values[26] & 131071_u64) >> 6) |
                ((values[27] & 131071_u64) << 11) |
                ((values[28] & 131071_u64) << 28) |
                ((values[29] & 131071_u64) << 45) |
                ((values[30] & 131071_u64) << 62)).to_u64
    bytes[8] = (((values[30] & 131071_u64) >> 2) |
                ((values[31] & 131071_u64) << 15) |
                ((values[32] & 131071_u64) << 32) |
                ((values[33] & 131071_u64) << 49)).to_u64
    bytes[9] = (((values[33] & 131071_u64) >> 15) |
                ((values[34] & 131071_u64) << 2) |
                ((values[35] & 131071_u64) << 19) |
                ((values[36] & 131071_u64) << 36) |
                ((values[37] & 131071_u64) << 53)).to_u64
    bytes[10] = (((values[37] & 131071_u64) >> 11) |
                 ((values[38] & 131071_u64) << 6) |
                 ((values[39] & 131071_u64) << 23) |
                 ((values[40] & 131071_u64) << 40) |
                 ((values[41] & 131071_u64) << 57)).to_u64
    bytes[11] = (((values[41] & 131071_u64) >> 7) |
                 ((values[42] & 131071_u64) << 10) |
                 ((values[43] & 131071_u64) << 27) |
                 ((values[44] & 131071_u64) << 44) |
                 ((values[45] & 131071_u64) << 61)).to_u64
    bytes[12] = (((values[45] & 131071_u64) >> 3) |
                 ((values[46] & 131071_u64) << 14) |
                 ((values[47] & 131071_u64) << 31) |
                 ((values[48] & 131071_u64) << 48)).to_u64
    bytes[13] = (((values[48] & 131071_u64) >> 16) |
                 ((values[49] & 131071_u64) << 1) |
                 ((values[50] & 131071_u64) << 18) |
                 ((values[51] & 131071_u64) << 35) |
                 ((values[52] & 131071_u64) << 52)).to_u64
    bytes[14] = (((values[52] & 131071_u64) >> 12) |
                 ((values[53] & 131071_u64) << 5) |
                 ((values[54] & 131071_u64) << 22) |
                 ((values[55] & 131071_u64) << 39) |
                 ((values[56] & 131071_u64) << 56)).to_u64
    bytes[15] = (((values[56] & 131071_u64) >> 8) |
                 ((values[57] & 131071_u64) << 9) |
                 ((values[58] & 131071_u64) << 26) |
                 ((values[59] & 131071_u64) << 43) |
                 ((values[60] & 131071_u64) << 60)).to_u64
    bytes[16] = (((values[60] & 131071_u64) >> 4) |
                 ((values[61] & 131071_u64) << 13) |
                 ((values[62] & 131071_u64) << 30) |
                 ((values[63] & 131071_u64) << 47)).to_u64
    bytes
  end

  def self.unpack17(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 131071_u64)).to_i64
    values[1] = (((bytes[0] >> 17) & 131071_u64)).to_i64
    values[2] = (((bytes[0] >> 34) & 131071_u64)).to_i64
    values[3] = (((bytes[0] >> 51) & 131071_u64) | ((bytes[1] & 15_u64) << 13)).to_i64
    values[4] = (((bytes[1] >> 4) & 131071_u64)).to_i64
    values[5] = (((bytes[1] >> 21) & 131071_u64)).to_i64
    values[6] = (((bytes[1] >> 38) & 131071_u64)).to_i64
    values[7] = (((bytes[1] >> 55) & 131071_u64) | ((bytes[2] & 255_u64) << 9)).to_i64
    values[8] = (((bytes[2] >> 8) & 131071_u64)).to_i64
    values[9] = (((bytes[2] >> 25) & 131071_u64)).to_i64
    values[10] = (((bytes[2] >> 42) & 131071_u64)).to_i64
    values[11] = (((bytes[2] >> 59) & 131071_u64) | ((bytes[3] & 4095_u64) << 5)).to_i64
    values[12] = (((bytes[3] >> 12) & 131071_u64)).to_i64
    values[13] = (((bytes[3] >> 29) & 131071_u64)).to_i64
    values[14] = (((bytes[3] >> 46) & 131071_u64)).to_i64
    values[15] = (((bytes[3] >> 63) & 131071_u64) | ((bytes[4] & 65535_u64) << 1)).to_i64
    values[16] = (((bytes[4] >> 16) & 131071_u64)).to_i64
    values[17] = (((bytes[4] >> 33) & 131071_u64)).to_i64
    values[18] = (((bytes[4] >> 50) & 131071_u64) | ((bytes[5] & 7_u64) << 14)).to_i64
    values[19] = (((bytes[5] >> 3) & 131071_u64)).to_i64
    values[20] = (((bytes[5] >> 20) & 131071_u64)).to_i64
    values[21] = (((bytes[5] >> 37) & 131071_u64)).to_i64
    values[22] = (((bytes[5] >> 54) & 131071_u64) | ((bytes[6] & 127_u64) << 10)).to_i64
    values[23] = (((bytes[6] >> 7) & 131071_u64)).to_i64
    values[24] = (((bytes[6] >> 24) & 131071_u64)).to_i64
    values[25] = (((bytes[6] >> 41) & 131071_u64)).to_i64
    values[26] = (((bytes[6] >> 58) & 131071_u64) | ((bytes[7] & 2047_u64) << 6)).to_i64
    values[27] = (((bytes[7] >> 11) & 131071_u64)).to_i64
    values[28] = (((bytes[7] >> 28) & 131071_u64)).to_i64
    values[29] = (((bytes[7] >> 45) & 131071_u64)).to_i64
    values[30] = (((bytes[7] >> 62) & 131071_u64) | ((bytes[8] & 32767_u64) << 2)).to_i64
    values[31] = (((bytes[8] >> 15) & 131071_u64)).to_i64
    values[32] = (((bytes[8] >> 32) & 131071_u64)).to_i64
    values[33] = (((bytes[8] >> 49) & 131071_u64) | ((bytes[9] & 3_u64) << 15)).to_i64
    values[34] = (((bytes[9] >> 2) & 131071_u64)).to_i64
    values[35] = (((bytes[9] >> 19) & 131071_u64)).to_i64
    values[36] = (((bytes[9] >> 36) & 131071_u64)).to_i64
    values[37] = (((bytes[9] >> 53) & 131071_u64) | ((bytes[10] & 63_u64) << 11)).to_i64
    values[38] = (((bytes[10] >> 6) & 131071_u64)).to_i64
    values[39] = (((bytes[10] >> 23) & 131071_u64)).to_i64
    values[40] = (((bytes[10] >> 40) & 131071_u64)).to_i64
    values[41] = (((bytes[10] >> 57) & 131071_u64) | ((bytes[11] & 1023_u64) << 7)).to_i64
    values[42] = (((bytes[11] >> 10) & 131071_u64)).to_i64
    values[43] = (((bytes[11] >> 27) & 131071_u64)).to_i64
    values[44] = (((bytes[11] >> 44) & 131071_u64)).to_i64
    values[45] = (((bytes[11] >> 61) & 131071_u64) | ((bytes[12] & 16383_u64) << 3)).to_i64
    values[46] = (((bytes[12] >> 14) & 131071_u64)).to_i64
    values[47] = (((bytes[12] >> 31) & 131071_u64)).to_i64
    values[48] = (((bytes[12] >> 48) & 131071_u64) | ((bytes[13] & 1_u64) << 16)).to_i64
    values[49] = (((bytes[13] >> 1) & 131071_u64)).to_i64
    values[50] = (((bytes[13] >> 18) & 131071_u64)).to_i64
    values[51] = (((bytes[13] >> 35) & 131071_u64)).to_i64
    values[52] = (((bytes[13] >> 52) & 131071_u64) | ((bytes[14] & 31_u64) << 12)).to_i64
    values[53] = (((bytes[14] >> 5) & 131071_u64)).to_i64
    values[54] = (((bytes[14] >> 22) & 131071_u64)).to_i64
    values[55] = (((bytes[14] >> 39) & 131071_u64)).to_i64
    values[56] = (((bytes[14] >> 56) & 131071_u64) | ((bytes[15] & 511_u64) << 8)).to_i64
    values[57] = (((bytes[15] >> 9) & 131071_u64)).to_i64
    values[58] = (((bytes[15] >> 26) & 131071_u64)).to_i64
    values[59] = (((bytes[15] >> 43) & 131071_u64)).to_i64
    values[60] = (((bytes[15] >> 60) & 131071_u64) | ((bytes[16] & 8191_u64) << 4)).to_i64
    values[61] = (((bytes[16] >> 13) & 131071_u64)).to_i64
    values[62] = (((bytes[16] >> 30) & 131071_u64)).to_i64
    values[63] = (((bytes[16] >> 47) & 131071_u64)).to_i64
    values
  end

  def self.pack18(values)
    bytes = Slice(UInt64).new(18, 0_u64)
    bytes[0] = (((values[0] & 262143_u64) << 0) |
                ((values[1] & 262143_u64) << 18) |
                ((values[2] & 262143_u64) << 36) |
                ((values[3] & 262143_u64) << 54)).to_u64
    bytes[1] = (((values[3] & 262143_u64) >> 10) |
                ((values[4] & 262143_u64) << 8) |
                ((values[5] & 262143_u64) << 26) |
                ((values[6] & 262143_u64) << 44) |
                ((values[7] & 262143_u64) << 62)).to_u64
    bytes[2] = (((values[7] & 262143_u64) >> 2) |
                ((values[8] & 262143_u64) << 16) |
                ((values[9] & 262143_u64) << 34) |
                ((values[10] & 262143_u64) << 52)).to_u64
    bytes[3] = (((values[10] & 262143_u64) >> 12) |
                ((values[11] & 262143_u64) << 6) |
                ((values[12] & 262143_u64) << 24) |
                ((values[13] & 262143_u64) << 42) |
                ((values[14] & 262143_u64) << 60)).to_u64
    bytes[4] = (((values[14] & 262143_u64) >> 4) |
                ((values[15] & 262143_u64) << 14) |
                ((values[16] & 262143_u64) << 32) |
                ((values[17] & 262143_u64) << 50)).to_u64
    bytes[5] = (((values[17] & 262143_u64) >> 14) |
                ((values[18] & 262143_u64) << 4) |
                ((values[19] & 262143_u64) << 22) |
                ((values[20] & 262143_u64) << 40) |
                ((values[21] & 262143_u64) << 58)).to_u64
    bytes[6] = (((values[21] & 262143_u64) >> 6) |
                ((values[22] & 262143_u64) << 12) |
                ((values[23] & 262143_u64) << 30) |
                ((values[24] & 262143_u64) << 48)).to_u64
    bytes[7] = (((values[24] & 262143_u64) >> 16) |
                ((values[25] & 262143_u64) << 2) |
                ((values[26] & 262143_u64) << 20) |
                ((values[27] & 262143_u64) << 38) |
                ((values[28] & 262143_u64) << 56)).to_u64
    bytes[8] = (((values[28] & 262143_u64) >> 8) |
                ((values[29] & 262143_u64) << 10) |
                ((values[30] & 262143_u64) << 28) |
                ((values[31] & 262143_u64) << 46)).to_u64
    bytes[9] = (((values[32] & 262143_u64) << 0) |
                ((values[33] & 262143_u64) << 18) |
                ((values[34] & 262143_u64) << 36) |
                ((values[35] & 262143_u64) << 54)).to_u64
    bytes[10] = (((values[35] & 262143_u64) >> 10) |
                 ((values[36] & 262143_u64) << 8) |
                 ((values[37] & 262143_u64) << 26) |
                 ((values[38] & 262143_u64) << 44) |
                 ((values[39] & 262143_u64) << 62)).to_u64
    bytes[11] = (((values[39] & 262143_u64) >> 2) |
                 ((values[40] & 262143_u64) << 16) |
                 ((values[41] & 262143_u64) << 34) |
                 ((values[42] & 262143_u64) << 52)).to_u64
    bytes[12] = (((values[42] & 262143_u64) >> 12) |
                 ((values[43] & 262143_u64) << 6) |
                 ((values[44] & 262143_u64) << 24) |
                 ((values[45] & 262143_u64) << 42) |
                 ((values[46] & 262143_u64) << 60)).to_u64
    bytes[13] = (((values[46] & 262143_u64) >> 4) |
                 ((values[47] & 262143_u64) << 14) |
                 ((values[48] & 262143_u64) << 32) |
                 ((values[49] & 262143_u64) << 50)).to_u64
    bytes[14] = (((values[49] & 262143_u64) >> 14) |
                 ((values[50] & 262143_u64) << 4) |
                 ((values[51] & 262143_u64) << 22) |
                 ((values[52] & 262143_u64) << 40) |
                 ((values[53] & 262143_u64) << 58)).to_u64
    bytes[15] = (((values[53] & 262143_u64) >> 6) |
                 ((values[54] & 262143_u64) << 12) |
                 ((values[55] & 262143_u64) << 30) |
                 ((values[56] & 262143_u64) << 48)).to_u64
    bytes[16] = (((values[56] & 262143_u64) >> 16) |
                 ((values[57] & 262143_u64) << 2) |
                 ((values[58] & 262143_u64) << 20) |
                 ((values[59] & 262143_u64) << 38) |
                 ((values[60] & 262143_u64) << 56)).to_u64
    bytes[17] = (((values[60] & 262143_u64) >> 8) |
                 ((values[61] & 262143_u64) << 10) |
                 ((values[62] & 262143_u64) << 28) |
                 ((values[63] & 262143_u64) << 46)).to_u64
    bytes
  end

  def self.unpack18(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 262143_u64)).to_i64
    values[1] = (((bytes[0] >> 18) & 262143_u64)).to_i64
    values[2] = (((bytes[0] >> 36) & 262143_u64)).to_i64
    values[3] = (((bytes[0] >> 54) & 262143_u64) | ((bytes[1] & 255_u64) << 10)).to_i64
    values[4] = (((bytes[1] >> 8) & 262143_u64)).to_i64
    values[5] = (((bytes[1] >> 26) & 262143_u64)).to_i64
    values[6] = (((bytes[1] >> 44) & 262143_u64)).to_i64
    values[7] = (((bytes[1] >> 62) & 262143_u64) | ((bytes[2] & 65535_u64) << 2)).to_i64
    values[8] = (((bytes[2] >> 16) & 262143_u64)).to_i64
    values[9] = (((bytes[2] >> 34) & 262143_u64)).to_i64
    values[10] = (((bytes[2] >> 52) & 262143_u64) | ((bytes[3] & 63_u64) << 12)).to_i64
    values[11] = (((bytes[3] >> 6) & 262143_u64)).to_i64
    values[12] = (((bytes[3] >> 24) & 262143_u64)).to_i64
    values[13] = (((bytes[3] >> 42) & 262143_u64)).to_i64
    values[14] = (((bytes[3] >> 60) & 262143_u64) | ((bytes[4] & 16383_u64) << 4)).to_i64
    values[15] = (((bytes[4] >> 14) & 262143_u64)).to_i64
    values[16] = (((bytes[4] >> 32) & 262143_u64)).to_i64
    values[17] = (((bytes[4] >> 50) & 262143_u64) | ((bytes[5] & 15_u64) << 14)).to_i64
    values[18] = (((bytes[5] >> 4) & 262143_u64)).to_i64
    values[19] = (((bytes[5] >> 22) & 262143_u64)).to_i64
    values[20] = (((bytes[5] >> 40) & 262143_u64)).to_i64
    values[21] = (((bytes[5] >> 58) & 262143_u64) | ((bytes[6] & 4095_u64) << 6)).to_i64
    values[22] = (((bytes[6] >> 12) & 262143_u64)).to_i64
    values[23] = (((bytes[6] >> 30) & 262143_u64)).to_i64
    values[24] = (((bytes[6] >> 48) & 262143_u64) | ((bytes[7] & 3_u64) << 16)).to_i64
    values[25] = (((bytes[7] >> 2) & 262143_u64)).to_i64
    values[26] = (((bytes[7] >> 20) & 262143_u64)).to_i64
    values[27] = (((bytes[7] >> 38) & 262143_u64)).to_i64
    values[28] = (((bytes[7] >> 56) & 262143_u64) | ((bytes[8] & 1023_u64) << 8)).to_i64
    values[29] = (((bytes[8] >> 10) & 262143_u64)).to_i64
    values[30] = (((bytes[8] >> 28) & 262143_u64)).to_i64
    values[31] = (((bytes[8] >> 46) & 262143_u64)).to_i64
    values[32] = (((bytes[9] >> 0) & 262143_u64)).to_i64
    values[33] = (((bytes[9] >> 18) & 262143_u64)).to_i64
    values[34] = (((bytes[9] >> 36) & 262143_u64)).to_i64
    values[35] = (((bytes[9] >> 54) & 262143_u64) | ((bytes[10] & 255_u64) << 10)).to_i64
    values[36] = (((bytes[10] >> 8) & 262143_u64)).to_i64
    values[37] = (((bytes[10] >> 26) & 262143_u64)).to_i64
    values[38] = (((bytes[10] >> 44) & 262143_u64)).to_i64
    values[39] = (((bytes[10] >> 62) & 262143_u64) | ((bytes[11] & 65535_u64) << 2)).to_i64
    values[40] = (((bytes[11] >> 16) & 262143_u64)).to_i64
    values[41] = (((bytes[11] >> 34) & 262143_u64)).to_i64
    values[42] = (((bytes[11] >> 52) & 262143_u64) | ((bytes[12] & 63_u64) << 12)).to_i64
    values[43] = (((bytes[12] >> 6) & 262143_u64)).to_i64
    values[44] = (((bytes[12] >> 24) & 262143_u64)).to_i64
    values[45] = (((bytes[12] >> 42) & 262143_u64)).to_i64
    values[46] = (((bytes[12] >> 60) & 262143_u64) | ((bytes[13] & 16383_u64) << 4)).to_i64
    values[47] = (((bytes[13] >> 14) & 262143_u64)).to_i64
    values[48] = (((bytes[13] >> 32) & 262143_u64)).to_i64
    values[49] = (((bytes[13] >> 50) & 262143_u64) | ((bytes[14] & 15_u64) << 14)).to_i64
    values[50] = (((bytes[14] >> 4) & 262143_u64)).to_i64
    values[51] = (((bytes[14] >> 22) & 262143_u64)).to_i64
    values[52] = (((bytes[14] >> 40) & 262143_u64)).to_i64
    values[53] = (((bytes[14] >> 58) & 262143_u64) | ((bytes[15] & 4095_u64) << 6)).to_i64
    values[54] = (((bytes[15] >> 12) & 262143_u64)).to_i64
    values[55] = (((bytes[15] >> 30) & 262143_u64)).to_i64
    values[56] = (((bytes[15] >> 48) & 262143_u64) | ((bytes[16] & 3_u64) << 16)).to_i64
    values[57] = (((bytes[16] >> 2) & 262143_u64)).to_i64
    values[58] = (((bytes[16] >> 20) & 262143_u64)).to_i64
    values[59] = (((bytes[16] >> 38) & 262143_u64)).to_i64
    values[60] = (((bytes[16] >> 56) & 262143_u64) | ((bytes[17] & 1023_u64) << 8)).to_i64
    values[61] = (((bytes[17] >> 10) & 262143_u64)).to_i64
    values[62] = (((bytes[17] >> 28) & 262143_u64)).to_i64
    values[63] = (((bytes[17] >> 46) & 262143_u64)).to_i64
    values
  end

  def self.pack19(values)
    bytes = Slice(UInt64).new(19, 0_u64)
    bytes[0] = (((values[0] & 524287_u64) << 0) |
                ((values[1] & 524287_u64) << 19) |
                ((values[2] & 524287_u64) << 38) |
                ((values[3] & 524287_u64) << 57)).to_u64
    bytes[1] = (((values[3] & 524287_u64) >> 7) |
                ((values[4] & 524287_u64) << 12) |
                ((values[5] & 524287_u64) << 31) |
                ((values[6] & 524287_u64) << 50)).to_u64
    bytes[2] = (((values[6] & 524287_u64) >> 14) |
                ((values[7] & 524287_u64) << 5) |
                ((values[8] & 524287_u64) << 24) |
                ((values[9] & 524287_u64) << 43) |
                ((values[10] & 524287_u64) << 62)).to_u64
    bytes[3] = (((values[10] & 524287_u64) >> 2) |
                ((values[11] & 524287_u64) << 17) |
                ((values[12] & 524287_u64) << 36) |
                ((values[13] & 524287_u64) << 55)).to_u64
    bytes[4] = (((values[13] & 524287_u64) >> 9) |
                ((values[14] & 524287_u64) << 10) |
                ((values[15] & 524287_u64) << 29) |
                ((values[16] & 524287_u64) << 48)).to_u64
    bytes[5] = (((values[16] & 524287_u64) >> 16) |
                ((values[17] & 524287_u64) << 3) |
                ((values[18] & 524287_u64) << 22) |
                ((values[19] & 524287_u64) << 41) |
                ((values[20] & 524287_u64) << 60)).to_u64
    bytes[6] = (((values[20] & 524287_u64) >> 4) |
                ((values[21] & 524287_u64) << 15) |
                ((values[22] & 524287_u64) << 34) |
                ((values[23] & 524287_u64) << 53)).to_u64
    bytes[7] = (((values[23] & 524287_u64) >> 11) |
                ((values[24] & 524287_u64) << 8) |
                ((values[25] & 524287_u64) << 27) |
                ((values[26] & 524287_u64) << 46)).to_u64
    bytes[8] = (((values[26] & 524287_u64) >> 18) |
                ((values[27] & 524287_u64) << 1) |
                ((values[28] & 524287_u64) << 20) |
                ((values[29] & 524287_u64) << 39) |
                ((values[30] & 524287_u64) << 58)).to_u64
    bytes[9] = (((values[30] & 524287_u64) >> 6) |
                ((values[31] & 524287_u64) << 13) |
                ((values[32] & 524287_u64) << 32) |
                ((values[33] & 524287_u64) << 51)).to_u64
    bytes[10] = (((values[33] & 524287_u64) >> 13) |
                 ((values[34] & 524287_u64) << 6) |
                 ((values[35] & 524287_u64) << 25) |
                 ((values[36] & 524287_u64) << 44) |
                 ((values[37] & 524287_u64) << 63)).to_u64
    bytes[11] = (((values[37] & 524287_u64) >> 1) |
                 ((values[38] & 524287_u64) << 18) |
                 ((values[39] & 524287_u64) << 37) |
                 ((values[40] & 524287_u64) << 56)).to_u64
    bytes[12] = (((values[40] & 524287_u64) >> 8) |
                 ((values[41] & 524287_u64) << 11) |
                 ((values[42] & 524287_u64) << 30) |
                 ((values[43] & 524287_u64) << 49)).to_u64
    bytes[13] = (((values[43] & 524287_u64) >> 15) |
                 ((values[44] & 524287_u64) << 4) |
                 ((values[45] & 524287_u64) << 23) |
                 ((values[46] & 524287_u64) << 42) |
                 ((values[47] & 524287_u64) << 61)).to_u64
    bytes[14] = (((values[47] & 524287_u64) >> 3) |
                 ((values[48] & 524287_u64) << 16) |
                 ((values[49] & 524287_u64) << 35) |
                 ((values[50] & 524287_u64) << 54)).to_u64
    bytes[15] = (((values[50] & 524287_u64) >> 10) |
                 ((values[51] & 524287_u64) << 9) |
                 ((values[52] & 524287_u64) << 28) |
                 ((values[53] & 524287_u64) << 47)).to_u64
    bytes[16] = (((values[53] & 524287_u64) >> 17) |
                 ((values[54] & 524287_u64) << 2) |
                 ((values[55] & 524287_u64) << 21) |
                 ((values[56] & 524287_u64) << 40) |
                 ((values[57] & 524287_u64) << 59)).to_u64
    bytes[17] = (((values[57] & 524287_u64) >> 5) |
                 ((values[58] & 524287_u64) << 14) |
                 ((values[59] & 524287_u64) << 33) |
                 ((values[60] & 524287_u64) << 52)).to_u64
    bytes[18] = (((values[60] & 524287_u64) >> 12) |
                 ((values[61] & 524287_u64) << 7) |
                 ((values[62] & 524287_u64) << 26) |
                 ((values[63] & 524287_u64) << 45)).to_u64
    bytes
  end

  def self.unpack19(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 524287_u64)).to_i64
    values[1] = (((bytes[0] >> 19) & 524287_u64)).to_i64
    values[2] = (((bytes[0] >> 38) & 524287_u64)).to_i64
    values[3] = (((bytes[0] >> 57) & 524287_u64) | ((bytes[1] & 4095_u64) << 7)).to_i64
    values[4] = (((bytes[1] >> 12) & 524287_u64)).to_i64
    values[5] = (((bytes[1] >> 31) & 524287_u64)).to_i64
    values[6] = (((bytes[1] >> 50) & 524287_u64) | ((bytes[2] & 31_u64) << 14)).to_i64
    values[7] = (((bytes[2] >> 5) & 524287_u64)).to_i64
    values[8] = (((bytes[2] >> 24) & 524287_u64)).to_i64
    values[9] = (((bytes[2] >> 43) & 524287_u64)).to_i64
    values[10] = (((bytes[2] >> 62) & 524287_u64) | ((bytes[3] & 131071_u64) << 2)).to_i64
    values[11] = (((bytes[3] >> 17) & 524287_u64)).to_i64
    values[12] = (((bytes[3] >> 36) & 524287_u64)).to_i64
    values[13] = (((bytes[3] >> 55) & 524287_u64) | ((bytes[4] & 1023_u64) << 9)).to_i64
    values[14] = (((bytes[4] >> 10) & 524287_u64)).to_i64
    values[15] = (((bytes[4] >> 29) & 524287_u64)).to_i64
    values[16] = (((bytes[4] >> 48) & 524287_u64) | ((bytes[5] & 7_u64) << 16)).to_i64
    values[17] = (((bytes[5] >> 3) & 524287_u64)).to_i64
    values[18] = (((bytes[5] >> 22) & 524287_u64)).to_i64
    values[19] = (((bytes[5] >> 41) & 524287_u64)).to_i64
    values[20] = (((bytes[5] >> 60) & 524287_u64) | ((bytes[6] & 32767_u64) << 4)).to_i64
    values[21] = (((bytes[6] >> 15) & 524287_u64)).to_i64
    values[22] = (((bytes[6] >> 34) & 524287_u64)).to_i64
    values[23] = (((bytes[6] >> 53) & 524287_u64) | ((bytes[7] & 255_u64) << 11)).to_i64
    values[24] = (((bytes[7] >> 8) & 524287_u64)).to_i64
    values[25] = (((bytes[7] >> 27) & 524287_u64)).to_i64
    values[26] = (((bytes[7] >> 46) & 524287_u64) | ((bytes[8] & 1_u64) << 18)).to_i64
    values[27] = (((bytes[8] >> 1) & 524287_u64)).to_i64
    values[28] = (((bytes[8] >> 20) & 524287_u64)).to_i64
    values[29] = (((bytes[8] >> 39) & 524287_u64)).to_i64
    values[30] = (((bytes[8] >> 58) & 524287_u64) | ((bytes[9] & 8191_u64) << 6)).to_i64
    values[31] = (((bytes[9] >> 13) & 524287_u64)).to_i64
    values[32] = (((bytes[9] >> 32) & 524287_u64)).to_i64
    values[33] = (((bytes[9] >> 51) & 524287_u64) | ((bytes[10] & 63_u64) << 13)).to_i64
    values[34] = (((bytes[10] >> 6) & 524287_u64)).to_i64
    values[35] = (((bytes[10] >> 25) & 524287_u64)).to_i64
    values[36] = (((bytes[10] >> 44) & 524287_u64)).to_i64
    values[37] = (((bytes[10] >> 63) & 524287_u64) | ((bytes[11] & 262143_u64) << 1)).to_i64
    values[38] = (((bytes[11] >> 18) & 524287_u64)).to_i64
    values[39] = (((bytes[11] >> 37) & 524287_u64)).to_i64
    values[40] = (((bytes[11] >> 56) & 524287_u64) | ((bytes[12] & 2047_u64) << 8)).to_i64
    values[41] = (((bytes[12] >> 11) & 524287_u64)).to_i64
    values[42] = (((bytes[12] >> 30) & 524287_u64)).to_i64
    values[43] = (((bytes[12] >> 49) & 524287_u64) | ((bytes[13] & 15_u64) << 15)).to_i64
    values[44] = (((bytes[13] >> 4) & 524287_u64)).to_i64
    values[45] = (((bytes[13] >> 23) & 524287_u64)).to_i64
    values[46] = (((bytes[13] >> 42) & 524287_u64)).to_i64
    values[47] = (((bytes[13] >> 61) & 524287_u64) | ((bytes[14] & 65535_u64) << 3)).to_i64
    values[48] = (((bytes[14] >> 16) & 524287_u64)).to_i64
    values[49] = (((bytes[14] >> 35) & 524287_u64)).to_i64
    values[50] = (((bytes[14] >> 54) & 524287_u64) | ((bytes[15] & 511_u64) << 10)).to_i64
    values[51] = (((bytes[15] >> 9) & 524287_u64)).to_i64
    values[52] = (((bytes[15] >> 28) & 524287_u64)).to_i64
    values[53] = (((bytes[15] >> 47) & 524287_u64) | ((bytes[16] & 3_u64) << 17)).to_i64
    values[54] = (((bytes[16] >> 2) & 524287_u64)).to_i64
    values[55] = (((bytes[16] >> 21) & 524287_u64)).to_i64
    values[56] = (((bytes[16] >> 40) & 524287_u64)).to_i64
    values[57] = (((bytes[16] >> 59) & 524287_u64) | ((bytes[17] & 16383_u64) << 5)).to_i64
    values[58] = (((bytes[17] >> 14) & 524287_u64)).to_i64
    values[59] = (((bytes[17] >> 33) & 524287_u64)).to_i64
    values[60] = (((bytes[17] >> 52) & 524287_u64) | ((bytes[18] & 127_u64) << 12)).to_i64
    values[61] = (((bytes[18] >> 7) & 524287_u64)).to_i64
    values[62] = (((bytes[18] >> 26) & 524287_u64)).to_i64
    values[63] = (((bytes[18] >> 45) & 524287_u64)).to_i64
    values
  end

  def self.pack20(values)
    bytes = Slice(UInt64).new(20, 0_u64)
    bytes[0] = (((values[0] & 1048575_u64) << 0) |
                ((values[1] & 1048575_u64) << 20) |
                ((values[2] & 1048575_u64) << 40) |
                ((values[3] & 1048575_u64) << 60)).to_u64
    bytes[1] = (((values[3] & 1048575_u64) >> 4) |
                ((values[4] & 1048575_u64) << 16) |
                ((values[5] & 1048575_u64) << 36) |
                ((values[6] & 1048575_u64) << 56)).to_u64
    bytes[2] = (((values[6] & 1048575_u64) >> 8) |
                ((values[7] & 1048575_u64) << 12) |
                ((values[8] & 1048575_u64) << 32) |
                ((values[9] & 1048575_u64) << 52)).to_u64
    bytes[3] = (((values[9] & 1048575_u64) >> 12) |
                ((values[10] & 1048575_u64) << 8) |
                ((values[11] & 1048575_u64) << 28) |
                ((values[12] & 1048575_u64) << 48)).to_u64
    bytes[4] = (((values[12] & 1048575_u64) >> 16) |
                ((values[13] & 1048575_u64) << 4) |
                ((values[14] & 1048575_u64) << 24) |
                ((values[15] & 1048575_u64) << 44)).to_u64
    bytes[5] = (((values[16] & 1048575_u64) << 0) |
                ((values[17] & 1048575_u64) << 20) |
                ((values[18] & 1048575_u64) << 40) |
                ((values[19] & 1048575_u64) << 60)).to_u64
    bytes[6] = (((values[19] & 1048575_u64) >> 4) |
                ((values[20] & 1048575_u64) << 16) |
                ((values[21] & 1048575_u64) << 36) |
                ((values[22] & 1048575_u64) << 56)).to_u64
    bytes[7] = (((values[22] & 1048575_u64) >> 8) |
                ((values[23] & 1048575_u64) << 12) |
                ((values[24] & 1048575_u64) << 32) |
                ((values[25] & 1048575_u64) << 52)).to_u64
    bytes[8] = (((values[25] & 1048575_u64) >> 12) |
                ((values[26] & 1048575_u64) << 8) |
                ((values[27] & 1048575_u64) << 28) |
                ((values[28] & 1048575_u64) << 48)).to_u64
    bytes[9] = (((values[28] & 1048575_u64) >> 16) |
                ((values[29] & 1048575_u64) << 4) |
                ((values[30] & 1048575_u64) << 24) |
                ((values[31] & 1048575_u64) << 44)).to_u64
    bytes[10] = (((values[32] & 1048575_u64) << 0) |
                 ((values[33] & 1048575_u64) << 20) |
                 ((values[34] & 1048575_u64) << 40) |
                 ((values[35] & 1048575_u64) << 60)).to_u64
    bytes[11] = (((values[35] & 1048575_u64) >> 4) |
                 ((values[36] & 1048575_u64) << 16) |
                 ((values[37] & 1048575_u64) << 36) |
                 ((values[38] & 1048575_u64) << 56)).to_u64
    bytes[12] = (((values[38] & 1048575_u64) >> 8) |
                 ((values[39] & 1048575_u64) << 12) |
                 ((values[40] & 1048575_u64) << 32) |
                 ((values[41] & 1048575_u64) << 52)).to_u64
    bytes[13] = (((values[41] & 1048575_u64) >> 12) |
                 ((values[42] & 1048575_u64) << 8) |
                 ((values[43] & 1048575_u64) << 28) |
                 ((values[44] & 1048575_u64) << 48)).to_u64
    bytes[14] = (((values[44] & 1048575_u64) >> 16) |
                 ((values[45] & 1048575_u64) << 4) |
                 ((values[46] & 1048575_u64) << 24) |
                 ((values[47] & 1048575_u64) << 44)).to_u64
    bytes[15] = (((values[48] & 1048575_u64) << 0) |
                 ((values[49] & 1048575_u64) << 20) |
                 ((values[50] & 1048575_u64) << 40) |
                 ((values[51] & 1048575_u64) << 60)).to_u64
    bytes[16] = (((values[51] & 1048575_u64) >> 4) |
                 ((values[52] & 1048575_u64) << 16) |
                 ((values[53] & 1048575_u64) << 36) |
                 ((values[54] & 1048575_u64) << 56)).to_u64
    bytes[17] = (((values[54] & 1048575_u64) >> 8) |
                 ((values[55] & 1048575_u64) << 12) |
                 ((values[56] & 1048575_u64) << 32) |
                 ((values[57] & 1048575_u64) << 52)).to_u64
    bytes[18] = (((values[57] & 1048575_u64) >> 12) |
                 ((values[58] & 1048575_u64) << 8) |
                 ((values[59] & 1048575_u64) << 28) |
                 ((values[60] & 1048575_u64) << 48)).to_u64
    bytes[19] = (((values[60] & 1048575_u64) >> 16) |
                 ((values[61] & 1048575_u64) << 4) |
                 ((values[62] & 1048575_u64) << 24) |
                 ((values[63] & 1048575_u64) << 44)).to_u64
    bytes
  end

  def self.unpack20(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1048575_u64)).to_i64
    values[1] = (((bytes[0] >> 20) & 1048575_u64)).to_i64
    values[2] = (((bytes[0] >> 40) & 1048575_u64)).to_i64
    values[3] = (((bytes[0] >> 60) & 1048575_u64) | ((bytes[1] & 65535_u64) << 4)).to_i64
    values[4] = (((bytes[1] >> 16) & 1048575_u64)).to_i64
    values[5] = (((bytes[1] >> 36) & 1048575_u64)).to_i64
    values[6] = (((bytes[1] >> 56) & 1048575_u64) | ((bytes[2] & 4095_u64) << 8)).to_i64
    values[7] = (((bytes[2] >> 12) & 1048575_u64)).to_i64
    values[8] = (((bytes[2] >> 32) & 1048575_u64)).to_i64
    values[9] = (((bytes[2] >> 52) & 1048575_u64) | ((bytes[3] & 255_u64) << 12)).to_i64
    values[10] = (((bytes[3] >> 8) & 1048575_u64)).to_i64
    values[11] = (((bytes[3] >> 28) & 1048575_u64)).to_i64
    values[12] = (((bytes[3] >> 48) & 1048575_u64) | ((bytes[4] & 15_u64) << 16)).to_i64
    values[13] = (((bytes[4] >> 4) & 1048575_u64)).to_i64
    values[14] = (((bytes[4] >> 24) & 1048575_u64)).to_i64
    values[15] = (((bytes[4] >> 44) & 1048575_u64)).to_i64
    values[16] = (((bytes[5] >> 0) & 1048575_u64)).to_i64
    values[17] = (((bytes[5] >> 20) & 1048575_u64)).to_i64
    values[18] = (((bytes[5] >> 40) & 1048575_u64)).to_i64
    values[19] = (((bytes[5] >> 60) & 1048575_u64) | ((bytes[6] & 65535_u64) << 4)).to_i64
    values[20] = (((bytes[6] >> 16) & 1048575_u64)).to_i64
    values[21] = (((bytes[6] >> 36) & 1048575_u64)).to_i64
    values[22] = (((bytes[6] >> 56) & 1048575_u64) | ((bytes[7] & 4095_u64) << 8)).to_i64
    values[23] = (((bytes[7] >> 12) & 1048575_u64)).to_i64
    values[24] = (((bytes[7] >> 32) & 1048575_u64)).to_i64
    values[25] = (((bytes[7] >> 52) & 1048575_u64) | ((bytes[8] & 255_u64) << 12)).to_i64
    values[26] = (((bytes[8] >> 8) & 1048575_u64)).to_i64
    values[27] = (((bytes[8] >> 28) & 1048575_u64)).to_i64
    values[28] = (((bytes[8] >> 48) & 1048575_u64) | ((bytes[9] & 15_u64) << 16)).to_i64
    values[29] = (((bytes[9] >> 4) & 1048575_u64)).to_i64
    values[30] = (((bytes[9] >> 24) & 1048575_u64)).to_i64
    values[31] = (((bytes[9] >> 44) & 1048575_u64)).to_i64
    values[32] = (((bytes[10] >> 0) & 1048575_u64)).to_i64
    values[33] = (((bytes[10] >> 20) & 1048575_u64)).to_i64
    values[34] = (((bytes[10] >> 40) & 1048575_u64)).to_i64
    values[35] = (((bytes[10] >> 60) & 1048575_u64) | ((bytes[11] & 65535_u64) << 4)).to_i64
    values[36] = (((bytes[11] >> 16) & 1048575_u64)).to_i64
    values[37] = (((bytes[11] >> 36) & 1048575_u64)).to_i64
    values[38] = (((bytes[11] >> 56) & 1048575_u64) | ((bytes[12] & 4095_u64) << 8)).to_i64
    values[39] = (((bytes[12] >> 12) & 1048575_u64)).to_i64
    values[40] = (((bytes[12] >> 32) & 1048575_u64)).to_i64
    values[41] = (((bytes[12] >> 52) & 1048575_u64) | ((bytes[13] & 255_u64) << 12)).to_i64
    values[42] = (((bytes[13] >> 8) & 1048575_u64)).to_i64
    values[43] = (((bytes[13] >> 28) & 1048575_u64)).to_i64
    values[44] = (((bytes[13] >> 48) & 1048575_u64) | ((bytes[14] & 15_u64) << 16)).to_i64
    values[45] = (((bytes[14] >> 4) & 1048575_u64)).to_i64
    values[46] = (((bytes[14] >> 24) & 1048575_u64)).to_i64
    values[47] = (((bytes[14] >> 44) & 1048575_u64)).to_i64
    values[48] = (((bytes[15] >> 0) & 1048575_u64)).to_i64
    values[49] = (((bytes[15] >> 20) & 1048575_u64)).to_i64
    values[50] = (((bytes[15] >> 40) & 1048575_u64)).to_i64
    values[51] = (((bytes[15] >> 60) & 1048575_u64) | ((bytes[16] & 65535_u64) << 4)).to_i64
    values[52] = (((bytes[16] >> 16) & 1048575_u64)).to_i64
    values[53] = (((bytes[16] >> 36) & 1048575_u64)).to_i64
    values[54] = (((bytes[16] >> 56) & 1048575_u64) | ((bytes[17] & 4095_u64) << 8)).to_i64
    values[55] = (((bytes[17] >> 12) & 1048575_u64)).to_i64
    values[56] = (((bytes[17] >> 32) & 1048575_u64)).to_i64
    values[57] = (((bytes[17] >> 52) & 1048575_u64) | ((bytes[18] & 255_u64) << 12)).to_i64
    values[58] = (((bytes[18] >> 8) & 1048575_u64)).to_i64
    values[59] = (((bytes[18] >> 28) & 1048575_u64)).to_i64
    values[60] = (((bytes[18] >> 48) & 1048575_u64) | ((bytes[19] & 15_u64) << 16)).to_i64
    values[61] = (((bytes[19] >> 4) & 1048575_u64)).to_i64
    values[62] = (((bytes[19] >> 24) & 1048575_u64)).to_i64
    values[63] = (((bytes[19] >> 44) & 1048575_u64)).to_i64
    values
  end

  def self.pack21(values)
    bytes = Slice(UInt64).new(21, 0_u64)
    bytes[0] = (((values[0] & 2097151_u64) << 0) |
                ((values[1] & 2097151_u64) << 21) |
                ((values[2] & 2097151_u64) << 42) |
                ((values[3] & 2097151_u64) << 63)).to_u64
    bytes[1] = (((values[3] & 2097151_u64) >> 1) |
                ((values[4] & 2097151_u64) << 20) |
                ((values[5] & 2097151_u64) << 41) |
                ((values[6] & 2097151_u64) << 62)).to_u64
    bytes[2] = (((values[6] & 2097151_u64) >> 2) |
                ((values[7] & 2097151_u64) << 19) |
                ((values[8] & 2097151_u64) << 40) |
                ((values[9] & 2097151_u64) << 61)).to_u64
    bytes[3] = (((values[9] & 2097151_u64) >> 3) |
                ((values[10] & 2097151_u64) << 18) |
                ((values[11] & 2097151_u64) << 39) |
                ((values[12] & 2097151_u64) << 60)).to_u64
    bytes[4] = (((values[12] & 2097151_u64) >> 4) |
                ((values[13] & 2097151_u64) << 17) |
                ((values[14] & 2097151_u64) << 38) |
                ((values[15] & 2097151_u64) << 59)).to_u64
    bytes[5] = (((values[15] & 2097151_u64) >> 5) |
                ((values[16] & 2097151_u64) << 16) |
                ((values[17] & 2097151_u64) << 37) |
                ((values[18] & 2097151_u64) << 58)).to_u64
    bytes[6] = (((values[18] & 2097151_u64) >> 6) |
                ((values[19] & 2097151_u64) << 15) |
                ((values[20] & 2097151_u64) << 36) |
                ((values[21] & 2097151_u64) << 57)).to_u64
    bytes[7] = (((values[21] & 2097151_u64) >> 7) |
                ((values[22] & 2097151_u64) << 14) |
                ((values[23] & 2097151_u64) << 35) |
                ((values[24] & 2097151_u64) << 56)).to_u64
    bytes[8] = (((values[24] & 2097151_u64) >> 8) |
                ((values[25] & 2097151_u64) << 13) |
                ((values[26] & 2097151_u64) << 34) |
                ((values[27] & 2097151_u64) << 55)).to_u64
    bytes[9] = (((values[27] & 2097151_u64) >> 9) |
                ((values[28] & 2097151_u64) << 12) |
                ((values[29] & 2097151_u64) << 33) |
                ((values[30] & 2097151_u64) << 54)).to_u64
    bytes[10] = (((values[30] & 2097151_u64) >> 10) |
                 ((values[31] & 2097151_u64) << 11) |
                 ((values[32] & 2097151_u64) << 32) |
                 ((values[33] & 2097151_u64) << 53)).to_u64
    bytes[11] = (((values[33] & 2097151_u64) >> 11) |
                 ((values[34] & 2097151_u64) << 10) |
                 ((values[35] & 2097151_u64) << 31) |
                 ((values[36] & 2097151_u64) << 52)).to_u64
    bytes[12] = (((values[36] & 2097151_u64) >> 12) |
                 ((values[37] & 2097151_u64) << 9) |
                 ((values[38] & 2097151_u64) << 30) |
                 ((values[39] & 2097151_u64) << 51)).to_u64
    bytes[13] = (((values[39] & 2097151_u64) >> 13) |
                 ((values[40] & 2097151_u64) << 8) |
                 ((values[41] & 2097151_u64) << 29) |
                 ((values[42] & 2097151_u64) << 50)).to_u64
    bytes[14] = (((values[42] & 2097151_u64) >> 14) |
                 ((values[43] & 2097151_u64) << 7) |
                 ((values[44] & 2097151_u64) << 28) |
                 ((values[45] & 2097151_u64) << 49)).to_u64
    bytes[15] = (((values[45] & 2097151_u64) >> 15) |
                 ((values[46] & 2097151_u64) << 6) |
                 ((values[47] & 2097151_u64) << 27) |
                 ((values[48] & 2097151_u64) << 48)).to_u64
    bytes[16] = (((values[48] & 2097151_u64) >> 16) |
                 ((values[49] & 2097151_u64) << 5) |
                 ((values[50] & 2097151_u64) << 26) |
                 ((values[51] & 2097151_u64) << 47)).to_u64
    bytes[17] = (((values[51] & 2097151_u64) >> 17) |
                 ((values[52] & 2097151_u64) << 4) |
                 ((values[53] & 2097151_u64) << 25) |
                 ((values[54] & 2097151_u64) << 46)).to_u64
    bytes[18] = (((values[54] & 2097151_u64) >> 18) |
                 ((values[55] & 2097151_u64) << 3) |
                 ((values[56] & 2097151_u64) << 24) |
                 ((values[57] & 2097151_u64) << 45)).to_u64
    bytes[19] = (((values[57] & 2097151_u64) >> 19) |
                 ((values[58] & 2097151_u64) << 2) |
                 ((values[59] & 2097151_u64) << 23) |
                 ((values[60] & 2097151_u64) << 44)).to_u64
    bytes[20] = (((values[60] & 2097151_u64) >> 20) |
                 ((values[61] & 2097151_u64) << 1) |
                 ((values[62] & 2097151_u64) << 22) |
                 ((values[63] & 2097151_u64) << 43)).to_u64
    bytes
  end

  def self.unpack21(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2097151_u64)).to_i64
    values[1] = (((bytes[0] >> 21) & 2097151_u64)).to_i64
    values[2] = (((bytes[0] >> 42) & 2097151_u64)).to_i64
    values[3] = (((bytes[0] >> 63) & 2097151_u64) | ((bytes[1] & 1048575_u64) << 1)).to_i64
    values[4] = (((bytes[1] >> 20) & 2097151_u64)).to_i64
    values[5] = (((bytes[1] >> 41) & 2097151_u64)).to_i64
    values[6] = (((bytes[1] >> 62) & 2097151_u64) | ((bytes[2] & 524287_u64) << 2)).to_i64
    values[7] = (((bytes[2] >> 19) & 2097151_u64)).to_i64
    values[8] = (((bytes[2] >> 40) & 2097151_u64)).to_i64
    values[9] = (((bytes[2] >> 61) & 2097151_u64) | ((bytes[3] & 262143_u64) << 3)).to_i64
    values[10] = (((bytes[3] >> 18) & 2097151_u64)).to_i64
    values[11] = (((bytes[3] >> 39) & 2097151_u64)).to_i64
    values[12] = (((bytes[3] >> 60) & 2097151_u64) | ((bytes[4] & 131071_u64) << 4)).to_i64
    values[13] = (((bytes[4] >> 17) & 2097151_u64)).to_i64
    values[14] = (((bytes[4] >> 38) & 2097151_u64)).to_i64
    values[15] = (((bytes[4] >> 59) & 2097151_u64) | ((bytes[5] & 65535_u64) << 5)).to_i64
    values[16] = (((bytes[5] >> 16) & 2097151_u64)).to_i64
    values[17] = (((bytes[5] >> 37) & 2097151_u64)).to_i64
    values[18] = (((bytes[5] >> 58) & 2097151_u64) | ((bytes[6] & 32767_u64) << 6)).to_i64
    values[19] = (((bytes[6] >> 15) & 2097151_u64)).to_i64
    values[20] = (((bytes[6] >> 36) & 2097151_u64)).to_i64
    values[21] = (((bytes[6] >> 57) & 2097151_u64) | ((bytes[7] & 16383_u64) << 7)).to_i64
    values[22] = (((bytes[7] >> 14) & 2097151_u64)).to_i64
    values[23] = (((bytes[7] >> 35) & 2097151_u64)).to_i64
    values[24] = (((bytes[7] >> 56) & 2097151_u64) | ((bytes[8] & 8191_u64) << 8)).to_i64
    values[25] = (((bytes[8] >> 13) & 2097151_u64)).to_i64
    values[26] = (((bytes[8] >> 34) & 2097151_u64)).to_i64
    values[27] = (((bytes[8] >> 55) & 2097151_u64) | ((bytes[9] & 4095_u64) << 9)).to_i64
    values[28] = (((bytes[9] >> 12) & 2097151_u64)).to_i64
    values[29] = (((bytes[9] >> 33) & 2097151_u64)).to_i64
    values[30] = (((bytes[9] >> 54) & 2097151_u64) | ((bytes[10] & 2047_u64) << 10)).to_i64
    values[31] = (((bytes[10] >> 11) & 2097151_u64)).to_i64
    values[32] = (((bytes[10] >> 32) & 2097151_u64)).to_i64
    values[33] = (((bytes[10] >> 53) & 2097151_u64) | ((bytes[11] & 1023_u64) << 11)).to_i64
    values[34] = (((bytes[11] >> 10) & 2097151_u64)).to_i64
    values[35] = (((bytes[11] >> 31) & 2097151_u64)).to_i64
    values[36] = (((bytes[11] >> 52) & 2097151_u64) | ((bytes[12] & 511_u64) << 12)).to_i64
    values[37] = (((bytes[12] >> 9) & 2097151_u64)).to_i64
    values[38] = (((bytes[12] >> 30) & 2097151_u64)).to_i64
    values[39] = (((bytes[12] >> 51) & 2097151_u64) | ((bytes[13] & 255_u64) << 13)).to_i64
    values[40] = (((bytes[13] >> 8) & 2097151_u64)).to_i64
    values[41] = (((bytes[13] >> 29) & 2097151_u64)).to_i64
    values[42] = (((bytes[13] >> 50) & 2097151_u64) | ((bytes[14] & 127_u64) << 14)).to_i64
    values[43] = (((bytes[14] >> 7) & 2097151_u64)).to_i64
    values[44] = (((bytes[14] >> 28) & 2097151_u64)).to_i64
    values[45] = (((bytes[14] >> 49) & 2097151_u64) | ((bytes[15] & 63_u64) << 15)).to_i64
    values[46] = (((bytes[15] >> 6) & 2097151_u64)).to_i64
    values[47] = (((bytes[15] >> 27) & 2097151_u64)).to_i64
    values[48] = (((bytes[15] >> 48) & 2097151_u64) | ((bytes[16] & 31_u64) << 16)).to_i64
    values[49] = (((bytes[16] >> 5) & 2097151_u64)).to_i64
    values[50] = (((bytes[16] >> 26) & 2097151_u64)).to_i64
    values[51] = (((bytes[16] >> 47) & 2097151_u64) | ((bytes[17] & 15_u64) << 17)).to_i64
    values[52] = (((bytes[17] >> 4) & 2097151_u64)).to_i64
    values[53] = (((bytes[17] >> 25) & 2097151_u64)).to_i64
    values[54] = (((bytes[17] >> 46) & 2097151_u64) | ((bytes[18] & 7_u64) << 18)).to_i64
    values[55] = (((bytes[18] >> 3) & 2097151_u64)).to_i64
    values[56] = (((bytes[18] >> 24) & 2097151_u64)).to_i64
    values[57] = (((bytes[18] >> 45) & 2097151_u64) | ((bytes[19] & 3_u64) << 19)).to_i64
    values[58] = (((bytes[19] >> 2) & 2097151_u64)).to_i64
    values[59] = (((bytes[19] >> 23) & 2097151_u64)).to_i64
    values[60] = (((bytes[19] >> 44) & 2097151_u64) | ((bytes[20] & 1_u64) << 20)).to_i64
    values[61] = (((bytes[20] >> 1) & 2097151_u64)).to_i64
    values[62] = (((bytes[20] >> 22) & 2097151_u64)).to_i64
    values[63] = (((bytes[20] >> 43) & 2097151_u64)).to_i64
    values
  end

  def self.pack22(values)
    bytes = Slice(UInt64).new(22, 0_u64)
    bytes[0] = (((values[0] & 4194303_u64) << 0) |
                ((values[1] & 4194303_u64) << 22) |
                ((values[2] & 4194303_u64) << 44)).to_u64
    bytes[1] = (((values[2] & 4194303_u64) >> 20) |
                ((values[3] & 4194303_u64) << 2) |
                ((values[4] & 4194303_u64) << 24) |
                ((values[5] & 4194303_u64) << 46)).to_u64
    bytes[2] = (((values[5] & 4194303_u64) >> 18) |
                ((values[6] & 4194303_u64) << 4) |
                ((values[7] & 4194303_u64) << 26) |
                ((values[8] & 4194303_u64) << 48)).to_u64
    bytes[3] = (((values[8] & 4194303_u64) >> 16) |
                ((values[9] & 4194303_u64) << 6) |
                ((values[10] & 4194303_u64) << 28) |
                ((values[11] & 4194303_u64) << 50)).to_u64
    bytes[4] = (((values[11] & 4194303_u64) >> 14) |
                ((values[12] & 4194303_u64) << 8) |
                ((values[13] & 4194303_u64) << 30) |
                ((values[14] & 4194303_u64) << 52)).to_u64
    bytes[5] = (((values[14] & 4194303_u64) >> 12) |
                ((values[15] & 4194303_u64) << 10) |
                ((values[16] & 4194303_u64) << 32) |
                ((values[17] & 4194303_u64) << 54)).to_u64
    bytes[6] = (((values[17] & 4194303_u64) >> 10) |
                ((values[18] & 4194303_u64) << 12) |
                ((values[19] & 4194303_u64) << 34) |
                ((values[20] & 4194303_u64) << 56)).to_u64
    bytes[7] = (((values[20] & 4194303_u64) >> 8) |
                ((values[21] & 4194303_u64) << 14) |
                ((values[22] & 4194303_u64) << 36) |
                ((values[23] & 4194303_u64) << 58)).to_u64
    bytes[8] = (((values[23] & 4194303_u64) >> 6) |
                ((values[24] & 4194303_u64) << 16) |
                ((values[25] & 4194303_u64) << 38) |
                ((values[26] & 4194303_u64) << 60)).to_u64
    bytes[9] = (((values[26] & 4194303_u64) >> 4) |
                ((values[27] & 4194303_u64) << 18) |
                ((values[28] & 4194303_u64) << 40) |
                ((values[29] & 4194303_u64) << 62)).to_u64
    bytes[10] = (((values[29] & 4194303_u64) >> 2) |
                 ((values[30] & 4194303_u64) << 20) |
                 ((values[31] & 4194303_u64) << 42)).to_u64
    bytes[11] = (((values[32] & 4194303_u64) << 0) |
                 ((values[33] & 4194303_u64) << 22) |
                 ((values[34] & 4194303_u64) << 44)).to_u64
    bytes[12] = (((values[34] & 4194303_u64) >> 20) |
                 ((values[35] & 4194303_u64) << 2) |
                 ((values[36] & 4194303_u64) << 24) |
                 ((values[37] & 4194303_u64) << 46)).to_u64
    bytes[13] = (((values[37] & 4194303_u64) >> 18) |
                 ((values[38] & 4194303_u64) << 4) |
                 ((values[39] & 4194303_u64) << 26) |
                 ((values[40] & 4194303_u64) << 48)).to_u64
    bytes[14] = (((values[40] & 4194303_u64) >> 16) |
                 ((values[41] & 4194303_u64) << 6) |
                 ((values[42] & 4194303_u64) << 28) |
                 ((values[43] & 4194303_u64) << 50)).to_u64
    bytes[15] = (((values[43] & 4194303_u64) >> 14) |
                 ((values[44] & 4194303_u64) << 8) |
                 ((values[45] & 4194303_u64) << 30) |
                 ((values[46] & 4194303_u64) << 52)).to_u64
    bytes[16] = (((values[46] & 4194303_u64) >> 12) |
                 ((values[47] & 4194303_u64) << 10) |
                 ((values[48] & 4194303_u64) << 32) |
                 ((values[49] & 4194303_u64) << 54)).to_u64
    bytes[17] = (((values[49] & 4194303_u64) >> 10) |
                 ((values[50] & 4194303_u64) << 12) |
                 ((values[51] & 4194303_u64) << 34) |
                 ((values[52] & 4194303_u64) << 56)).to_u64
    bytes[18] = (((values[52] & 4194303_u64) >> 8) |
                 ((values[53] & 4194303_u64) << 14) |
                 ((values[54] & 4194303_u64) << 36) |
                 ((values[55] & 4194303_u64) << 58)).to_u64
    bytes[19] = (((values[55] & 4194303_u64) >> 6) |
                 ((values[56] & 4194303_u64) << 16) |
                 ((values[57] & 4194303_u64) << 38) |
                 ((values[58] & 4194303_u64) << 60)).to_u64
    bytes[20] = (((values[58] & 4194303_u64) >> 4) |
                 ((values[59] & 4194303_u64) << 18) |
                 ((values[60] & 4194303_u64) << 40) |
                 ((values[61] & 4194303_u64) << 62)).to_u64
    bytes[21] = (((values[61] & 4194303_u64) >> 2) |
                 ((values[62] & 4194303_u64) << 20) |
                 ((values[63] & 4194303_u64) << 42)).to_u64
    bytes
  end

  def self.unpack22(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4194303_u64)).to_i64
    values[1] = (((bytes[0] >> 22) & 4194303_u64)).to_i64
    values[2] = (((bytes[0] >> 44) & 4194303_u64) | ((bytes[1] & 3_u64) << 20)).to_i64
    values[3] = (((bytes[1] >> 2) & 4194303_u64)).to_i64
    values[4] = (((bytes[1] >> 24) & 4194303_u64)).to_i64
    values[5] = (((bytes[1] >> 46) & 4194303_u64) | ((bytes[2] & 15_u64) << 18)).to_i64
    values[6] = (((bytes[2] >> 4) & 4194303_u64)).to_i64
    values[7] = (((bytes[2] >> 26) & 4194303_u64)).to_i64
    values[8] = (((bytes[2] >> 48) & 4194303_u64) | ((bytes[3] & 63_u64) << 16)).to_i64
    values[9] = (((bytes[3] >> 6) & 4194303_u64)).to_i64
    values[10] = (((bytes[3] >> 28) & 4194303_u64)).to_i64
    values[11] = (((bytes[3] >> 50) & 4194303_u64) | ((bytes[4] & 255_u64) << 14)).to_i64
    values[12] = (((bytes[4] >> 8) & 4194303_u64)).to_i64
    values[13] = (((bytes[4] >> 30) & 4194303_u64)).to_i64
    values[14] = (((bytes[4] >> 52) & 4194303_u64) | ((bytes[5] & 1023_u64) << 12)).to_i64
    values[15] = (((bytes[5] >> 10) & 4194303_u64)).to_i64
    values[16] = (((bytes[5] >> 32) & 4194303_u64)).to_i64
    values[17] = (((bytes[5] >> 54) & 4194303_u64) | ((bytes[6] & 4095_u64) << 10)).to_i64
    values[18] = (((bytes[6] >> 12) & 4194303_u64)).to_i64
    values[19] = (((bytes[6] >> 34) & 4194303_u64)).to_i64
    values[20] = (((bytes[6] >> 56) & 4194303_u64) | ((bytes[7] & 16383_u64) << 8)).to_i64
    values[21] = (((bytes[7] >> 14) & 4194303_u64)).to_i64
    values[22] = (((bytes[7] >> 36) & 4194303_u64)).to_i64
    values[23] = (((bytes[7] >> 58) & 4194303_u64) | ((bytes[8] & 65535_u64) << 6)).to_i64
    values[24] = (((bytes[8] >> 16) & 4194303_u64)).to_i64
    values[25] = (((bytes[8] >> 38) & 4194303_u64)).to_i64
    values[26] = (((bytes[8] >> 60) & 4194303_u64) | ((bytes[9] & 262143_u64) << 4)).to_i64
    values[27] = (((bytes[9] >> 18) & 4194303_u64)).to_i64
    values[28] = (((bytes[9] >> 40) & 4194303_u64)).to_i64
    values[29] = (((bytes[9] >> 62) & 4194303_u64) | ((bytes[10] & 1048575_u64) << 2)).to_i64
    values[30] = (((bytes[10] >> 20) & 4194303_u64)).to_i64
    values[31] = (((bytes[10] >> 42) & 4194303_u64)).to_i64
    values[32] = (((bytes[11] >> 0) & 4194303_u64)).to_i64
    values[33] = (((bytes[11] >> 22) & 4194303_u64)).to_i64
    values[34] = (((bytes[11] >> 44) & 4194303_u64) | ((bytes[12] & 3_u64) << 20)).to_i64
    values[35] = (((bytes[12] >> 2) & 4194303_u64)).to_i64
    values[36] = (((bytes[12] >> 24) & 4194303_u64)).to_i64
    values[37] = (((bytes[12] >> 46) & 4194303_u64) | ((bytes[13] & 15_u64) << 18)).to_i64
    values[38] = (((bytes[13] >> 4) & 4194303_u64)).to_i64
    values[39] = (((bytes[13] >> 26) & 4194303_u64)).to_i64
    values[40] = (((bytes[13] >> 48) & 4194303_u64) | ((bytes[14] & 63_u64) << 16)).to_i64
    values[41] = (((bytes[14] >> 6) & 4194303_u64)).to_i64
    values[42] = (((bytes[14] >> 28) & 4194303_u64)).to_i64
    values[43] = (((bytes[14] >> 50) & 4194303_u64) | ((bytes[15] & 255_u64) << 14)).to_i64
    values[44] = (((bytes[15] >> 8) & 4194303_u64)).to_i64
    values[45] = (((bytes[15] >> 30) & 4194303_u64)).to_i64
    values[46] = (((bytes[15] >> 52) & 4194303_u64) | ((bytes[16] & 1023_u64) << 12)).to_i64
    values[47] = (((bytes[16] >> 10) & 4194303_u64)).to_i64
    values[48] = (((bytes[16] >> 32) & 4194303_u64)).to_i64
    values[49] = (((bytes[16] >> 54) & 4194303_u64) | ((bytes[17] & 4095_u64) << 10)).to_i64
    values[50] = (((bytes[17] >> 12) & 4194303_u64)).to_i64
    values[51] = (((bytes[17] >> 34) & 4194303_u64)).to_i64
    values[52] = (((bytes[17] >> 56) & 4194303_u64) | ((bytes[18] & 16383_u64) << 8)).to_i64
    values[53] = (((bytes[18] >> 14) & 4194303_u64)).to_i64
    values[54] = (((bytes[18] >> 36) & 4194303_u64)).to_i64
    values[55] = (((bytes[18] >> 58) & 4194303_u64) | ((bytes[19] & 65535_u64) << 6)).to_i64
    values[56] = (((bytes[19] >> 16) & 4194303_u64)).to_i64
    values[57] = (((bytes[19] >> 38) & 4194303_u64)).to_i64
    values[58] = (((bytes[19] >> 60) & 4194303_u64) | ((bytes[20] & 262143_u64) << 4)).to_i64
    values[59] = (((bytes[20] >> 18) & 4194303_u64)).to_i64
    values[60] = (((bytes[20] >> 40) & 4194303_u64)).to_i64
    values[61] = (((bytes[20] >> 62) & 4194303_u64) | ((bytes[21] & 1048575_u64) << 2)).to_i64
    values[62] = (((bytes[21] >> 20) & 4194303_u64)).to_i64
    values[63] = (((bytes[21] >> 42) & 4194303_u64)).to_i64
    values
  end

  def self.pack23(values)
    bytes = Slice(UInt64).new(23, 0_u64)
    bytes[0] = (((values[0] & 8388607_u64) << 0) |
                ((values[1] & 8388607_u64) << 23) |
                ((values[2] & 8388607_u64) << 46)).to_u64
    bytes[1] = (((values[2] & 8388607_u64) >> 18) |
                ((values[3] & 8388607_u64) << 5) |
                ((values[4] & 8388607_u64) << 28) |
                ((values[5] & 8388607_u64) << 51)).to_u64
    bytes[2] = (((values[5] & 8388607_u64) >> 13) |
                ((values[6] & 8388607_u64) << 10) |
                ((values[7] & 8388607_u64) << 33) |
                ((values[8] & 8388607_u64) << 56)).to_u64
    bytes[3] = (((values[8] & 8388607_u64) >> 8) |
                ((values[9] & 8388607_u64) << 15) |
                ((values[10] & 8388607_u64) << 38) |
                ((values[11] & 8388607_u64) << 61)).to_u64
    bytes[4] = (((values[11] & 8388607_u64) >> 3) |
                ((values[12] & 8388607_u64) << 20) |
                ((values[13] & 8388607_u64) << 43)).to_u64
    bytes[5] = (((values[13] & 8388607_u64) >> 21) |
                ((values[14] & 8388607_u64) << 2) |
                ((values[15] & 8388607_u64) << 25) |
                ((values[16] & 8388607_u64) << 48)).to_u64
    bytes[6] = (((values[16] & 8388607_u64) >> 16) |
                ((values[17] & 8388607_u64) << 7) |
                ((values[18] & 8388607_u64) << 30) |
                ((values[19] & 8388607_u64) << 53)).to_u64
    bytes[7] = (((values[19] & 8388607_u64) >> 11) |
                ((values[20] & 8388607_u64) << 12) |
                ((values[21] & 8388607_u64) << 35) |
                ((values[22] & 8388607_u64) << 58)).to_u64
    bytes[8] = (((values[22] & 8388607_u64) >> 6) |
                ((values[23] & 8388607_u64) << 17) |
                ((values[24] & 8388607_u64) << 40) |
                ((values[25] & 8388607_u64) << 63)).to_u64
    bytes[9] = (((values[25] & 8388607_u64) >> 1) |
                ((values[26] & 8388607_u64) << 22) |
                ((values[27] & 8388607_u64) << 45)).to_u64
    bytes[10] = (((values[27] & 8388607_u64) >> 19) |
                 ((values[28] & 8388607_u64) << 4) |
                 ((values[29] & 8388607_u64) << 27) |
                 ((values[30] & 8388607_u64) << 50)).to_u64
    bytes[11] = (((values[30] & 8388607_u64) >> 14) |
                 ((values[31] & 8388607_u64) << 9) |
                 ((values[32] & 8388607_u64) << 32) |
                 ((values[33] & 8388607_u64) << 55)).to_u64
    bytes[12] = (((values[33] & 8388607_u64) >> 9) |
                 ((values[34] & 8388607_u64) << 14) |
                 ((values[35] & 8388607_u64) << 37) |
                 ((values[36] & 8388607_u64) << 60)).to_u64
    bytes[13] = (((values[36] & 8388607_u64) >> 4) |
                 ((values[37] & 8388607_u64) << 19) |
                 ((values[38] & 8388607_u64) << 42)).to_u64
    bytes[14] = (((values[38] & 8388607_u64) >> 22) |
                 ((values[39] & 8388607_u64) << 1) |
                 ((values[40] & 8388607_u64) << 24) |
                 ((values[41] & 8388607_u64) << 47)).to_u64
    bytes[15] = (((values[41] & 8388607_u64) >> 17) |
                 ((values[42] & 8388607_u64) << 6) |
                 ((values[43] & 8388607_u64) << 29) |
                 ((values[44] & 8388607_u64) << 52)).to_u64
    bytes[16] = (((values[44] & 8388607_u64) >> 12) |
                 ((values[45] & 8388607_u64) << 11) |
                 ((values[46] & 8388607_u64) << 34) |
                 ((values[47] & 8388607_u64) << 57)).to_u64
    bytes[17] = (((values[47] & 8388607_u64) >> 7) |
                 ((values[48] & 8388607_u64) << 16) |
                 ((values[49] & 8388607_u64) << 39) |
                 ((values[50] & 8388607_u64) << 62)).to_u64
    bytes[18] = (((values[50] & 8388607_u64) >> 2) |
                 ((values[51] & 8388607_u64) << 21) |
                 ((values[52] & 8388607_u64) << 44)).to_u64
    bytes[19] = (((values[52] & 8388607_u64) >> 20) |
                 ((values[53] & 8388607_u64) << 3) |
                 ((values[54] & 8388607_u64) << 26) |
                 ((values[55] & 8388607_u64) << 49)).to_u64
    bytes[20] = (((values[55] & 8388607_u64) >> 15) |
                 ((values[56] & 8388607_u64) << 8) |
                 ((values[57] & 8388607_u64) << 31) |
                 ((values[58] & 8388607_u64) << 54)).to_u64
    bytes[21] = (((values[58] & 8388607_u64) >> 10) |
                 ((values[59] & 8388607_u64) << 13) |
                 ((values[60] & 8388607_u64) << 36) |
                 ((values[61] & 8388607_u64) << 59)).to_u64
    bytes[22] = (((values[61] & 8388607_u64) >> 5) |
                 ((values[62] & 8388607_u64) << 18) |
                 ((values[63] & 8388607_u64) << 41)).to_u64
    bytes
  end

  def self.unpack23(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 8388607_u64)).to_i64
    values[1] = (((bytes[0] >> 23) & 8388607_u64)).to_i64
    values[2] = (((bytes[0] >> 46) & 8388607_u64) | ((bytes[1] & 31_u64) << 18)).to_i64
    values[3] = (((bytes[1] >> 5) & 8388607_u64)).to_i64
    values[4] = (((bytes[1] >> 28) & 8388607_u64)).to_i64
    values[5] = (((bytes[1] >> 51) & 8388607_u64) | ((bytes[2] & 1023_u64) << 13)).to_i64
    values[6] = (((bytes[2] >> 10) & 8388607_u64)).to_i64
    values[7] = (((bytes[2] >> 33) & 8388607_u64)).to_i64
    values[8] = (((bytes[2] >> 56) & 8388607_u64) | ((bytes[3] & 32767_u64) << 8)).to_i64
    values[9] = (((bytes[3] >> 15) & 8388607_u64)).to_i64
    values[10] = (((bytes[3] >> 38) & 8388607_u64)).to_i64
    values[11] = (((bytes[3] >> 61) & 8388607_u64) | ((bytes[4] & 1048575_u64) << 3)).to_i64
    values[12] = (((bytes[4] >> 20) & 8388607_u64)).to_i64
    values[13] = (((bytes[4] >> 43) & 8388607_u64) | ((bytes[5] & 3_u64) << 21)).to_i64
    values[14] = (((bytes[5] >> 2) & 8388607_u64)).to_i64
    values[15] = (((bytes[5] >> 25) & 8388607_u64)).to_i64
    values[16] = (((bytes[5] >> 48) & 8388607_u64) | ((bytes[6] & 127_u64) << 16)).to_i64
    values[17] = (((bytes[6] >> 7) & 8388607_u64)).to_i64
    values[18] = (((bytes[6] >> 30) & 8388607_u64)).to_i64
    values[19] = (((bytes[6] >> 53) & 8388607_u64) | ((bytes[7] & 4095_u64) << 11)).to_i64
    values[20] = (((bytes[7] >> 12) & 8388607_u64)).to_i64
    values[21] = (((bytes[7] >> 35) & 8388607_u64)).to_i64
    values[22] = (((bytes[7] >> 58) & 8388607_u64) | ((bytes[8] & 131071_u64) << 6)).to_i64
    values[23] = (((bytes[8] >> 17) & 8388607_u64)).to_i64
    values[24] = (((bytes[8] >> 40) & 8388607_u64)).to_i64
    values[25] = (((bytes[8] >> 63) & 8388607_u64) | ((bytes[9] & 4194303_u64) << 1)).to_i64
    values[26] = (((bytes[9] >> 22) & 8388607_u64)).to_i64
    values[27] = (((bytes[9] >> 45) & 8388607_u64) | ((bytes[10] & 15_u64) << 19)).to_i64
    values[28] = (((bytes[10] >> 4) & 8388607_u64)).to_i64
    values[29] = (((bytes[10] >> 27) & 8388607_u64)).to_i64
    values[30] = (((bytes[10] >> 50) & 8388607_u64) | ((bytes[11] & 511_u64) << 14)).to_i64
    values[31] = (((bytes[11] >> 9) & 8388607_u64)).to_i64
    values[32] = (((bytes[11] >> 32) & 8388607_u64)).to_i64
    values[33] = (((bytes[11] >> 55) & 8388607_u64) | ((bytes[12] & 16383_u64) << 9)).to_i64
    values[34] = (((bytes[12] >> 14) & 8388607_u64)).to_i64
    values[35] = (((bytes[12] >> 37) & 8388607_u64)).to_i64
    values[36] = (((bytes[12] >> 60) & 8388607_u64) | ((bytes[13] & 524287_u64) << 4)).to_i64
    values[37] = (((bytes[13] >> 19) & 8388607_u64)).to_i64
    values[38] = (((bytes[13] >> 42) & 8388607_u64) | ((bytes[14] & 1_u64) << 22)).to_i64
    values[39] = (((bytes[14] >> 1) & 8388607_u64)).to_i64
    values[40] = (((bytes[14] >> 24) & 8388607_u64)).to_i64
    values[41] = (((bytes[14] >> 47) & 8388607_u64) | ((bytes[15] & 63_u64) << 17)).to_i64
    values[42] = (((bytes[15] >> 6) & 8388607_u64)).to_i64
    values[43] = (((bytes[15] >> 29) & 8388607_u64)).to_i64
    values[44] = (((bytes[15] >> 52) & 8388607_u64) | ((bytes[16] & 2047_u64) << 12)).to_i64
    values[45] = (((bytes[16] >> 11) & 8388607_u64)).to_i64
    values[46] = (((bytes[16] >> 34) & 8388607_u64)).to_i64
    values[47] = (((bytes[16] >> 57) & 8388607_u64) | ((bytes[17] & 65535_u64) << 7)).to_i64
    values[48] = (((bytes[17] >> 16) & 8388607_u64)).to_i64
    values[49] = (((bytes[17] >> 39) & 8388607_u64)).to_i64
    values[50] = (((bytes[17] >> 62) & 8388607_u64) | ((bytes[18] & 2097151_u64) << 2)).to_i64
    values[51] = (((bytes[18] >> 21) & 8388607_u64)).to_i64
    values[52] = (((bytes[18] >> 44) & 8388607_u64) | ((bytes[19] & 7_u64) << 20)).to_i64
    values[53] = (((bytes[19] >> 3) & 8388607_u64)).to_i64
    values[54] = (((bytes[19] >> 26) & 8388607_u64)).to_i64
    values[55] = (((bytes[19] >> 49) & 8388607_u64) | ((bytes[20] & 255_u64) << 15)).to_i64
    values[56] = (((bytes[20] >> 8) & 8388607_u64)).to_i64
    values[57] = (((bytes[20] >> 31) & 8388607_u64)).to_i64
    values[58] = (((bytes[20] >> 54) & 8388607_u64) | ((bytes[21] & 8191_u64) << 10)).to_i64
    values[59] = (((bytes[21] >> 13) & 8388607_u64)).to_i64
    values[60] = (((bytes[21] >> 36) & 8388607_u64)).to_i64
    values[61] = (((bytes[21] >> 59) & 8388607_u64) | ((bytes[22] & 262143_u64) << 5)).to_i64
    values[62] = (((bytes[22] >> 18) & 8388607_u64)).to_i64
    values[63] = (((bytes[22] >> 41) & 8388607_u64)).to_i64
    values
  end

  def self.pack24(values)
    bytes = Slice(UInt64).new(24, 0_u64)
    bytes[0] = (((values[0] & 16777215_u64) << 0) |
                ((values[1] & 16777215_u64) << 24) |
                ((values[2] & 16777215_u64) << 48)).to_u64
    bytes[1] = (((values[2] & 16777215_u64) >> 16) |
                ((values[3] & 16777215_u64) << 8) |
                ((values[4] & 16777215_u64) << 32) |
                ((values[5] & 16777215_u64) << 56)).to_u64
    bytes[2] = (((values[5] & 16777215_u64) >> 8) |
                ((values[6] & 16777215_u64) << 16) |
                ((values[7] & 16777215_u64) << 40)).to_u64
    bytes[3] = (((values[8] & 16777215_u64) << 0) |
                ((values[9] & 16777215_u64) << 24) |
                ((values[10] & 16777215_u64) << 48)).to_u64
    bytes[4] = (((values[10] & 16777215_u64) >> 16) |
                ((values[11] & 16777215_u64) << 8) |
                ((values[12] & 16777215_u64) << 32) |
                ((values[13] & 16777215_u64) << 56)).to_u64
    bytes[5] = (((values[13] & 16777215_u64) >> 8) |
                ((values[14] & 16777215_u64) << 16) |
                ((values[15] & 16777215_u64) << 40)).to_u64
    bytes[6] = (((values[16] & 16777215_u64) << 0) |
                ((values[17] & 16777215_u64) << 24) |
                ((values[18] & 16777215_u64) << 48)).to_u64
    bytes[7] = (((values[18] & 16777215_u64) >> 16) |
                ((values[19] & 16777215_u64) << 8) |
                ((values[20] & 16777215_u64) << 32) |
                ((values[21] & 16777215_u64) << 56)).to_u64
    bytes[8] = (((values[21] & 16777215_u64) >> 8) |
                ((values[22] & 16777215_u64) << 16) |
                ((values[23] & 16777215_u64) << 40)).to_u64
    bytes[9] = (((values[24] & 16777215_u64) << 0) |
                ((values[25] & 16777215_u64) << 24) |
                ((values[26] & 16777215_u64) << 48)).to_u64
    bytes[10] = (((values[26] & 16777215_u64) >> 16) |
                 ((values[27] & 16777215_u64) << 8) |
                 ((values[28] & 16777215_u64) << 32) |
                 ((values[29] & 16777215_u64) << 56)).to_u64
    bytes[11] = (((values[29] & 16777215_u64) >> 8) |
                 ((values[30] & 16777215_u64) << 16) |
                 ((values[31] & 16777215_u64) << 40)).to_u64
    bytes[12] = (((values[32] & 16777215_u64) << 0) |
                 ((values[33] & 16777215_u64) << 24) |
                 ((values[34] & 16777215_u64) << 48)).to_u64
    bytes[13] = (((values[34] & 16777215_u64) >> 16) |
                 ((values[35] & 16777215_u64) << 8) |
                 ((values[36] & 16777215_u64) << 32) |
                 ((values[37] & 16777215_u64) << 56)).to_u64
    bytes[14] = (((values[37] & 16777215_u64) >> 8) |
                 ((values[38] & 16777215_u64) << 16) |
                 ((values[39] & 16777215_u64) << 40)).to_u64
    bytes[15] = (((values[40] & 16777215_u64) << 0) |
                 ((values[41] & 16777215_u64) << 24) |
                 ((values[42] & 16777215_u64) << 48)).to_u64
    bytes[16] = (((values[42] & 16777215_u64) >> 16) |
                 ((values[43] & 16777215_u64) << 8) |
                 ((values[44] & 16777215_u64) << 32) |
                 ((values[45] & 16777215_u64) << 56)).to_u64
    bytes[17] = (((values[45] & 16777215_u64) >> 8) |
                 ((values[46] & 16777215_u64) << 16) |
                 ((values[47] & 16777215_u64) << 40)).to_u64
    bytes[18] = (((values[48] & 16777215_u64) << 0) |
                 ((values[49] & 16777215_u64) << 24) |
                 ((values[50] & 16777215_u64) << 48)).to_u64
    bytes[19] = (((values[50] & 16777215_u64) >> 16) |
                 ((values[51] & 16777215_u64) << 8) |
                 ((values[52] & 16777215_u64) << 32) |
                 ((values[53] & 16777215_u64) << 56)).to_u64
    bytes[20] = (((values[53] & 16777215_u64) >> 8) |
                 ((values[54] & 16777215_u64) << 16) |
                 ((values[55] & 16777215_u64) << 40)).to_u64
    bytes[21] = (((values[56] & 16777215_u64) << 0) |
                 ((values[57] & 16777215_u64) << 24) |
                 ((values[58] & 16777215_u64) << 48)).to_u64
    bytes[22] = (((values[58] & 16777215_u64) >> 16) |
                 ((values[59] & 16777215_u64) << 8) |
                 ((values[60] & 16777215_u64) << 32) |
                 ((values[61] & 16777215_u64) << 56)).to_u64
    bytes[23] = (((values[61] & 16777215_u64) >> 8) |
                 ((values[62] & 16777215_u64) << 16) |
                 ((values[63] & 16777215_u64) << 40)).to_u64
    bytes
  end

  def self.unpack24(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 16777215_u64)).to_i64
    values[1] = (((bytes[0] >> 24) & 16777215_u64)).to_i64
    values[2] = (((bytes[0] >> 48) & 16777215_u64) | ((bytes[1] & 255_u64) << 16)).to_i64
    values[3] = (((bytes[1] >> 8) & 16777215_u64)).to_i64
    values[4] = (((bytes[1] >> 32) & 16777215_u64)).to_i64
    values[5] = (((bytes[1] >> 56) & 16777215_u64) | ((bytes[2] & 65535_u64) << 8)).to_i64
    values[6] = (((bytes[2] >> 16) & 16777215_u64)).to_i64
    values[7] = (((bytes[2] >> 40) & 16777215_u64)).to_i64
    values[8] = (((bytes[3] >> 0) & 16777215_u64)).to_i64
    values[9] = (((bytes[3] >> 24) & 16777215_u64)).to_i64
    values[10] = (((bytes[3] >> 48) & 16777215_u64) | ((bytes[4] & 255_u64) << 16)).to_i64
    values[11] = (((bytes[4] >> 8) & 16777215_u64)).to_i64
    values[12] = (((bytes[4] >> 32) & 16777215_u64)).to_i64
    values[13] = (((bytes[4] >> 56) & 16777215_u64) | ((bytes[5] & 65535_u64) << 8)).to_i64
    values[14] = (((bytes[5] >> 16) & 16777215_u64)).to_i64
    values[15] = (((bytes[5] >> 40) & 16777215_u64)).to_i64
    values[16] = (((bytes[6] >> 0) & 16777215_u64)).to_i64
    values[17] = (((bytes[6] >> 24) & 16777215_u64)).to_i64
    values[18] = (((bytes[6] >> 48) & 16777215_u64) | ((bytes[7] & 255_u64) << 16)).to_i64
    values[19] = (((bytes[7] >> 8) & 16777215_u64)).to_i64
    values[20] = (((bytes[7] >> 32) & 16777215_u64)).to_i64
    values[21] = (((bytes[7] >> 56) & 16777215_u64) | ((bytes[8] & 65535_u64) << 8)).to_i64
    values[22] = (((bytes[8] >> 16) & 16777215_u64)).to_i64
    values[23] = (((bytes[8] >> 40) & 16777215_u64)).to_i64
    values[24] = (((bytes[9] >> 0) & 16777215_u64)).to_i64
    values[25] = (((bytes[9] >> 24) & 16777215_u64)).to_i64
    values[26] = (((bytes[9] >> 48) & 16777215_u64) | ((bytes[10] & 255_u64) << 16)).to_i64
    values[27] = (((bytes[10] >> 8) & 16777215_u64)).to_i64
    values[28] = (((bytes[10] >> 32) & 16777215_u64)).to_i64
    values[29] = (((bytes[10] >> 56) & 16777215_u64) | ((bytes[11] & 65535_u64) << 8)).to_i64
    values[30] = (((bytes[11] >> 16) & 16777215_u64)).to_i64
    values[31] = (((bytes[11] >> 40) & 16777215_u64)).to_i64
    values[32] = (((bytes[12] >> 0) & 16777215_u64)).to_i64
    values[33] = (((bytes[12] >> 24) & 16777215_u64)).to_i64
    values[34] = (((bytes[12] >> 48) & 16777215_u64) | ((bytes[13] & 255_u64) << 16)).to_i64
    values[35] = (((bytes[13] >> 8) & 16777215_u64)).to_i64
    values[36] = (((bytes[13] >> 32) & 16777215_u64)).to_i64
    values[37] = (((bytes[13] >> 56) & 16777215_u64) | ((bytes[14] & 65535_u64) << 8)).to_i64
    values[38] = (((bytes[14] >> 16) & 16777215_u64)).to_i64
    values[39] = (((bytes[14] >> 40) & 16777215_u64)).to_i64
    values[40] = (((bytes[15] >> 0) & 16777215_u64)).to_i64
    values[41] = (((bytes[15] >> 24) & 16777215_u64)).to_i64
    values[42] = (((bytes[15] >> 48) & 16777215_u64) | ((bytes[16] & 255_u64) << 16)).to_i64
    values[43] = (((bytes[16] >> 8) & 16777215_u64)).to_i64
    values[44] = (((bytes[16] >> 32) & 16777215_u64)).to_i64
    values[45] = (((bytes[16] >> 56) & 16777215_u64) | ((bytes[17] & 65535_u64) << 8)).to_i64
    values[46] = (((bytes[17] >> 16) & 16777215_u64)).to_i64
    values[47] = (((bytes[17] >> 40) & 16777215_u64)).to_i64
    values[48] = (((bytes[18] >> 0) & 16777215_u64)).to_i64
    values[49] = (((bytes[18] >> 24) & 16777215_u64)).to_i64
    values[50] = (((bytes[18] >> 48) & 16777215_u64) | ((bytes[19] & 255_u64) << 16)).to_i64
    values[51] = (((bytes[19] >> 8) & 16777215_u64)).to_i64
    values[52] = (((bytes[19] >> 32) & 16777215_u64)).to_i64
    values[53] = (((bytes[19] >> 56) & 16777215_u64) | ((bytes[20] & 65535_u64) << 8)).to_i64
    values[54] = (((bytes[20] >> 16) & 16777215_u64)).to_i64
    values[55] = (((bytes[20] >> 40) & 16777215_u64)).to_i64
    values[56] = (((bytes[21] >> 0) & 16777215_u64)).to_i64
    values[57] = (((bytes[21] >> 24) & 16777215_u64)).to_i64
    values[58] = (((bytes[21] >> 48) & 16777215_u64) | ((bytes[22] & 255_u64) << 16)).to_i64
    values[59] = (((bytes[22] >> 8) & 16777215_u64)).to_i64
    values[60] = (((bytes[22] >> 32) & 16777215_u64)).to_i64
    values[61] = (((bytes[22] >> 56) & 16777215_u64) | ((bytes[23] & 65535_u64) << 8)).to_i64
    values[62] = (((bytes[23] >> 16) & 16777215_u64)).to_i64
    values[63] = (((bytes[23] >> 40) & 16777215_u64)).to_i64
    values
  end

  def self.pack25(values)
    bytes = Slice(UInt64).new(25, 0_u64)
    bytes[0] = (((values[0] & 33554431_u64) << 0) |
                ((values[1] & 33554431_u64) << 25) |
                ((values[2] & 33554431_u64) << 50)).to_u64
    bytes[1] = (((values[2] & 33554431_u64) >> 14) |
                ((values[3] & 33554431_u64) << 11) |
                ((values[4] & 33554431_u64) << 36) |
                ((values[5] & 33554431_u64) << 61)).to_u64
    bytes[2] = (((values[5] & 33554431_u64) >> 3) |
                ((values[6] & 33554431_u64) << 22) |
                ((values[7] & 33554431_u64) << 47)).to_u64
    bytes[3] = (((values[7] & 33554431_u64) >> 17) |
                ((values[8] & 33554431_u64) << 8) |
                ((values[9] & 33554431_u64) << 33) |
                ((values[10] & 33554431_u64) << 58)).to_u64
    bytes[4] = (((values[10] & 33554431_u64) >> 6) |
                ((values[11] & 33554431_u64) << 19) |
                ((values[12] & 33554431_u64) << 44)).to_u64
    bytes[5] = (((values[12] & 33554431_u64) >> 20) |
                ((values[13] & 33554431_u64) << 5) |
                ((values[14] & 33554431_u64) << 30) |
                ((values[15] & 33554431_u64) << 55)).to_u64
    bytes[6] = (((values[15] & 33554431_u64) >> 9) |
                ((values[16] & 33554431_u64) << 16) |
                ((values[17] & 33554431_u64) << 41)).to_u64
    bytes[7] = (((values[17] & 33554431_u64) >> 23) |
                ((values[18] & 33554431_u64) << 2) |
                ((values[19] & 33554431_u64) << 27) |
                ((values[20] & 33554431_u64) << 52)).to_u64
    bytes[8] = (((values[20] & 33554431_u64) >> 12) |
                ((values[21] & 33554431_u64) << 13) |
                ((values[22] & 33554431_u64) << 38) |
                ((values[23] & 33554431_u64) << 63)).to_u64
    bytes[9] = (((values[23] & 33554431_u64) >> 1) |
                ((values[24] & 33554431_u64) << 24) |
                ((values[25] & 33554431_u64) << 49)).to_u64
    bytes[10] = (((values[25] & 33554431_u64) >> 15) |
                 ((values[26] & 33554431_u64) << 10) |
                 ((values[27] & 33554431_u64) << 35) |
                 ((values[28] & 33554431_u64) << 60)).to_u64
    bytes[11] = (((values[28] & 33554431_u64) >> 4) |
                 ((values[29] & 33554431_u64) << 21) |
                 ((values[30] & 33554431_u64) << 46)).to_u64
    bytes[12] = (((values[30] & 33554431_u64) >> 18) |
                 ((values[31] & 33554431_u64) << 7) |
                 ((values[32] & 33554431_u64) << 32) |
                 ((values[33] & 33554431_u64) << 57)).to_u64
    bytes[13] = (((values[33] & 33554431_u64) >> 7) |
                 ((values[34] & 33554431_u64) << 18) |
                 ((values[35] & 33554431_u64) << 43)).to_u64
    bytes[14] = (((values[35] & 33554431_u64) >> 21) |
                 ((values[36] & 33554431_u64) << 4) |
                 ((values[37] & 33554431_u64) << 29) |
                 ((values[38] & 33554431_u64) << 54)).to_u64
    bytes[15] = (((values[38] & 33554431_u64) >> 10) |
                 ((values[39] & 33554431_u64) << 15) |
                 ((values[40] & 33554431_u64) << 40)).to_u64
    bytes[16] = (((values[40] & 33554431_u64) >> 24) |
                 ((values[41] & 33554431_u64) << 1) |
                 ((values[42] & 33554431_u64) << 26) |
                 ((values[43] & 33554431_u64) << 51)).to_u64
    bytes[17] = (((values[43] & 33554431_u64) >> 13) |
                 ((values[44] & 33554431_u64) << 12) |
                 ((values[45] & 33554431_u64) << 37) |
                 ((values[46] & 33554431_u64) << 62)).to_u64
    bytes[18] = (((values[46] & 33554431_u64) >> 2) |
                 ((values[47] & 33554431_u64) << 23) |
                 ((values[48] & 33554431_u64) << 48)).to_u64
    bytes[19] = (((values[48] & 33554431_u64) >> 16) |
                 ((values[49] & 33554431_u64) << 9) |
                 ((values[50] & 33554431_u64) << 34) |
                 ((values[51] & 33554431_u64) << 59)).to_u64
    bytes[20] = (((values[51] & 33554431_u64) >> 5) |
                 ((values[52] & 33554431_u64) << 20) |
                 ((values[53] & 33554431_u64) << 45)).to_u64
    bytes[21] = (((values[53] & 33554431_u64) >> 19) |
                 ((values[54] & 33554431_u64) << 6) |
                 ((values[55] & 33554431_u64) << 31) |
                 ((values[56] & 33554431_u64) << 56)).to_u64
    bytes[22] = (((values[56] & 33554431_u64) >> 8) |
                 ((values[57] & 33554431_u64) << 17) |
                 ((values[58] & 33554431_u64) << 42)).to_u64
    bytes[23] = (((values[58] & 33554431_u64) >> 22) |
                 ((values[59] & 33554431_u64) << 3) |
                 ((values[60] & 33554431_u64) << 28) |
                 ((values[61] & 33554431_u64) << 53)).to_u64
    bytes[24] = (((values[61] & 33554431_u64) >> 11) |
                 ((values[62] & 33554431_u64) << 14) |
                 ((values[63] & 33554431_u64) << 39)).to_u64
    bytes
  end

  def self.unpack25(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 33554431_u64)).to_i64
    values[1] = (((bytes[0] >> 25) & 33554431_u64)).to_i64
    values[2] = (((bytes[0] >> 50) & 33554431_u64) | ((bytes[1] & 2047_u64) << 14)).to_i64
    values[3] = (((bytes[1] >> 11) & 33554431_u64)).to_i64
    values[4] = (((bytes[1] >> 36) & 33554431_u64)).to_i64
    values[5] = (((bytes[1] >> 61) & 33554431_u64) | ((bytes[2] & 4194303_u64) << 3)).to_i64
    values[6] = (((bytes[2] >> 22) & 33554431_u64)).to_i64
    values[7] = (((bytes[2] >> 47) & 33554431_u64) | ((bytes[3] & 255_u64) << 17)).to_i64
    values[8] = (((bytes[3] >> 8) & 33554431_u64)).to_i64
    values[9] = (((bytes[3] >> 33) & 33554431_u64)).to_i64
    values[10] = (((bytes[3] >> 58) & 33554431_u64) | ((bytes[4] & 524287_u64) << 6)).to_i64
    values[11] = (((bytes[4] >> 19) & 33554431_u64)).to_i64
    values[12] = (((bytes[4] >> 44) & 33554431_u64) | ((bytes[5] & 31_u64) << 20)).to_i64
    values[13] = (((bytes[5] >> 5) & 33554431_u64)).to_i64
    values[14] = (((bytes[5] >> 30) & 33554431_u64)).to_i64
    values[15] = (((bytes[5] >> 55) & 33554431_u64) | ((bytes[6] & 65535_u64) << 9)).to_i64
    values[16] = (((bytes[6] >> 16) & 33554431_u64)).to_i64
    values[17] = (((bytes[6] >> 41) & 33554431_u64) | ((bytes[7] & 3_u64) << 23)).to_i64
    values[18] = (((bytes[7] >> 2) & 33554431_u64)).to_i64
    values[19] = (((bytes[7] >> 27) & 33554431_u64)).to_i64
    values[20] = (((bytes[7] >> 52) & 33554431_u64) | ((bytes[8] & 8191_u64) << 12)).to_i64
    values[21] = (((bytes[8] >> 13) & 33554431_u64)).to_i64
    values[22] = (((bytes[8] >> 38) & 33554431_u64)).to_i64
    values[23] = (((bytes[8] >> 63) & 33554431_u64) | ((bytes[9] & 16777215_u64) << 1)).to_i64
    values[24] = (((bytes[9] >> 24) & 33554431_u64)).to_i64
    values[25] = (((bytes[9] >> 49) & 33554431_u64) | ((bytes[10] & 1023_u64) << 15)).to_i64
    values[26] = (((bytes[10] >> 10) & 33554431_u64)).to_i64
    values[27] = (((bytes[10] >> 35) & 33554431_u64)).to_i64
    values[28] = (((bytes[10] >> 60) & 33554431_u64) | ((bytes[11] & 2097151_u64) << 4)).to_i64
    values[29] = (((bytes[11] >> 21) & 33554431_u64)).to_i64
    values[30] = (((bytes[11] >> 46) & 33554431_u64) | ((bytes[12] & 127_u64) << 18)).to_i64
    values[31] = (((bytes[12] >> 7) & 33554431_u64)).to_i64
    values[32] = (((bytes[12] >> 32) & 33554431_u64)).to_i64
    values[33] = (((bytes[12] >> 57) & 33554431_u64) | ((bytes[13] & 262143_u64) << 7)).to_i64
    values[34] = (((bytes[13] >> 18) & 33554431_u64)).to_i64
    values[35] = (((bytes[13] >> 43) & 33554431_u64) | ((bytes[14] & 15_u64) << 21)).to_i64
    values[36] = (((bytes[14] >> 4) & 33554431_u64)).to_i64
    values[37] = (((bytes[14] >> 29) & 33554431_u64)).to_i64
    values[38] = (((bytes[14] >> 54) & 33554431_u64) | ((bytes[15] & 32767_u64) << 10)).to_i64
    values[39] = (((bytes[15] >> 15) & 33554431_u64)).to_i64
    values[40] = (((bytes[15] >> 40) & 33554431_u64) | ((bytes[16] & 1_u64) << 24)).to_i64
    values[41] = (((bytes[16] >> 1) & 33554431_u64)).to_i64
    values[42] = (((bytes[16] >> 26) & 33554431_u64)).to_i64
    values[43] = (((bytes[16] >> 51) & 33554431_u64) | ((bytes[17] & 4095_u64) << 13)).to_i64
    values[44] = (((bytes[17] >> 12) & 33554431_u64)).to_i64
    values[45] = (((bytes[17] >> 37) & 33554431_u64)).to_i64
    values[46] = (((bytes[17] >> 62) & 33554431_u64) | ((bytes[18] & 8388607_u64) << 2)).to_i64
    values[47] = (((bytes[18] >> 23) & 33554431_u64)).to_i64
    values[48] = (((bytes[18] >> 48) & 33554431_u64) | ((bytes[19] & 511_u64) << 16)).to_i64
    values[49] = (((bytes[19] >> 9) & 33554431_u64)).to_i64
    values[50] = (((bytes[19] >> 34) & 33554431_u64)).to_i64
    values[51] = (((bytes[19] >> 59) & 33554431_u64) | ((bytes[20] & 1048575_u64) << 5)).to_i64
    values[52] = (((bytes[20] >> 20) & 33554431_u64)).to_i64
    values[53] = (((bytes[20] >> 45) & 33554431_u64) | ((bytes[21] & 63_u64) << 19)).to_i64
    values[54] = (((bytes[21] >> 6) & 33554431_u64)).to_i64
    values[55] = (((bytes[21] >> 31) & 33554431_u64)).to_i64
    values[56] = (((bytes[21] >> 56) & 33554431_u64) | ((bytes[22] & 131071_u64) << 8)).to_i64
    values[57] = (((bytes[22] >> 17) & 33554431_u64)).to_i64
    values[58] = (((bytes[22] >> 42) & 33554431_u64) | ((bytes[23] & 7_u64) << 22)).to_i64
    values[59] = (((bytes[23] >> 3) & 33554431_u64)).to_i64
    values[60] = (((bytes[23] >> 28) & 33554431_u64)).to_i64
    values[61] = (((bytes[23] >> 53) & 33554431_u64) | ((bytes[24] & 16383_u64) << 11)).to_i64
    values[62] = (((bytes[24] >> 14) & 33554431_u64)).to_i64
    values[63] = (((bytes[24] >> 39) & 33554431_u64)).to_i64
    values
  end

  def self.pack26(values)
    bytes = Slice(UInt64).new(26, 0_u64)
    bytes[0] = (((values[0] & 67108863_u64) << 0) |
                ((values[1] & 67108863_u64) << 26) |
                ((values[2] & 67108863_u64) << 52)).to_u64
    bytes[1] = (((values[2] & 67108863_u64) >> 12) |
                ((values[3] & 67108863_u64) << 14) |
                ((values[4] & 67108863_u64) << 40)).to_u64
    bytes[2] = (((values[4] & 67108863_u64) >> 24) |
                ((values[5] & 67108863_u64) << 2) |
                ((values[6] & 67108863_u64) << 28) |
                ((values[7] & 67108863_u64) << 54)).to_u64
    bytes[3] = (((values[7] & 67108863_u64) >> 10) |
                ((values[8] & 67108863_u64) << 16) |
                ((values[9] & 67108863_u64) << 42)).to_u64
    bytes[4] = (((values[9] & 67108863_u64) >> 22) |
                ((values[10] & 67108863_u64) << 4) |
                ((values[11] & 67108863_u64) << 30) |
                ((values[12] & 67108863_u64) << 56)).to_u64
    bytes[5] = (((values[12] & 67108863_u64) >> 8) |
                ((values[13] & 67108863_u64) << 18) |
                ((values[14] & 67108863_u64) << 44)).to_u64
    bytes[6] = (((values[14] & 67108863_u64) >> 20) |
                ((values[15] & 67108863_u64) << 6) |
                ((values[16] & 67108863_u64) << 32) |
                ((values[17] & 67108863_u64) << 58)).to_u64
    bytes[7] = (((values[17] & 67108863_u64) >> 6) |
                ((values[18] & 67108863_u64) << 20) |
                ((values[19] & 67108863_u64) << 46)).to_u64
    bytes[8] = (((values[19] & 67108863_u64) >> 18) |
                ((values[20] & 67108863_u64) << 8) |
                ((values[21] & 67108863_u64) << 34) |
                ((values[22] & 67108863_u64) << 60)).to_u64
    bytes[9] = (((values[22] & 67108863_u64) >> 4) |
                ((values[23] & 67108863_u64) << 22) |
                ((values[24] & 67108863_u64) << 48)).to_u64
    bytes[10] = (((values[24] & 67108863_u64) >> 16) |
                 ((values[25] & 67108863_u64) << 10) |
                 ((values[26] & 67108863_u64) << 36) |
                 ((values[27] & 67108863_u64) << 62)).to_u64
    bytes[11] = (((values[27] & 67108863_u64) >> 2) |
                 ((values[28] & 67108863_u64) << 24) |
                 ((values[29] & 67108863_u64) << 50)).to_u64
    bytes[12] = (((values[29] & 67108863_u64) >> 14) |
                 ((values[30] & 67108863_u64) << 12) |
                 ((values[31] & 67108863_u64) << 38)).to_u64
    bytes[13] = (((values[32] & 67108863_u64) << 0) |
                 ((values[33] & 67108863_u64) << 26) |
                 ((values[34] & 67108863_u64) << 52)).to_u64
    bytes[14] = (((values[34] & 67108863_u64) >> 12) |
                 ((values[35] & 67108863_u64) << 14) |
                 ((values[36] & 67108863_u64) << 40)).to_u64
    bytes[15] = (((values[36] & 67108863_u64) >> 24) |
                 ((values[37] & 67108863_u64) << 2) |
                 ((values[38] & 67108863_u64) << 28) |
                 ((values[39] & 67108863_u64) << 54)).to_u64
    bytes[16] = (((values[39] & 67108863_u64) >> 10) |
                 ((values[40] & 67108863_u64) << 16) |
                 ((values[41] & 67108863_u64) << 42)).to_u64
    bytes[17] = (((values[41] & 67108863_u64) >> 22) |
                 ((values[42] & 67108863_u64) << 4) |
                 ((values[43] & 67108863_u64) << 30) |
                 ((values[44] & 67108863_u64) << 56)).to_u64
    bytes[18] = (((values[44] & 67108863_u64) >> 8) |
                 ((values[45] & 67108863_u64) << 18) |
                 ((values[46] & 67108863_u64) << 44)).to_u64
    bytes[19] = (((values[46] & 67108863_u64) >> 20) |
                 ((values[47] & 67108863_u64) << 6) |
                 ((values[48] & 67108863_u64) << 32) |
                 ((values[49] & 67108863_u64) << 58)).to_u64
    bytes[20] = (((values[49] & 67108863_u64) >> 6) |
                 ((values[50] & 67108863_u64) << 20) |
                 ((values[51] & 67108863_u64) << 46)).to_u64
    bytes[21] = (((values[51] & 67108863_u64) >> 18) |
                 ((values[52] & 67108863_u64) << 8) |
                 ((values[53] & 67108863_u64) << 34) |
                 ((values[54] & 67108863_u64) << 60)).to_u64
    bytes[22] = (((values[54] & 67108863_u64) >> 4) |
                 ((values[55] & 67108863_u64) << 22) |
                 ((values[56] & 67108863_u64) << 48)).to_u64
    bytes[23] = (((values[56] & 67108863_u64) >> 16) |
                 ((values[57] & 67108863_u64) << 10) |
                 ((values[58] & 67108863_u64) << 36) |
                 ((values[59] & 67108863_u64) << 62)).to_u64
    bytes[24] = (((values[59] & 67108863_u64) >> 2) |
                 ((values[60] & 67108863_u64) << 24) |
                 ((values[61] & 67108863_u64) << 50)).to_u64
    bytes[25] = (((values[61] & 67108863_u64) >> 14) |
                 ((values[62] & 67108863_u64) << 12) |
                 ((values[63] & 67108863_u64) << 38)).to_u64
    bytes
  end

  def self.unpack26(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 67108863_u64)).to_i64
    values[1] = (((bytes[0] >> 26) & 67108863_u64)).to_i64
    values[2] = (((bytes[0] >> 52) & 67108863_u64) | ((bytes[1] & 16383_u64) << 12)).to_i64
    values[3] = (((bytes[1] >> 14) & 67108863_u64)).to_i64
    values[4] = (((bytes[1] >> 40) & 67108863_u64) | ((bytes[2] & 3_u64) << 24)).to_i64
    values[5] = (((bytes[2] >> 2) & 67108863_u64)).to_i64
    values[6] = (((bytes[2] >> 28) & 67108863_u64)).to_i64
    values[7] = (((bytes[2] >> 54) & 67108863_u64) | ((bytes[3] & 65535_u64) << 10)).to_i64
    values[8] = (((bytes[3] >> 16) & 67108863_u64)).to_i64
    values[9] = (((bytes[3] >> 42) & 67108863_u64) | ((bytes[4] & 15_u64) << 22)).to_i64
    values[10] = (((bytes[4] >> 4) & 67108863_u64)).to_i64
    values[11] = (((bytes[4] >> 30) & 67108863_u64)).to_i64
    values[12] = (((bytes[4] >> 56) & 67108863_u64) | ((bytes[5] & 262143_u64) << 8)).to_i64
    values[13] = (((bytes[5] >> 18) & 67108863_u64)).to_i64
    values[14] = (((bytes[5] >> 44) & 67108863_u64) | ((bytes[6] & 63_u64) << 20)).to_i64
    values[15] = (((bytes[6] >> 6) & 67108863_u64)).to_i64
    values[16] = (((bytes[6] >> 32) & 67108863_u64)).to_i64
    values[17] = (((bytes[6] >> 58) & 67108863_u64) | ((bytes[7] & 1048575_u64) << 6)).to_i64
    values[18] = (((bytes[7] >> 20) & 67108863_u64)).to_i64
    values[19] = (((bytes[7] >> 46) & 67108863_u64) | ((bytes[8] & 255_u64) << 18)).to_i64
    values[20] = (((bytes[8] >> 8) & 67108863_u64)).to_i64
    values[21] = (((bytes[8] >> 34) & 67108863_u64)).to_i64
    values[22] = (((bytes[8] >> 60) & 67108863_u64) | ((bytes[9] & 4194303_u64) << 4)).to_i64
    values[23] = (((bytes[9] >> 22) & 67108863_u64)).to_i64
    values[24] = (((bytes[9] >> 48) & 67108863_u64) | ((bytes[10] & 1023_u64) << 16)).to_i64
    values[25] = (((bytes[10] >> 10) & 67108863_u64)).to_i64
    values[26] = (((bytes[10] >> 36) & 67108863_u64)).to_i64
    values[27] = (((bytes[10] >> 62) & 67108863_u64) | ((bytes[11] & 16777215_u64) << 2)).to_i64
    values[28] = (((bytes[11] >> 24) & 67108863_u64)).to_i64
    values[29] = (((bytes[11] >> 50) & 67108863_u64) | ((bytes[12] & 4095_u64) << 14)).to_i64
    values[30] = (((bytes[12] >> 12) & 67108863_u64)).to_i64
    values[31] = (((bytes[12] >> 38) & 67108863_u64)).to_i64
    values[32] = (((bytes[13] >> 0) & 67108863_u64)).to_i64
    values[33] = (((bytes[13] >> 26) & 67108863_u64)).to_i64
    values[34] = (((bytes[13] >> 52) & 67108863_u64) | ((bytes[14] & 16383_u64) << 12)).to_i64
    values[35] = (((bytes[14] >> 14) & 67108863_u64)).to_i64
    values[36] = (((bytes[14] >> 40) & 67108863_u64) | ((bytes[15] & 3_u64) << 24)).to_i64
    values[37] = (((bytes[15] >> 2) & 67108863_u64)).to_i64
    values[38] = (((bytes[15] >> 28) & 67108863_u64)).to_i64
    values[39] = (((bytes[15] >> 54) & 67108863_u64) | ((bytes[16] & 65535_u64) << 10)).to_i64
    values[40] = (((bytes[16] >> 16) & 67108863_u64)).to_i64
    values[41] = (((bytes[16] >> 42) & 67108863_u64) | ((bytes[17] & 15_u64) << 22)).to_i64
    values[42] = (((bytes[17] >> 4) & 67108863_u64)).to_i64
    values[43] = (((bytes[17] >> 30) & 67108863_u64)).to_i64
    values[44] = (((bytes[17] >> 56) & 67108863_u64) | ((bytes[18] & 262143_u64) << 8)).to_i64
    values[45] = (((bytes[18] >> 18) & 67108863_u64)).to_i64
    values[46] = (((bytes[18] >> 44) & 67108863_u64) | ((bytes[19] & 63_u64) << 20)).to_i64
    values[47] = (((bytes[19] >> 6) & 67108863_u64)).to_i64
    values[48] = (((bytes[19] >> 32) & 67108863_u64)).to_i64
    values[49] = (((bytes[19] >> 58) & 67108863_u64) | ((bytes[20] & 1048575_u64) << 6)).to_i64
    values[50] = (((bytes[20] >> 20) & 67108863_u64)).to_i64
    values[51] = (((bytes[20] >> 46) & 67108863_u64) | ((bytes[21] & 255_u64) << 18)).to_i64
    values[52] = (((bytes[21] >> 8) & 67108863_u64)).to_i64
    values[53] = (((bytes[21] >> 34) & 67108863_u64)).to_i64
    values[54] = (((bytes[21] >> 60) & 67108863_u64) | ((bytes[22] & 4194303_u64) << 4)).to_i64
    values[55] = (((bytes[22] >> 22) & 67108863_u64)).to_i64
    values[56] = (((bytes[22] >> 48) & 67108863_u64) | ((bytes[23] & 1023_u64) << 16)).to_i64
    values[57] = (((bytes[23] >> 10) & 67108863_u64)).to_i64
    values[58] = (((bytes[23] >> 36) & 67108863_u64)).to_i64
    values[59] = (((bytes[23] >> 62) & 67108863_u64) | ((bytes[24] & 16777215_u64) << 2)).to_i64
    values[60] = (((bytes[24] >> 24) & 67108863_u64)).to_i64
    values[61] = (((bytes[24] >> 50) & 67108863_u64) | ((bytes[25] & 4095_u64) << 14)).to_i64
    values[62] = (((bytes[25] >> 12) & 67108863_u64)).to_i64
    values[63] = (((bytes[25] >> 38) & 67108863_u64)).to_i64
    values
  end

  def self.pack27(values)
    bytes = Slice(UInt64).new(27, 0_u64)
    bytes[0] = (((values[0] & 134217727_u64) << 0) |
                ((values[1] & 134217727_u64) << 27) |
                ((values[2] & 134217727_u64) << 54)).to_u64
    bytes[1] = (((values[2] & 134217727_u64) >> 10) |
                ((values[3] & 134217727_u64) << 17) |
                ((values[4] & 134217727_u64) << 44)).to_u64
    bytes[2] = (((values[4] & 134217727_u64) >> 20) |
                ((values[5] & 134217727_u64) << 7) |
                ((values[6] & 134217727_u64) << 34) |
                ((values[7] & 134217727_u64) << 61)).to_u64
    bytes[3] = (((values[7] & 134217727_u64) >> 3) |
                ((values[8] & 134217727_u64) << 24) |
                ((values[9] & 134217727_u64) << 51)).to_u64
    bytes[4] = (((values[9] & 134217727_u64) >> 13) |
                ((values[10] & 134217727_u64) << 14) |
                ((values[11] & 134217727_u64) << 41)).to_u64
    bytes[5] = (((values[11] & 134217727_u64) >> 23) |
                ((values[12] & 134217727_u64) << 4) |
                ((values[13] & 134217727_u64) << 31) |
                ((values[14] & 134217727_u64) << 58)).to_u64
    bytes[6] = (((values[14] & 134217727_u64) >> 6) |
                ((values[15] & 134217727_u64) << 21) |
                ((values[16] & 134217727_u64) << 48)).to_u64
    bytes[7] = (((values[16] & 134217727_u64) >> 16) |
                ((values[17] & 134217727_u64) << 11) |
                ((values[18] & 134217727_u64) << 38)).to_u64
    bytes[8] = (((values[18] & 134217727_u64) >> 26) |
                ((values[19] & 134217727_u64) << 1) |
                ((values[20] & 134217727_u64) << 28) |
                ((values[21] & 134217727_u64) << 55)).to_u64
    bytes[9] = (((values[21] & 134217727_u64) >> 9) |
                ((values[22] & 134217727_u64) << 18) |
                ((values[23] & 134217727_u64) << 45)).to_u64
    bytes[10] = (((values[23] & 134217727_u64) >> 19) |
                 ((values[24] & 134217727_u64) << 8) |
                 ((values[25] & 134217727_u64) << 35) |
                 ((values[26] & 134217727_u64) << 62)).to_u64
    bytes[11] = (((values[26] & 134217727_u64) >> 2) |
                 ((values[27] & 134217727_u64) << 25) |
                 ((values[28] & 134217727_u64) << 52)).to_u64
    bytes[12] = (((values[28] & 134217727_u64) >> 12) |
                 ((values[29] & 134217727_u64) << 15) |
                 ((values[30] & 134217727_u64) << 42)).to_u64
    bytes[13] = (((values[30] & 134217727_u64) >> 22) |
                 ((values[31] & 134217727_u64) << 5) |
                 ((values[32] & 134217727_u64) << 32) |
                 ((values[33] & 134217727_u64) << 59)).to_u64
    bytes[14] = (((values[33] & 134217727_u64) >> 5) |
                 ((values[34] & 134217727_u64) << 22) |
                 ((values[35] & 134217727_u64) << 49)).to_u64
    bytes[15] = (((values[35] & 134217727_u64) >> 15) |
                 ((values[36] & 134217727_u64) << 12) |
                 ((values[37] & 134217727_u64) << 39)).to_u64
    bytes[16] = (((values[37] & 134217727_u64) >> 25) |
                 ((values[38] & 134217727_u64) << 2) |
                 ((values[39] & 134217727_u64) << 29) |
                 ((values[40] & 134217727_u64) << 56)).to_u64
    bytes[17] = (((values[40] & 134217727_u64) >> 8) |
                 ((values[41] & 134217727_u64) << 19) |
                 ((values[42] & 134217727_u64) << 46)).to_u64
    bytes[18] = (((values[42] & 134217727_u64) >> 18) |
                 ((values[43] & 134217727_u64) << 9) |
                 ((values[44] & 134217727_u64) << 36) |
                 ((values[45] & 134217727_u64) << 63)).to_u64
    bytes[19] = (((values[45] & 134217727_u64) >> 1) |
                 ((values[46] & 134217727_u64) << 26) |
                 ((values[47] & 134217727_u64) << 53)).to_u64
    bytes[20] = (((values[47] & 134217727_u64) >> 11) |
                 ((values[48] & 134217727_u64) << 16) |
                 ((values[49] & 134217727_u64) << 43)).to_u64
    bytes[21] = (((values[49] & 134217727_u64) >> 21) |
                 ((values[50] & 134217727_u64) << 6) |
                 ((values[51] & 134217727_u64) << 33) |
                 ((values[52] & 134217727_u64) << 60)).to_u64
    bytes[22] = (((values[52] & 134217727_u64) >> 4) |
                 ((values[53] & 134217727_u64) << 23) |
                 ((values[54] & 134217727_u64) << 50)).to_u64
    bytes[23] = (((values[54] & 134217727_u64) >> 14) |
                 ((values[55] & 134217727_u64) << 13) |
                 ((values[56] & 134217727_u64) << 40)).to_u64
    bytes[24] = (((values[56] & 134217727_u64) >> 24) |
                 ((values[57] & 134217727_u64) << 3) |
                 ((values[58] & 134217727_u64) << 30) |
                 ((values[59] & 134217727_u64) << 57)).to_u64
    bytes[25] = (((values[59] & 134217727_u64) >> 7) |
                 ((values[60] & 134217727_u64) << 20) |
                 ((values[61] & 134217727_u64) << 47)).to_u64
    bytes[26] = (((values[61] & 134217727_u64) >> 17) |
                 ((values[62] & 134217727_u64) << 10) |
                 ((values[63] & 134217727_u64) << 37)).to_u64
    bytes
  end

  def self.unpack27(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 134217727_u64)).to_i64
    values[1] = (((bytes[0] >> 27) & 134217727_u64)).to_i64
    values[2] = (((bytes[0] >> 54) & 134217727_u64) | ((bytes[1] & 131071_u64) << 10)).to_i64
    values[3] = (((bytes[1] >> 17) & 134217727_u64)).to_i64
    values[4] = (((bytes[1] >> 44) & 134217727_u64) | ((bytes[2] & 127_u64) << 20)).to_i64
    values[5] = (((bytes[2] >> 7) & 134217727_u64)).to_i64
    values[6] = (((bytes[2] >> 34) & 134217727_u64)).to_i64
    values[7] = (((bytes[2] >> 61) & 134217727_u64) | ((bytes[3] & 16777215_u64) << 3)).to_i64
    values[8] = (((bytes[3] >> 24) & 134217727_u64)).to_i64
    values[9] = (((bytes[3] >> 51) & 134217727_u64) | ((bytes[4] & 16383_u64) << 13)).to_i64
    values[10] = (((bytes[4] >> 14) & 134217727_u64)).to_i64
    values[11] = (((bytes[4] >> 41) & 134217727_u64) | ((bytes[5] & 15_u64) << 23)).to_i64
    values[12] = (((bytes[5] >> 4) & 134217727_u64)).to_i64
    values[13] = (((bytes[5] >> 31) & 134217727_u64)).to_i64
    values[14] = (((bytes[5] >> 58) & 134217727_u64) | ((bytes[6] & 2097151_u64) << 6)).to_i64
    values[15] = (((bytes[6] >> 21) & 134217727_u64)).to_i64
    values[16] = (((bytes[6] >> 48) & 134217727_u64) | ((bytes[7] & 2047_u64) << 16)).to_i64
    values[17] = (((bytes[7] >> 11) & 134217727_u64)).to_i64
    values[18] = (((bytes[7] >> 38) & 134217727_u64) | ((bytes[8] & 1_u64) << 26)).to_i64
    values[19] = (((bytes[8] >> 1) & 134217727_u64)).to_i64
    values[20] = (((bytes[8] >> 28) & 134217727_u64)).to_i64
    values[21] = (((bytes[8] >> 55) & 134217727_u64) | ((bytes[9] & 262143_u64) << 9)).to_i64
    values[22] = (((bytes[9] >> 18) & 134217727_u64)).to_i64
    values[23] = (((bytes[9] >> 45) & 134217727_u64) | ((bytes[10] & 255_u64) << 19)).to_i64
    values[24] = (((bytes[10] >> 8) & 134217727_u64)).to_i64
    values[25] = (((bytes[10] >> 35) & 134217727_u64)).to_i64
    values[26] = (((bytes[10] >> 62) & 134217727_u64) | ((bytes[11] & 33554431_u64) << 2)).to_i64
    values[27] = (((bytes[11] >> 25) & 134217727_u64)).to_i64
    values[28] = (((bytes[11] >> 52) & 134217727_u64) | ((bytes[12] & 32767_u64) << 12)).to_i64
    values[29] = (((bytes[12] >> 15) & 134217727_u64)).to_i64
    values[30] = (((bytes[12] >> 42) & 134217727_u64) | ((bytes[13] & 31_u64) << 22)).to_i64
    values[31] = (((bytes[13] >> 5) & 134217727_u64)).to_i64
    values[32] = (((bytes[13] >> 32) & 134217727_u64)).to_i64
    values[33] = (((bytes[13] >> 59) & 134217727_u64) | ((bytes[14] & 4194303_u64) << 5)).to_i64
    values[34] = (((bytes[14] >> 22) & 134217727_u64)).to_i64
    values[35] = (((bytes[14] >> 49) & 134217727_u64) | ((bytes[15] & 4095_u64) << 15)).to_i64
    values[36] = (((bytes[15] >> 12) & 134217727_u64)).to_i64
    values[37] = (((bytes[15] >> 39) & 134217727_u64) | ((bytes[16] & 3_u64) << 25)).to_i64
    values[38] = (((bytes[16] >> 2) & 134217727_u64)).to_i64
    values[39] = (((bytes[16] >> 29) & 134217727_u64)).to_i64
    values[40] = (((bytes[16] >> 56) & 134217727_u64) | ((bytes[17] & 524287_u64) << 8)).to_i64
    values[41] = (((bytes[17] >> 19) & 134217727_u64)).to_i64
    values[42] = (((bytes[17] >> 46) & 134217727_u64) | ((bytes[18] & 511_u64) << 18)).to_i64
    values[43] = (((bytes[18] >> 9) & 134217727_u64)).to_i64
    values[44] = (((bytes[18] >> 36) & 134217727_u64)).to_i64
    values[45] = (((bytes[18] >> 63) & 134217727_u64) | ((bytes[19] & 67108863_u64) << 1)).to_i64
    values[46] = (((bytes[19] >> 26) & 134217727_u64)).to_i64
    values[47] = (((bytes[19] >> 53) & 134217727_u64) | ((bytes[20] & 65535_u64) << 11)).to_i64
    values[48] = (((bytes[20] >> 16) & 134217727_u64)).to_i64
    values[49] = (((bytes[20] >> 43) & 134217727_u64) | ((bytes[21] & 63_u64) << 21)).to_i64
    values[50] = (((bytes[21] >> 6) & 134217727_u64)).to_i64
    values[51] = (((bytes[21] >> 33) & 134217727_u64)).to_i64
    values[52] = (((bytes[21] >> 60) & 134217727_u64) | ((bytes[22] & 8388607_u64) << 4)).to_i64
    values[53] = (((bytes[22] >> 23) & 134217727_u64)).to_i64
    values[54] = (((bytes[22] >> 50) & 134217727_u64) | ((bytes[23] & 8191_u64) << 14)).to_i64
    values[55] = (((bytes[23] >> 13) & 134217727_u64)).to_i64
    values[56] = (((bytes[23] >> 40) & 134217727_u64) | ((bytes[24] & 7_u64) << 24)).to_i64
    values[57] = (((bytes[24] >> 3) & 134217727_u64)).to_i64
    values[58] = (((bytes[24] >> 30) & 134217727_u64)).to_i64
    values[59] = (((bytes[24] >> 57) & 134217727_u64) | ((bytes[25] & 1048575_u64) << 7)).to_i64
    values[60] = (((bytes[25] >> 20) & 134217727_u64)).to_i64
    values[61] = (((bytes[25] >> 47) & 134217727_u64) | ((bytes[26] & 1023_u64) << 17)).to_i64
    values[62] = (((bytes[26] >> 10) & 134217727_u64)).to_i64
    values[63] = (((bytes[26] >> 37) & 134217727_u64)).to_i64
    values
  end

  def self.pack28(values)
    bytes = Slice(UInt64).new(28, 0_u64)
    bytes[0] = (((values[0] & 268435455_u64) << 0) |
                ((values[1] & 268435455_u64) << 28) |
                ((values[2] & 268435455_u64) << 56)).to_u64
    bytes[1] = (((values[2] & 268435455_u64) >> 8) |
                ((values[3] & 268435455_u64) << 20) |
                ((values[4] & 268435455_u64) << 48)).to_u64
    bytes[2] = (((values[4] & 268435455_u64) >> 16) |
                ((values[5] & 268435455_u64) << 12) |
                ((values[6] & 268435455_u64) << 40)).to_u64
    bytes[3] = (((values[6] & 268435455_u64) >> 24) |
                ((values[7] & 268435455_u64) << 4) |
                ((values[8] & 268435455_u64) << 32) |
                ((values[9] & 268435455_u64) << 60)).to_u64
    bytes[4] = (((values[9] & 268435455_u64) >> 4) |
                ((values[10] & 268435455_u64) << 24) |
                ((values[11] & 268435455_u64) << 52)).to_u64
    bytes[5] = (((values[11] & 268435455_u64) >> 12) |
                ((values[12] & 268435455_u64) << 16) |
                ((values[13] & 268435455_u64) << 44)).to_u64
    bytes[6] = (((values[13] & 268435455_u64) >> 20) |
                ((values[14] & 268435455_u64) << 8) |
                ((values[15] & 268435455_u64) << 36)).to_u64
    bytes[7] = (((values[16] & 268435455_u64) << 0) |
                ((values[17] & 268435455_u64) << 28) |
                ((values[18] & 268435455_u64) << 56)).to_u64
    bytes[8] = (((values[18] & 268435455_u64) >> 8) |
                ((values[19] & 268435455_u64) << 20) |
                ((values[20] & 268435455_u64) << 48)).to_u64
    bytes[9] = (((values[20] & 268435455_u64) >> 16) |
                ((values[21] & 268435455_u64) << 12) |
                ((values[22] & 268435455_u64) << 40)).to_u64
    bytes[10] = (((values[22] & 268435455_u64) >> 24) |
                 ((values[23] & 268435455_u64) << 4) |
                 ((values[24] & 268435455_u64) << 32) |
                 ((values[25] & 268435455_u64) << 60)).to_u64
    bytes[11] = (((values[25] & 268435455_u64) >> 4) |
                 ((values[26] & 268435455_u64) << 24) |
                 ((values[27] & 268435455_u64) << 52)).to_u64
    bytes[12] = (((values[27] & 268435455_u64) >> 12) |
                 ((values[28] & 268435455_u64) << 16) |
                 ((values[29] & 268435455_u64) << 44)).to_u64
    bytes[13] = (((values[29] & 268435455_u64) >> 20) |
                 ((values[30] & 268435455_u64) << 8) |
                 ((values[31] & 268435455_u64) << 36)).to_u64
    bytes[14] = (((values[32] & 268435455_u64) << 0) |
                 ((values[33] & 268435455_u64) << 28) |
                 ((values[34] & 268435455_u64) << 56)).to_u64
    bytes[15] = (((values[34] & 268435455_u64) >> 8) |
                 ((values[35] & 268435455_u64) << 20) |
                 ((values[36] & 268435455_u64) << 48)).to_u64
    bytes[16] = (((values[36] & 268435455_u64) >> 16) |
                 ((values[37] & 268435455_u64) << 12) |
                 ((values[38] & 268435455_u64) << 40)).to_u64
    bytes[17] = (((values[38] & 268435455_u64) >> 24) |
                 ((values[39] & 268435455_u64) << 4) |
                 ((values[40] & 268435455_u64) << 32) |
                 ((values[41] & 268435455_u64) << 60)).to_u64
    bytes[18] = (((values[41] & 268435455_u64) >> 4) |
                 ((values[42] & 268435455_u64) << 24) |
                 ((values[43] & 268435455_u64) << 52)).to_u64
    bytes[19] = (((values[43] & 268435455_u64) >> 12) |
                 ((values[44] & 268435455_u64) << 16) |
                 ((values[45] & 268435455_u64) << 44)).to_u64
    bytes[20] = (((values[45] & 268435455_u64) >> 20) |
                 ((values[46] & 268435455_u64) << 8) |
                 ((values[47] & 268435455_u64) << 36)).to_u64
    bytes[21] = (((values[48] & 268435455_u64) << 0) |
                 ((values[49] & 268435455_u64) << 28) |
                 ((values[50] & 268435455_u64) << 56)).to_u64
    bytes[22] = (((values[50] & 268435455_u64) >> 8) |
                 ((values[51] & 268435455_u64) << 20) |
                 ((values[52] & 268435455_u64) << 48)).to_u64
    bytes[23] = (((values[52] & 268435455_u64) >> 16) |
                 ((values[53] & 268435455_u64) << 12) |
                 ((values[54] & 268435455_u64) << 40)).to_u64
    bytes[24] = (((values[54] & 268435455_u64) >> 24) |
                 ((values[55] & 268435455_u64) << 4) |
                 ((values[56] & 268435455_u64) << 32) |
                 ((values[57] & 268435455_u64) << 60)).to_u64
    bytes[25] = (((values[57] & 268435455_u64) >> 4) |
                 ((values[58] & 268435455_u64) << 24) |
                 ((values[59] & 268435455_u64) << 52)).to_u64
    bytes[26] = (((values[59] & 268435455_u64) >> 12) |
                 ((values[60] & 268435455_u64) << 16) |
                 ((values[61] & 268435455_u64) << 44)).to_u64
    bytes[27] = (((values[61] & 268435455_u64) >> 20) |
                 ((values[62] & 268435455_u64) << 8) |
                 ((values[63] & 268435455_u64) << 36)).to_u64
    bytes
  end

  def self.unpack28(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 268435455_u64)).to_i64
    values[1] = (((bytes[0] >> 28) & 268435455_u64)).to_i64
    values[2] = (((bytes[0] >> 56) & 268435455_u64) | ((bytes[1] & 1048575_u64) << 8)).to_i64
    values[3] = (((bytes[1] >> 20) & 268435455_u64)).to_i64
    values[4] = (((bytes[1] >> 48) & 268435455_u64) | ((bytes[2] & 4095_u64) << 16)).to_i64
    values[5] = (((bytes[2] >> 12) & 268435455_u64)).to_i64
    values[6] = (((bytes[2] >> 40) & 268435455_u64) | ((bytes[3] & 15_u64) << 24)).to_i64
    values[7] = (((bytes[3] >> 4) & 268435455_u64)).to_i64
    values[8] = (((bytes[3] >> 32) & 268435455_u64)).to_i64
    values[9] = (((bytes[3] >> 60) & 268435455_u64) | ((bytes[4] & 16777215_u64) << 4)).to_i64
    values[10] = (((bytes[4] >> 24) & 268435455_u64)).to_i64
    values[11] = (((bytes[4] >> 52) & 268435455_u64) | ((bytes[5] & 65535_u64) << 12)).to_i64
    values[12] = (((bytes[5] >> 16) & 268435455_u64)).to_i64
    values[13] = (((bytes[5] >> 44) & 268435455_u64) | ((bytes[6] & 255_u64) << 20)).to_i64
    values[14] = (((bytes[6] >> 8) & 268435455_u64)).to_i64
    values[15] = (((bytes[6] >> 36) & 268435455_u64)).to_i64
    values[16] = (((bytes[7] >> 0) & 268435455_u64)).to_i64
    values[17] = (((bytes[7] >> 28) & 268435455_u64)).to_i64
    values[18] = (((bytes[7] >> 56) & 268435455_u64) | ((bytes[8] & 1048575_u64) << 8)).to_i64
    values[19] = (((bytes[8] >> 20) & 268435455_u64)).to_i64
    values[20] = (((bytes[8] >> 48) & 268435455_u64) | ((bytes[9] & 4095_u64) << 16)).to_i64
    values[21] = (((bytes[9] >> 12) & 268435455_u64)).to_i64
    values[22] = (((bytes[9] >> 40) & 268435455_u64) | ((bytes[10] & 15_u64) << 24)).to_i64
    values[23] = (((bytes[10] >> 4) & 268435455_u64)).to_i64
    values[24] = (((bytes[10] >> 32) & 268435455_u64)).to_i64
    values[25] = (((bytes[10] >> 60) & 268435455_u64) | ((bytes[11] & 16777215_u64) << 4)).to_i64
    values[26] = (((bytes[11] >> 24) & 268435455_u64)).to_i64
    values[27] = (((bytes[11] >> 52) & 268435455_u64) | ((bytes[12] & 65535_u64) << 12)).to_i64
    values[28] = (((bytes[12] >> 16) & 268435455_u64)).to_i64
    values[29] = (((bytes[12] >> 44) & 268435455_u64) | ((bytes[13] & 255_u64) << 20)).to_i64
    values[30] = (((bytes[13] >> 8) & 268435455_u64)).to_i64
    values[31] = (((bytes[13] >> 36) & 268435455_u64)).to_i64
    values[32] = (((bytes[14] >> 0) & 268435455_u64)).to_i64
    values[33] = (((bytes[14] >> 28) & 268435455_u64)).to_i64
    values[34] = (((bytes[14] >> 56) & 268435455_u64) | ((bytes[15] & 1048575_u64) << 8)).to_i64
    values[35] = (((bytes[15] >> 20) & 268435455_u64)).to_i64
    values[36] = (((bytes[15] >> 48) & 268435455_u64) | ((bytes[16] & 4095_u64) << 16)).to_i64
    values[37] = (((bytes[16] >> 12) & 268435455_u64)).to_i64
    values[38] = (((bytes[16] >> 40) & 268435455_u64) | ((bytes[17] & 15_u64) << 24)).to_i64
    values[39] = (((bytes[17] >> 4) & 268435455_u64)).to_i64
    values[40] = (((bytes[17] >> 32) & 268435455_u64)).to_i64
    values[41] = (((bytes[17] >> 60) & 268435455_u64) | ((bytes[18] & 16777215_u64) << 4)).to_i64
    values[42] = (((bytes[18] >> 24) & 268435455_u64)).to_i64
    values[43] = (((bytes[18] >> 52) & 268435455_u64) | ((bytes[19] & 65535_u64) << 12)).to_i64
    values[44] = (((bytes[19] >> 16) & 268435455_u64)).to_i64
    values[45] = (((bytes[19] >> 44) & 268435455_u64) | ((bytes[20] & 255_u64) << 20)).to_i64
    values[46] = (((bytes[20] >> 8) & 268435455_u64)).to_i64
    values[47] = (((bytes[20] >> 36) & 268435455_u64)).to_i64
    values[48] = (((bytes[21] >> 0) & 268435455_u64)).to_i64
    values[49] = (((bytes[21] >> 28) & 268435455_u64)).to_i64
    values[50] = (((bytes[21] >> 56) & 268435455_u64) | ((bytes[22] & 1048575_u64) << 8)).to_i64
    values[51] = (((bytes[22] >> 20) & 268435455_u64)).to_i64
    values[52] = (((bytes[22] >> 48) & 268435455_u64) | ((bytes[23] & 4095_u64) << 16)).to_i64
    values[53] = (((bytes[23] >> 12) & 268435455_u64)).to_i64
    values[54] = (((bytes[23] >> 40) & 268435455_u64) | ((bytes[24] & 15_u64) << 24)).to_i64
    values[55] = (((bytes[24] >> 4) & 268435455_u64)).to_i64
    values[56] = (((bytes[24] >> 32) & 268435455_u64)).to_i64
    values[57] = (((bytes[24] >> 60) & 268435455_u64) | ((bytes[25] & 16777215_u64) << 4)).to_i64
    values[58] = (((bytes[25] >> 24) & 268435455_u64)).to_i64
    values[59] = (((bytes[25] >> 52) & 268435455_u64) | ((bytes[26] & 65535_u64) << 12)).to_i64
    values[60] = (((bytes[26] >> 16) & 268435455_u64)).to_i64
    values[61] = (((bytes[26] >> 44) & 268435455_u64) | ((bytes[27] & 255_u64) << 20)).to_i64
    values[62] = (((bytes[27] >> 8) & 268435455_u64)).to_i64
    values[63] = (((bytes[27] >> 36) & 268435455_u64)).to_i64
    values
  end

  def self.pack29(values)
    bytes = Slice(UInt64).new(29, 0_u64)
    bytes[0] = (((values[0] & 536870911_u64) << 0) |
                ((values[1] & 536870911_u64) << 29) |
                ((values[2] & 536870911_u64) << 58)).to_u64
    bytes[1] = (((values[2] & 536870911_u64) >> 6) |
                ((values[3] & 536870911_u64) << 23) |
                ((values[4] & 536870911_u64) << 52)).to_u64
    bytes[2] = (((values[4] & 536870911_u64) >> 12) |
                ((values[5] & 536870911_u64) << 17) |
                ((values[6] & 536870911_u64) << 46)).to_u64
    bytes[3] = (((values[6] & 536870911_u64) >> 18) |
                ((values[7] & 536870911_u64) << 11) |
                ((values[8] & 536870911_u64) << 40)).to_u64
    bytes[4] = (((values[8] & 536870911_u64) >> 24) |
                ((values[9] & 536870911_u64) << 5) |
                ((values[10] & 536870911_u64) << 34) |
                ((values[11] & 536870911_u64) << 63)).to_u64
    bytes[5] = (((values[11] & 536870911_u64) >> 1) |
                ((values[12] & 536870911_u64) << 28) |
                ((values[13] & 536870911_u64) << 57)).to_u64
    bytes[6] = (((values[13] & 536870911_u64) >> 7) |
                ((values[14] & 536870911_u64) << 22) |
                ((values[15] & 536870911_u64) << 51)).to_u64
    bytes[7] = (((values[15] & 536870911_u64) >> 13) |
                ((values[16] & 536870911_u64) << 16) |
                ((values[17] & 536870911_u64) << 45)).to_u64
    bytes[8] = (((values[17] & 536870911_u64) >> 19) |
                ((values[18] & 536870911_u64) << 10) |
                ((values[19] & 536870911_u64) << 39)).to_u64
    bytes[9] = (((values[19] & 536870911_u64) >> 25) |
                ((values[20] & 536870911_u64) << 4) |
                ((values[21] & 536870911_u64) << 33) |
                ((values[22] & 536870911_u64) << 62)).to_u64
    bytes[10] = (((values[22] & 536870911_u64) >> 2) |
                 ((values[23] & 536870911_u64) << 27) |
                 ((values[24] & 536870911_u64) << 56)).to_u64
    bytes[11] = (((values[24] & 536870911_u64) >> 8) |
                 ((values[25] & 536870911_u64) << 21) |
                 ((values[26] & 536870911_u64) << 50)).to_u64
    bytes[12] = (((values[26] & 536870911_u64) >> 14) |
                 ((values[27] & 536870911_u64) << 15) |
                 ((values[28] & 536870911_u64) << 44)).to_u64
    bytes[13] = (((values[28] & 536870911_u64) >> 20) |
                 ((values[29] & 536870911_u64) << 9) |
                 ((values[30] & 536870911_u64) << 38)).to_u64
    bytes[14] = (((values[30] & 536870911_u64) >> 26) |
                 ((values[31] & 536870911_u64) << 3) |
                 ((values[32] & 536870911_u64) << 32) |
                 ((values[33] & 536870911_u64) << 61)).to_u64
    bytes[15] = (((values[33] & 536870911_u64) >> 3) |
                 ((values[34] & 536870911_u64) << 26) |
                 ((values[35] & 536870911_u64) << 55)).to_u64
    bytes[16] = (((values[35] & 536870911_u64) >> 9) |
                 ((values[36] & 536870911_u64) << 20) |
                 ((values[37] & 536870911_u64) << 49)).to_u64
    bytes[17] = (((values[37] & 536870911_u64) >> 15) |
                 ((values[38] & 536870911_u64) << 14) |
                 ((values[39] & 536870911_u64) << 43)).to_u64
    bytes[18] = (((values[39] & 536870911_u64) >> 21) |
                 ((values[40] & 536870911_u64) << 8) |
                 ((values[41] & 536870911_u64) << 37)).to_u64
    bytes[19] = (((values[41] & 536870911_u64) >> 27) |
                 ((values[42] & 536870911_u64) << 2) |
                 ((values[43] & 536870911_u64) << 31) |
                 ((values[44] & 536870911_u64) << 60)).to_u64
    bytes[20] = (((values[44] & 536870911_u64) >> 4) |
                 ((values[45] & 536870911_u64) << 25) |
                 ((values[46] & 536870911_u64) << 54)).to_u64
    bytes[21] = (((values[46] & 536870911_u64) >> 10) |
                 ((values[47] & 536870911_u64) << 19) |
                 ((values[48] & 536870911_u64) << 48)).to_u64
    bytes[22] = (((values[48] & 536870911_u64) >> 16) |
                 ((values[49] & 536870911_u64) << 13) |
                 ((values[50] & 536870911_u64) << 42)).to_u64
    bytes[23] = (((values[50] & 536870911_u64) >> 22) |
                 ((values[51] & 536870911_u64) << 7) |
                 ((values[52] & 536870911_u64) << 36)).to_u64
    bytes[24] = (((values[52] & 536870911_u64) >> 28) |
                 ((values[53] & 536870911_u64) << 1) |
                 ((values[54] & 536870911_u64) << 30) |
                 ((values[55] & 536870911_u64) << 59)).to_u64
    bytes[25] = (((values[55] & 536870911_u64) >> 5) |
                 ((values[56] & 536870911_u64) << 24) |
                 ((values[57] & 536870911_u64) << 53)).to_u64
    bytes[26] = (((values[57] & 536870911_u64) >> 11) |
                 ((values[58] & 536870911_u64) << 18) |
                 ((values[59] & 536870911_u64) << 47)).to_u64
    bytes[27] = (((values[59] & 536870911_u64) >> 17) |
                 ((values[60] & 536870911_u64) << 12) |
                 ((values[61] & 536870911_u64) << 41)).to_u64
    bytes[28] = (((values[61] & 536870911_u64) >> 23) |
                 ((values[62] & 536870911_u64) << 6) |
                 ((values[63] & 536870911_u64) << 35)).to_u64
    bytes
  end

  def self.unpack29(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 536870911_u64)).to_i64
    values[1] = (((bytes[0] >> 29) & 536870911_u64)).to_i64
    values[2] = (((bytes[0] >> 58) & 536870911_u64) | ((bytes[1] & 8388607_u64) << 6)).to_i64
    values[3] = (((bytes[1] >> 23) & 536870911_u64)).to_i64
    values[4] = (((bytes[1] >> 52) & 536870911_u64) | ((bytes[2] & 131071_u64) << 12)).to_i64
    values[5] = (((bytes[2] >> 17) & 536870911_u64)).to_i64
    values[6] = (((bytes[2] >> 46) & 536870911_u64) | ((bytes[3] & 2047_u64) << 18)).to_i64
    values[7] = (((bytes[3] >> 11) & 536870911_u64)).to_i64
    values[8] = (((bytes[3] >> 40) & 536870911_u64) | ((bytes[4] & 31_u64) << 24)).to_i64
    values[9] = (((bytes[4] >> 5) & 536870911_u64)).to_i64
    values[10] = (((bytes[4] >> 34) & 536870911_u64)).to_i64
    values[11] = (((bytes[4] >> 63) & 536870911_u64) | ((bytes[5] & 268435455_u64) << 1)).to_i64
    values[12] = (((bytes[5] >> 28) & 536870911_u64)).to_i64
    values[13] = (((bytes[5] >> 57) & 536870911_u64) | ((bytes[6] & 4194303_u64) << 7)).to_i64
    values[14] = (((bytes[6] >> 22) & 536870911_u64)).to_i64
    values[15] = (((bytes[6] >> 51) & 536870911_u64) | ((bytes[7] & 65535_u64) << 13)).to_i64
    values[16] = (((bytes[7] >> 16) & 536870911_u64)).to_i64
    values[17] = (((bytes[7] >> 45) & 536870911_u64) | ((bytes[8] & 1023_u64) << 19)).to_i64
    values[18] = (((bytes[8] >> 10) & 536870911_u64)).to_i64
    values[19] = (((bytes[8] >> 39) & 536870911_u64) | ((bytes[9] & 15_u64) << 25)).to_i64
    values[20] = (((bytes[9] >> 4) & 536870911_u64)).to_i64
    values[21] = (((bytes[9] >> 33) & 536870911_u64)).to_i64
    values[22] = (((bytes[9] >> 62) & 536870911_u64) | ((bytes[10] & 134217727_u64) << 2)).to_i64
    values[23] = (((bytes[10] >> 27) & 536870911_u64)).to_i64
    values[24] = (((bytes[10] >> 56) & 536870911_u64) | ((bytes[11] & 2097151_u64) << 8)).to_i64
    values[25] = (((bytes[11] >> 21) & 536870911_u64)).to_i64
    values[26] = (((bytes[11] >> 50) & 536870911_u64) | ((bytes[12] & 32767_u64) << 14)).to_i64
    values[27] = (((bytes[12] >> 15) & 536870911_u64)).to_i64
    values[28] = (((bytes[12] >> 44) & 536870911_u64) | ((bytes[13] & 511_u64) << 20)).to_i64
    values[29] = (((bytes[13] >> 9) & 536870911_u64)).to_i64
    values[30] = (((bytes[13] >> 38) & 536870911_u64) | ((bytes[14] & 7_u64) << 26)).to_i64
    values[31] = (((bytes[14] >> 3) & 536870911_u64)).to_i64
    values[32] = (((bytes[14] >> 32) & 536870911_u64)).to_i64
    values[33] = (((bytes[14] >> 61) & 536870911_u64) | ((bytes[15] & 67108863_u64) << 3)).to_i64
    values[34] = (((bytes[15] >> 26) & 536870911_u64)).to_i64
    values[35] = (((bytes[15] >> 55) & 536870911_u64) | ((bytes[16] & 1048575_u64) << 9)).to_i64
    values[36] = (((bytes[16] >> 20) & 536870911_u64)).to_i64
    values[37] = (((bytes[16] >> 49) & 536870911_u64) | ((bytes[17] & 16383_u64) << 15)).to_i64
    values[38] = (((bytes[17] >> 14) & 536870911_u64)).to_i64
    values[39] = (((bytes[17] >> 43) & 536870911_u64) | ((bytes[18] & 255_u64) << 21)).to_i64
    values[40] = (((bytes[18] >> 8) & 536870911_u64)).to_i64
    values[41] = (((bytes[18] >> 37) & 536870911_u64) | ((bytes[19] & 3_u64) << 27)).to_i64
    values[42] = (((bytes[19] >> 2) & 536870911_u64)).to_i64
    values[43] = (((bytes[19] >> 31) & 536870911_u64)).to_i64
    values[44] = (((bytes[19] >> 60) & 536870911_u64) | ((bytes[20] & 33554431_u64) << 4)).to_i64
    values[45] = (((bytes[20] >> 25) & 536870911_u64)).to_i64
    values[46] = (((bytes[20] >> 54) & 536870911_u64) | ((bytes[21] & 524287_u64) << 10)).to_i64
    values[47] = (((bytes[21] >> 19) & 536870911_u64)).to_i64
    values[48] = (((bytes[21] >> 48) & 536870911_u64) | ((bytes[22] & 8191_u64) << 16)).to_i64
    values[49] = (((bytes[22] >> 13) & 536870911_u64)).to_i64
    values[50] = (((bytes[22] >> 42) & 536870911_u64) | ((bytes[23] & 127_u64) << 22)).to_i64
    values[51] = (((bytes[23] >> 7) & 536870911_u64)).to_i64
    values[52] = (((bytes[23] >> 36) & 536870911_u64) | ((bytes[24] & 1_u64) << 28)).to_i64
    values[53] = (((bytes[24] >> 1) & 536870911_u64)).to_i64
    values[54] = (((bytes[24] >> 30) & 536870911_u64)).to_i64
    values[55] = (((bytes[24] >> 59) & 536870911_u64) | ((bytes[25] & 16777215_u64) << 5)).to_i64
    values[56] = (((bytes[25] >> 24) & 536870911_u64)).to_i64
    values[57] = (((bytes[25] >> 53) & 536870911_u64) | ((bytes[26] & 262143_u64) << 11)).to_i64
    values[58] = (((bytes[26] >> 18) & 536870911_u64)).to_i64
    values[59] = (((bytes[26] >> 47) & 536870911_u64) | ((bytes[27] & 4095_u64) << 17)).to_i64
    values[60] = (((bytes[27] >> 12) & 536870911_u64)).to_i64
    values[61] = (((bytes[27] >> 41) & 536870911_u64) | ((bytes[28] & 63_u64) << 23)).to_i64
    values[62] = (((bytes[28] >> 6) & 536870911_u64)).to_i64
    values[63] = (((bytes[28] >> 35) & 536870911_u64)).to_i64
    values
  end

  def self.pack30(values)
    bytes = Slice(UInt64).new(30, 0_u64)
    bytes[0] = (((values[0] & 1073741823_u64) << 0) |
                ((values[1] & 1073741823_u64) << 30) |
                ((values[2] & 1073741823_u64) << 60)).to_u64
    bytes[1] = (((values[2] & 1073741823_u64) >> 4) |
                ((values[3] & 1073741823_u64) << 26) |
                ((values[4] & 1073741823_u64) << 56)).to_u64
    bytes[2] = (((values[4] & 1073741823_u64) >> 8) |
                ((values[5] & 1073741823_u64) << 22) |
                ((values[6] & 1073741823_u64) << 52)).to_u64
    bytes[3] = (((values[6] & 1073741823_u64) >> 12) |
                ((values[7] & 1073741823_u64) << 18) |
                ((values[8] & 1073741823_u64) << 48)).to_u64
    bytes[4] = (((values[8] & 1073741823_u64) >> 16) |
                ((values[9] & 1073741823_u64) << 14) |
                ((values[10] & 1073741823_u64) << 44)).to_u64
    bytes[5] = (((values[10] & 1073741823_u64) >> 20) |
                ((values[11] & 1073741823_u64) << 10) |
                ((values[12] & 1073741823_u64) << 40)).to_u64
    bytes[6] = (((values[12] & 1073741823_u64) >> 24) |
                ((values[13] & 1073741823_u64) << 6) |
                ((values[14] & 1073741823_u64) << 36)).to_u64
    bytes[7] = (((values[14] & 1073741823_u64) >> 28) |
                ((values[15] & 1073741823_u64) << 2) |
                ((values[16] & 1073741823_u64) << 32) |
                ((values[17] & 1073741823_u64) << 62)).to_u64
    bytes[8] = (((values[17] & 1073741823_u64) >> 2) |
                ((values[18] & 1073741823_u64) << 28) |
                ((values[19] & 1073741823_u64) << 58)).to_u64
    bytes[9] = (((values[19] & 1073741823_u64) >> 6) |
                ((values[20] & 1073741823_u64) << 24) |
                ((values[21] & 1073741823_u64) << 54)).to_u64
    bytes[10] = (((values[21] & 1073741823_u64) >> 10) |
                 ((values[22] & 1073741823_u64) << 20) |
                 ((values[23] & 1073741823_u64) << 50)).to_u64
    bytes[11] = (((values[23] & 1073741823_u64) >> 14) |
                 ((values[24] & 1073741823_u64) << 16) |
                 ((values[25] & 1073741823_u64) << 46)).to_u64
    bytes[12] = (((values[25] & 1073741823_u64) >> 18) |
                 ((values[26] & 1073741823_u64) << 12) |
                 ((values[27] & 1073741823_u64) << 42)).to_u64
    bytes[13] = (((values[27] & 1073741823_u64) >> 22) |
                 ((values[28] & 1073741823_u64) << 8) |
                 ((values[29] & 1073741823_u64) << 38)).to_u64
    bytes[14] = (((values[29] & 1073741823_u64) >> 26) |
                 ((values[30] & 1073741823_u64) << 4) |
                 ((values[31] & 1073741823_u64) << 34)).to_u64
    bytes[15] = (((values[32] & 1073741823_u64) << 0) |
                 ((values[33] & 1073741823_u64) << 30) |
                 ((values[34] & 1073741823_u64) << 60)).to_u64
    bytes[16] = (((values[34] & 1073741823_u64) >> 4) |
                 ((values[35] & 1073741823_u64) << 26) |
                 ((values[36] & 1073741823_u64) << 56)).to_u64
    bytes[17] = (((values[36] & 1073741823_u64) >> 8) |
                 ((values[37] & 1073741823_u64) << 22) |
                 ((values[38] & 1073741823_u64) << 52)).to_u64
    bytes[18] = (((values[38] & 1073741823_u64) >> 12) |
                 ((values[39] & 1073741823_u64) << 18) |
                 ((values[40] & 1073741823_u64) << 48)).to_u64
    bytes[19] = (((values[40] & 1073741823_u64) >> 16) |
                 ((values[41] & 1073741823_u64) << 14) |
                 ((values[42] & 1073741823_u64) << 44)).to_u64
    bytes[20] = (((values[42] & 1073741823_u64) >> 20) |
                 ((values[43] & 1073741823_u64) << 10) |
                 ((values[44] & 1073741823_u64) << 40)).to_u64
    bytes[21] = (((values[44] & 1073741823_u64) >> 24) |
                 ((values[45] & 1073741823_u64) << 6) |
                 ((values[46] & 1073741823_u64) << 36)).to_u64
    bytes[22] = (((values[46] & 1073741823_u64) >> 28) |
                 ((values[47] & 1073741823_u64) << 2) |
                 ((values[48] & 1073741823_u64) << 32) |
                 ((values[49] & 1073741823_u64) << 62)).to_u64
    bytes[23] = (((values[49] & 1073741823_u64) >> 2) |
                 ((values[50] & 1073741823_u64) << 28) |
                 ((values[51] & 1073741823_u64) << 58)).to_u64
    bytes[24] = (((values[51] & 1073741823_u64) >> 6) |
                 ((values[52] & 1073741823_u64) << 24) |
                 ((values[53] & 1073741823_u64) << 54)).to_u64
    bytes[25] = (((values[53] & 1073741823_u64) >> 10) |
                 ((values[54] & 1073741823_u64) << 20) |
                 ((values[55] & 1073741823_u64) << 50)).to_u64
    bytes[26] = (((values[55] & 1073741823_u64) >> 14) |
                 ((values[56] & 1073741823_u64) << 16) |
                 ((values[57] & 1073741823_u64) << 46)).to_u64
    bytes[27] = (((values[57] & 1073741823_u64) >> 18) |
                 ((values[58] & 1073741823_u64) << 12) |
                 ((values[59] & 1073741823_u64) << 42)).to_u64
    bytes[28] = (((values[59] & 1073741823_u64) >> 22) |
                 ((values[60] & 1073741823_u64) << 8) |
                 ((values[61] & 1073741823_u64) << 38)).to_u64
    bytes[29] = (((values[61] & 1073741823_u64) >> 26) |
                 ((values[62] & 1073741823_u64) << 4) |
                 ((values[63] & 1073741823_u64) << 34)).to_u64
    bytes
  end

  def self.unpack30(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1073741823_u64)).to_i64
    values[1] = (((bytes[0] >> 30) & 1073741823_u64)).to_i64
    values[2] = (((bytes[0] >> 60) & 1073741823_u64) | ((bytes[1] & 67108863_u64) << 4)).to_i64
    values[3] = (((bytes[1] >> 26) & 1073741823_u64)).to_i64
    values[4] = (((bytes[1] >> 56) & 1073741823_u64) | ((bytes[2] & 4194303_u64) << 8)).to_i64
    values[5] = (((bytes[2] >> 22) & 1073741823_u64)).to_i64
    values[6] = (((bytes[2] >> 52) & 1073741823_u64) | ((bytes[3] & 262143_u64) << 12)).to_i64
    values[7] = (((bytes[3] >> 18) & 1073741823_u64)).to_i64
    values[8] = (((bytes[3] >> 48) & 1073741823_u64) | ((bytes[4] & 16383_u64) << 16)).to_i64
    values[9] = (((bytes[4] >> 14) & 1073741823_u64)).to_i64
    values[10] = (((bytes[4] >> 44) & 1073741823_u64) | ((bytes[5] & 1023_u64) << 20)).to_i64
    values[11] = (((bytes[5] >> 10) & 1073741823_u64)).to_i64
    values[12] = (((bytes[5] >> 40) & 1073741823_u64) | ((bytes[6] & 63_u64) << 24)).to_i64
    values[13] = (((bytes[6] >> 6) & 1073741823_u64)).to_i64
    values[14] = (((bytes[6] >> 36) & 1073741823_u64) | ((bytes[7] & 3_u64) << 28)).to_i64
    values[15] = (((bytes[7] >> 2) & 1073741823_u64)).to_i64
    values[16] = (((bytes[7] >> 32) & 1073741823_u64)).to_i64
    values[17] = (((bytes[7] >> 62) & 1073741823_u64) | ((bytes[8] & 268435455_u64) << 2)).to_i64
    values[18] = (((bytes[8] >> 28) & 1073741823_u64)).to_i64
    values[19] = (((bytes[8] >> 58) & 1073741823_u64) | ((bytes[9] & 16777215_u64) << 6)).to_i64
    values[20] = (((bytes[9] >> 24) & 1073741823_u64)).to_i64
    values[21] = (((bytes[9] >> 54) & 1073741823_u64) | ((bytes[10] & 1048575_u64) << 10)).to_i64
    values[22] = (((bytes[10] >> 20) & 1073741823_u64)).to_i64
    values[23] = (((bytes[10] >> 50) & 1073741823_u64) | ((bytes[11] & 65535_u64) << 14)).to_i64
    values[24] = (((bytes[11] >> 16) & 1073741823_u64)).to_i64
    values[25] = (((bytes[11] >> 46) & 1073741823_u64) | ((bytes[12] & 4095_u64) << 18)).to_i64
    values[26] = (((bytes[12] >> 12) & 1073741823_u64)).to_i64
    values[27] = (((bytes[12] >> 42) & 1073741823_u64) | ((bytes[13] & 255_u64) << 22)).to_i64
    values[28] = (((bytes[13] >> 8) & 1073741823_u64)).to_i64
    values[29] = (((bytes[13] >> 38) & 1073741823_u64) | ((bytes[14] & 15_u64) << 26)).to_i64
    values[30] = (((bytes[14] >> 4) & 1073741823_u64)).to_i64
    values[31] = (((bytes[14] >> 34) & 1073741823_u64)).to_i64
    values[32] = (((bytes[15] >> 0) & 1073741823_u64)).to_i64
    values[33] = (((bytes[15] >> 30) & 1073741823_u64)).to_i64
    values[34] = (((bytes[15] >> 60) & 1073741823_u64) | ((bytes[16] & 67108863_u64) << 4)).to_i64
    values[35] = (((bytes[16] >> 26) & 1073741823_u64)).to_i64
    values[36] = (((bytes[16] >> 56) & 1073741823_u64) | ((bytes[17] & 4194303_u64) << 8)).to_i64
    values[37] = (((bytes[17] >> 22) & 1073741823_u64)).to_i64
    values[38] = (((bytes[17] >> 52) & 1073741823_u64) | ((bytes[18] & 262143_u64) << 12)).to_i64
    values[39] = (((bytes[18] >> 18) & 1073741823_u64)).to_i64
    values[40] = (((bytes[18] >> 48) & 1073741823_u64) | ((bytes[19] & 16383_u64) << 16)).to_i64
    values[41] = (((bytes[19] >> 14) & 1073741823_u64)).to_i64
    values[42] = (((bytes[19] >> 44) & 1073741823_u64) | ((bytes[20] & 1023_u64) << 20)).to_i64
    values[43] = (((bytes[20] >> 10) & 1073741823_u64)).to_i64
    values[44] = (((bytes[20] >> 40) & 1073741823_u64) | ((bytes[21] & 63_u64) << 24)).to_i64
    values[45] = (((bytes[21] >> 6) & 1073741823_u64)).to_i64
    values[46] = (((bytes[21] >> 36) & 1073741823_u64) | ((bytes[22] & 3_u64) << 28)).to_i64
    values[47] = (((bytes[22] >> 2) & 1073741823_u64)).to_i64
    values[48] = (((bytes[22] >> 32) & 1073741823_u64)).to_i64
    values[49] = (((bytes[22] >> 62) & 1073741823_u64) | ((bytes[23] & 268435455_u64) << 2)).to_i64
    values[50] = (((bytes[23] >> 28) & 1073741823_u64)).to_i64
    values[51] = (((bytes[23] >> 58) & 1073741823_u64) | ((bytes[24] & 16777215_u64) << 6)).to_i64
    values[52] = (((bytes[24] >> 24) & 1073741823_u64)).to_i64
    values[53] = (((bytes[24] >> 54) & 1073741823_u64) | ((bytes[25] & 1048575_u64) << 10)).to_i64
    values[54] = (((bytes[25] >> 20) & 1073741823_u64)).to_i64
    values[55] = (((bytes[25] >> 50) & 1073741823_u64) | ((bytes[26] & 65535_u64) << 14)).to_i64
    values[56] = (((bytes[26] >> 16) & 1073741823_u64)).to_i64
    values[57] = (((bytes[26] >> 46) & 1073741823_u64) | ((bytes[27] & 4095_u64) << 18)).to_i64
    values[58] = (((bytes[27] >> 12) & 1073741823_u64)).to_i64
    values[59] = (((bytes[27] >> 42) & 1073741823_u64) | ((bytes[28] & 255_u64) << 22)).to_i64
    values[60] = (((bytes[28] >> 8) & 1073741823_u64)).to_i64
    values[61] = (((bytes[28] >> 38) & 1073741823_u64) | ((bytes[29] & 15_u64) << 26)).to_i64
    values[62] = (((bytes[29] >> 4) & 1073741823_u64)).to_i64
    values[63] = (((bytes[29] >> 34) & 1073741823_u64)).to_i64
    values
  end

  def self.pack31(values)
    bytes = Slice(UInt64).new(31, 0_u64)
    bytes[0] = (((values[0] & 2147483647_u64) << 0) |
                ((values[1] & 2147483647_u64) << 31) |
                ((values[2] & 2147483647_u64) << 62)).to_u64
    bytes[1] = (((values[2] & 2147483647_u64) >> 2) |
                ((values[3] & 2147483647_u64) << 29) |
                ((values[4] & 2147483647_u64) << 60)).to_u64
    bytes[2] = (((values[4] & 2147483647_u64) >> 4) |
                ((values[5] & 2147483647_u64) << 27) |
                ((values[6] & 2147483647_u64) << 58)).to_u64
    bytes[3] = (((values[6] & 2147483647_u64) >> 6) |
                ((values[7] & 2147483647_u64) << 25) |
                ((values[8] & 2147483647_u64) << 56)).to_u64
    bytes[4] = (((values[8] & 2147483647_u64) >> 8) |
                ((values[9] & 2147483647_u64) << 23) |
                ((values[10] & 2147483647_u64) << 54)).to_u64
    bytes[5] = (((values[10] & 2147483647_u64) >> 10) |
                ((values[11] & 2147483647_u64) << 21) |
                ((values[12] & 2147483647_u64) << 52)).to_u64
    bytes[6] = (((values[12] & 2147483647_u64) >> 12) |
                ((values[13] & 2147483647_u64) << 19) |
                ((values[14] & 2147483647_u64) << 50)).to_u64
    bytes[7] = (((values[14] & 2147483647_u64) >> 14) |
                ((values[15] & 2147483647_u64) << 17) |
                ((values[16] & 2147483647_u64) << 48)).to_u64
    bytes[8] = (((values[16] & 2147483647_u64) >> 16) |
                ((values[17] & 2147483647_u64) << 15) |
                ((values[18] & 2147483647_u64) << 46)).to_u64
    bytes[9] = (((values[18] & 2147483647_u64) >> 18) |
                ((values[19] & 2147483647_u64) << 13) |
                ((values[20] & 2147483647_u64) << 44)).to_u64
    bytes[10] = (((values[20] & 2147483647_u64) >> 20) |
                 ((values[21] & 2147483647_u64) << 11) |
                 ((values[22] & 2147483647_u64) << 42)).to_u64
    bytes[11] = (((values[22] & 2147483647_u64) >> 22) |
                 ((values[23] & 2147483647_u64) << 9) |
                 ((values[24] & 2147483647_u64) << 40)).to_u64
    bytes[12] = (((values[24] & 2147483647_u64) >> 24) |
                 ((values[25] & 2147483647_u64) << 7) |
                 ((values[26] & 2147483647_u64) << 38)).to_u64
    bytes[13] = (((values[26] & 2147483647_u64) >> 26) |
                 ((values[27] & 2147483647_u64) << 5) |
                 ((values[28] & 2147483647_u64) << 36)).to_u64
    bytes[14] = (((values[28] & 2147483647_u64) >> 28) |
                 ((values[29] & 2147483647_u64) << 3) |
                 ((values[30] & 2147483647_u64) << 34)).to_u64
    bytes[15] = (((values[30] & 2147483647_u64) >> 30) |
                 ((values[31] & 2147483647_u64) << 1) |
                 ((values[32] & 2147483647_u64) << 32) |
                 ((values[33] & 2147483647_u64) << 63)).to_u64
    bytes[16] = (((values[33] & 2147483647_u64) >> 1) |
                 ((values[34] & 2147483647_u64) << 30) |
                 ((values[35] & 2147483647_u64) << 61)).to_u64
    bytes[17] = (((values[35] & 2147483647_u64) >> 3) |
                 ((values[36] & 2147483647_u64) << 28) |
                 ((values[37] & 2147483647_u64) << 59)).to_u64
    bytes[18] = (((values[37] & 2147483647_u64) >> 5) |
                 ((values[38] & 2147483647_u64) << 26) |
                 ((values[39] & 2147483647_u64) << 57)).to_u64
    bytes[19] = (((values[39] & 2147483647_u64) >> 7) |
                 ((values[40] & 2147483647_u64) << 24) |
                 ((values[41] & 2147483647_u64) << 55)).to_u64
    bytes[20] = (((values[41] & 2147483647_u64) >> 9) |
                 ((values[42] & 2147483647_u64) << 22) |
                 ((values[43] & 2147483647_u64) << 53)).to_u64
    bytes[21] = (((values[43] & 2147483647_u64) >> 11) |
                 ((values[44] & 2147483647_u64) << 20) |
                 ((values[45] & 2147483647_u64) << 51)).to_u64
    bytes[22] = (((values[45] & 2147483647_u64) >> 13) |
                 ((values[46] & 2147483647_u64) << 18) |
                 ((values[47] & 2147483647_u64) << 49)).to_u64
    bytes[23] = (((values[47] & 2147483647_u64) >> 15) |
                 ((values[48] & 2147483647_u64) << 16) |
                 ((values[49] & 2147483647_u64) << 47)).to_u64
    bytes[24] = (((values[49] & 2147483647_u64) >> 17) |
                 ((values[50] & 2147483647_u64) << 14) |
                 ((values[51] & 2147483647_u64) << 45)).to_u64
    bytes[25] = (((values[51] & 2147483647_u64) >> 19) |
                 ((values[52] & 2147483647_u64) << 12) |
                 ((values[53] & 2147483647_u64) << 43)).to_u64
    bytes[26] = (((values[53] & 2147483647_u64) >> 21) |
                 ((values[54] & 2147483647_u64) << 10) |
                 ((values[55] & 2147483647_u64) << 41)).to_u64
    bytes[27] = (((values[55] & 2147483647_u64) >> 23) |
                 ((values[56] & 2147483647_u64) << 8) |
                 ((values[57] & 2147483647_u64) << 39)).to_u64
    bytes[28] = (((values[57] & 2147483647_u64) >> 25) |
                 ((values[58] & 2147483647_u64) << 6) |
                 ((values[59] & 2147483647_u64) << 37)).to_u64
    bytes[29] = (((values[59] & 2147483647_u64) >> 27) |
                 ((values[60] & 2147483647_u64) << 4) |
                 ((values[61] & 2147483647_u64) << 35)).to_u64
    bytes[30] = (((values[61] & 2147483647_u64) >> 29) |
                 ((values[62] & 2147483647_u64) << 2) |
                 ((values[63] & 2147483647_u64) << 33)).to_u64
    bytes
  end

  def self.unpack31(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2147483647_u64)).to_i64
    values[1] = (((bytes[0] >> 31) & 2147483647_u64)).to_i64
    values[2] = (((bytes[0] >> 62) & 2147483647_u64) | ((bytes[1] & 536870911_u64) << 2)).to_i64
    values[3] = (((bytes[1] >> 29) & 2147483647_u64)).to_i64
    values[4] = (((bytes[1] >> 60) & 2147483647_u64) | ((bytes[2] & 134217727_u64) << 4)).to_i64
    values[5] = (((bytes[2] >> 27) & 2147483647_u64)).to_i64
    values[6] = (((bytes[2] >> 58) & 2147483647_u64) | ((bytes[3] & 33554431_u64) << 6)).to_i64
    values[7] = (((bytes[3] >> 25) & 2147483647_u64)).to_i64
    values[8] = (((bytes[3] >> 56) & 2147483647_u64) | ((bytes[4] & 8388607_u64) << 8)).to_i64
    values[9] = (((bytes[4] >> 23) & 2147483647_u64)).to_i64
    values[10] = (((bytes[4] >> 54) & 2147483647_u64) | ((bytes[5] & 2097151_u64) << 10)).to_i64
    values[11] = (((bytes[5] >> 21) & 2147483647_u64)).to_i64
    values[12] = (((bytes[5] >> 52) & 2147483647_u64) | ((bytes[6] & 524287_u64) << 12)).to_i64
    values[13] = (((bytes[6] >> 19) & 2147483647_u64)).to_i64
    values[14] = (((bytes[6] >> 50) & 2147483647_u64) | ((bytes[7] & 131071_u64) << 14)).to_i64
    values[15] = (((bytes[7] >> 17) & 2147483647_u64)).to_i64
    values[16] = (((bytes[7] >> 48) & 2147483647_u64) | ((bytes[8] & 32767_u64) << 16)).to_i64
    values[17] = (((bytes[8] >> 15) & 2147483647_u64)).to_i64
    values[18] = (((bytes[8] >> 46) & 2147483647_u64) | ((bytes[9] & 8191_u64) << 18)).to_i64
    values[19] = (((bytes[9] >> 13) & 2147483647_u64)).to_i64
    values[20] = (((bytes[9] >> 44) & 2147483647_u64) | ((bytes[10] & 2047_u64) << 20)).to_i64
    values[21] = (((bytes[10] >> 11) & 2147483647_u64)).to_i64
    values[22] = (((bytes[10] >> 42) & 2147483647_u64) | ((bytes[11] & 511_u64) << 22)).to_i64
    values[23] = (((bytes[11] >> 9) & 2147483647_u64)).to_i64
    values[24] = (((bytes[11] >> 40) & 2147483647_u64) | ((bytes[12] & 127_u64) << 24)).to_i64
    values[25] = (((bytes[12] >> 7) & 2147483647_u64)).to_i64
    values[26] = (((bytes[12] >> 38) & 2147483647_u64) | ((bytes[13] & 31_u64) << 26)).to_i64
    values[27] = (((bytes[13] >> 5) & 2147483647_u64)).to_i64
    values[28] = (((bytes[13] >> 36) & 2147483647_u64) | ((bytes[14] & 7_u64) << 28)).to_i64
    values[29] = (((bytes[14] >> 3) & 2147483647_u64)).to_i64
    values[30] = (((bytes[14] >> 34) & 2147483647_u64) | ((bytes[15] & 1_u64) << 30)).to_i64
    values[31] = (((bytes[15] >> 1) & 2147483647_u64)).to_i64
    values[32] = (((bytes[15] >> 32) & 2147483647_u64)).to_i64
    values[33] = (((bytes[15] >> 63) & 2147483647_u64) | ((bytes[16] & 1073741823_u64) << 1)).to_i64
    values[34] = (((bytes[16] >> 30) & 2147483647_u64)).to_i64
    values[35] = (((bytes[16] >> 61) & 2147483647_u64) | ((bytes[17] & 268435455_u64) << 3)).to_i64
    values[36] = (((bytes[17] >> 28) & 2147483647_u64)).to_i64
    values[37] = (((bytes[17] >> 59) & 2147483647_u64) | ((bytes[18] & 67108863_u64) << 5)).to_i64
    values[38] = (((bytes[18] >> 26) & 2147483647_u64)).to_i64
    values[39] = (((bytes[18] >> 57) & 2147483647_u64) | ((bytes[19] & 16777215_u64) << 7)).to_i64
    values[40] = (((bytes[19] >> 24) & 2147483647_u64)).to_i64
    values[41] = (((bytes[19] >> 55) & 2147483647_u64) | ((bytes[20] & 4194303_u64) << 9)).to_i64
    values[42] = (((bytes[20] >> 22) & 2147483647_u64)).to_i64
    values[43] = (((bytes[20] >> 53) & 2147483647_u64) | ((bytes[21] & 1048575_u64) << 11)).to_i64
    values[44] = (((bytes[21] >> 20) & 2147483647_u64)).to_i64
    values[45] = (((bytes[21] >> 51) & 2147483647_u64) | ((bytes[22] & 262143_u64) << 13)).to_i64
    values[46] = (((bytes[22] >> 18) & 2147483647_u64)).to_i64
    values[47] = (((bytes[22] >> 49) & 2147483647_u64) | ((bytes[23] & 65535_u64) << 15)).to_i64
    values[48] = (((bytes[23] >> 16) & 2147483647_u64)).to_i64
    values[49] = (((bytes[23] >> 47) & 2147483647_u64) | ((bytes[24] & 16383_u64) << 17)).to_i64
    values[50] = (((bytes[24] >> 14) & 2147483647_u64)).to_i64
    values[51] = (((bytes[24] >> 45) & 2147483647_u64) | ((bytes[25] & 4095_u64) << 19)).to_i64
    values[52] = (((bytes[25] >> 12) & 2147483647_u64)).to_i64
    values[53] = (((bytes[25] >> 43) & 2147483647_u64) | ((bytes[26] & 1023_u64) << 21)).to_i64
    values[54] = (((bytes[26] >> 10) & 2147483647_u64)).to_i64
    values[55] = (((bytes[26] >> 41) & 2147483647_u64) | ((bytes[27] & 255_u64) << 23)).to_i64
    values[56] = (((bytes[27] >> 8) & 2147483647_u64)).to_i64
    values[57] = (((bytes[27] >> 39) & 2147483647_u64) | ((bytes[28] & 63_u64) << 25)).to_i64
    values[58] = (((bytes[28] >> 6) & 2147483647_u64)).to_i64
    values[59] = (((bytes[28] >> 37) & 2147483647_u64) | ((bytes[29] & 15_u64) << 27)).to_i64
    values[60] = (((bytes[29] >> 4) & 2147483647_u64)).to_i64
    values[61] = (((bytes[29] >> 35) & 2147483647_u64) | ((bytes[30] & 3_u64) << 29)).to_i64
    values[62] = (((bytes[30] >> 2) & 2147483647_u64)).to_i64
    values[63] = (((bytes[30] >> 33) & 2147483647_u64)).to_i64
    values
  end

  def self.pack32(values)
    bytes = Slice(UInt64).new(32, 0_u64)
    bytes[0] = (((values[0] & 4294967295_u64) << 0) |
                ((values[1] & 4294967295_u64) << 32)).to_u64
    bytes[1] = (((values[2] & 4294967295_u64) << 0) |
                ((values[3] & 4294967295_u64) << 32)).to_u64
    bytes[2] = (((values[4] & 4294967295_u64) << 0) |
                ((values[5] & 4294967295_u64) << 32)).to_u64
    bytes[3] = (((values[6] & 4294967295_u64) << 0) |
                ((values[7] & 4294967295_u64) << 32)).to_u64
    bytes[4] = (((values[8] & 4294967295_u64) << 0) |
                ((values[9] & 4294967295_u64) << 32)).to_u64
    bytes[5] = (((values[10] & 4294967295_u64) << 0) |
                ((values[11] & 4294967295_u64) << 32)).to_u64
    bytes[6] = (((values[12] & 4294967295_u64) << 0) |
                ((values[13] & 4294967295_u64) << 32)).to_u64
    bytes[7] = (((values[14] & 4294967295_u64) << 0) |
                ((values[15] & 4294967295_u64) << 32)).to_u64
    bytes[8] = (((values[16] & 4294967295_u64) << 0) |
                ((values[17] & 4294967295_u64) << 32)).to_u64
    bytes[9] = (((values[18] & 4294967295_u64) << 0) |
                ((values[19] & 4294967295_u64) << 32)).to_u64
    bytes[10] = (((values[20] & 4294967295_u64) << 0) |
                 ((values[21] & 4294967295_u64) << 32)).to_u64
    bytes[11] = (((values[22] & 4294967295_u64) << 0) |
                 ((values[23] & 4294967295_u64) << 32)).to_u64
    bytes[12] = (((values[24] & 4294967295_u64) << 0) |
                 ((values[25] & 4294967295_u64) << 32)).to_u64
    bytes[13] = (((values[26] & 4294967295_u64) << 0) |
                 ((values[27] & 4294967295_u64) << 32)).to_u64
    bytes[14] = (((values[28] & 4294967295_u64) << 0) |
                 ((values[29] & 4294967295_u64) << 32)).to_u64
    bytes[15] = (((values[30] & 4294967295_u64) << 0) |
                 ((values[31] & 4294967295_u64) << 32)).to_u64
    bytes[16] = (((values[32] & 4294967295_u64) << 0) |
                 ((values[33] & 4294967295_u64) << 32)).to_u64
    bytes[17] = (((values[34] & 4294967295_u64) << 0) |
                 ((values[35] & 4294967295_u64) << 32)).to_u64
    bytes[18] = (((values[36] & 4294967295_u64) << 0) |
                 ((values[37] & 4294967295_u64) << 32)).to_u64
    bytes[19] = (((values[38] & 4294967295_u64) << 0) |
                 ((values[39] & 4294967295_u64) << 32)).to_u64
    bytes[20] = (((values[40] & 4294967295_u64) << 0) |
                 ((values[41] & 4294967295_u64) << 32)).to_u64
    bytes[21] = (((values[42] & 4294967295_u64) << 0) |
                 ((values[43] & 4294967295_u64) << 32)).to_u64
    bytes[22] = (((values[44] & 4294967295_u64) << 0) |
                 ((values[45] & 4294967295_u64) << 32)).to_u64
    bytes[23] = (((values[46] & 4294967295_u64) << 0) |
                 ((values[47] & 4294967295_u64) << 32)).to_u64
    bytes[24] = (((values[48] & 4294967295_u64) << 0) |
                 ((values[49] & 4294967295_u64) << 32)).to_u64
    bytes[25] = (((values[50] & 4294967295_u64) << 0) |
                 ((values[51] & 4294967295_u64) << 32)).to_u64
    bytes[26] = (((values[52] & 4294967295_u64) << 0) |
                 ((values[53] & 4294967295_u64) << 32)).to_u64
    bytes[27] = (((values[54] & 4294967295_u64) << 0) |
                 ((values[55] & 4294967295_u64) << 32)).to_u64
    bytes[28] = (((values[56] & 4294967295_u64) << 0) |
                 ((values[57] & 4294967295_u64) << 32)).to_u64
    bytes[29] = (((values[58] & 4294967295_u64) << 0) |
                 ((values[59] & 4294967295_u64) << 32)).to_u64
    bytes[30] = (((values[60] & 4294967295_u64) << 0) |
                 ((values[61] & 4294967295_u64) << 32)).to_u64
    bytes[31] = (((values[62] & 4294967295_u64) << 0) |
                 ((values[63] & 4294967295_u64) << 32)).to_u64
    bytes
  end

  def self.unpack32(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4294967295_u64)).to_i64
    values[1] = (((bytes[0] >> 32) & 4294967295_u64)).to_i64
    values[2] = (((bytes[1] >> 0) & 4294967295_u64)).to_i64
    values[3] = (((bytes[1] >> 32) & 4294967295_u64)).to_i64
    values[4] = (((bytes[2] >> 0) & 4294967295_u64)).to_i64
    values[5] = (((bytes[2] >> 32) & 4294967295_u64)).to_i64
    values[6] = (((bytes[3] >> 0) & 4294967295_u64)).to_i64
    values[7] = (((bytes[3] >> 32) & 4294967295_u64)).to_i64
    values[8] = (((bytes[4] >> 0) & 4294967295_u64)).to_i64
    values[9] = (((bytes[4] >> 32) & 4294967295_u64)).to_i64
    values[10] = (((bytes[5] >> 0) & 4294967295_u64)).to_i64
    values[11] = (((bytes[5] >> 32) & 4294967295_u64)).to_i64
    values[12] = (((bytes[6] >> 0) & 4294967295_u64)).to_i64
    values[13] = (((bytes[6] >> 32) & 4294967295_u64)).to_i64
    values[14] = (((bytes[7] >> 0) & 4294967295_u64)).to_i64
    values[15] = (((bytes[7] >> 32) & 4294967295_u64)).to_i64
    values[16] = (((bytes[8] >> 0) & 4294967295_u64)).to_i64
    values[17] = (((bytes[8] >> 32) & 4294967295_u64)).to_i64
    values[18] = (((bytes[9] >> 0) & 4294967295_u64)).to_i64
    values[19] = (((bytes[9] >> 32) & 4294967295_u64)).to_i64
    values[20] = (((bytes[10] >> 0) & 4294967295_u64)).to_i64
    values[21] = (((bytes[10] >> 32) & 4294967295_u64)).to_i64
    values[22] = (((bytes[11] >> 0) & 4294967295_u64)).to_i64
    values[23] = (((bytes[11] >> 32) & 4294967295_u64)).to_i64
    values[24] = (((bytes[12] >> 0) & 4294967295_u64)).to_i64
    values[25] = (((bytes[12] >> 32) & 4294967295_u64)).to_i64
    values[26] = (((bytes[13] >> 0) & 4294967295_u64)).to_i64
    values[27] = (((bytes[13] >> 32) & 4294967295_u64)).to_i64
    values[28] = (((bytes[14] >> 0) & 4294967295_u64)).to_i64
    values[29] = (((bytes[14] >> 32) & 4294967295_u64)).to_i64
    values[30] = (((bytes[15] >> 0) & 4294967295_u64)).to_i64
    values[31] = (((bytes[15] >> 32) & 4294967295_u64)).to_i64
    values[32] = (((bytes[16] >> 0) & 4294967295_u64)).to_i64
    values[33] = (((bytes[16] >> 32) & 4294967295_u64)).to_i64
    values[34] = (((bytes[17] >> 0) & 4294967295_u64)).to_i64
    values[35] = (((bytes[17] >> 32) & 4294967295_u64)).to_i64
    values[36] = (((bytes[18] >> 0) & 4294967295_u64)).to_i64
    values[37] = (((bytes[18] >> 32) & 4294967295_u64)).to_i64
    values[38] = (((bytes[19] >> 0) & 4294967295_u64)).to_i64
    values[39] = (((bytes[19] >> 32) & 4294967295_u64)).to_i64
    values[40] = (((bytes[20] >> 0) & 4294967295_u64)).to_i64
    values[41] = (((bytes[20] >> 32) & 4294967295_u64)).to_i64
    values[42] = (((bytes[21] >> 0) & 4294967295_u64)).to_i64
    values[43] = (((bytes[21] >> 32) & 4294967295_u64)).to_i64
    values[44] = (((bytes[22] >> 0) & 4294967295_u64)).to_i64
    values[45] = (((bytes[22] >> 32) & 4294967295_u64)).to_i64
    values[46] = (((bytes[23] >> 0) & 4294967295_u64)).to_i64
    values[47] = (((bytes[23] >> 32) & 4294967295_u64)).to_i64
    values[48] = (((bytes[24] >> 0) & 4294967295_u64)).to_i64
    values[49] = (((bytes[24] >> 32) & 4294967295_u64)).to_i64
    values[50] = (((bytes[25] >> 0) & 4294967295_u64)).to_i64
    values[51] = (((bytes[25] >> 32) & 4294967295_u64)).to_i64
    values[52] = (((bytes[26] >> 0) & 4294967295_u64)).to_i64
    values[53] = (((bytes[26] >> 32) & 4294967295_u64)).to_i64
    values[54] = (((bytes[27] >> 0) & 4294967295_u64)).to_i64
    values[55] = (((bytes[27] >> 32) & 4294967295_u64)).to_i64
    values[56] = (((bytes[28] >> 0) & 4294967295_u64)).to_i64
    values[57] = (((bytes[28] >> 32) & 4294967295_u64)).to_i64
    values[58] = (((bytes[29] >> 0) & 4294967295_u64)).to_i64
    values[59] = (((bytes[29] >> 32) & 4294967295_u64)).to_i64
    values[60] = (((bytes[30] >> 0) & 4294967295_u64)).to_i64
    values[61] = (((bytes[30] >> 32) & 4294967295_u64)).to_i64
    values[62] = (((bytes[31] >> 0) & 4294967295_u64)).to_i64
    values[63] = (((bytes[31] >> 32) & 4294967295_u64)).to_i64
    values
  end

  def self.pack33(values)
    bytes = Slice(UInt64).new(33, 0_u64)
    bytes[0] = (((values[0] & 8589934591_u64) << 0) |
                ((values[1] & 8589934591_u64) << 33)).to_u64
    bytes[1] = (((values[1] & 8589934591_u64) >> 31) |
                ((values[2] & 8589934591_u64) << 2) |
                ((values[3] & 8589934591_u64) << 35)).to_u64
    bytes[2] = (((values[3] & 8589934591_u64) >> 29) |
                ((values[4] & 8589934591_u64) << 4) |
                ((values[5] & 8589934591_u64) << 37)).to_u64
    bytes[3] = (((values[5] & 8589934591_u64) >> 27) |
                ((values[6] & 8589934591_u64) << 6) |
                ((values[7] & 8589934591_u64) << 39)).to_u64
    bytes[4] = (((values[7] & 8589934591_u64) >> 25) |
                ((values[8] & 8589934591_u64) << 8) |
                ((values[9] & 8589934591_u64) << 41)).to_u64
    bytes[5] = (((values[9] & 8589934591_u64) >> 23) |
                ((values[10] & 8589934591_u64) << 10) |
                ((values[11] & 8589934591_u64) << 43)).to_u64
    bytes[6] = (((values[11] & 8589934591_u64) >> 21) |
                ((values[12] & 8589934591_u64) << 12) |
                ((values[13] & 8589934591_u64) << 45)).to_u64
    bytes[7] = (((values[13] & 8589934591_u64) >> 19) |
                ((values[14] & 8589934591_u64) << 14) |
                ((values[15] & 8589934591_u64) << 47)).to_u64
    bytes[8] = (((values[15] & 8589934591_u64) >> 17) |
                ((values[16] & 8589934591_u64) << 16) |
                ((values[17] & 8589934591_u64) << 49)).to_u64
    bytes[9] = (((values[17] & 8589934591_u64) >> 15) |
                ((values[18] & 8589934591_u64) << 18) |
                ((values[19] & 8589934591_u64) << 51)).to_u64
    bytes[10] = (((values[19] & 8589934591_u64) >> 13) |
                 ((values[20] & 8589934591_u64) << 20) |
                 ((values[21] & 8589934591_u64) << 53)).to_u64
    bytes[11] = (((values[21] & 8589934591_u64) >> 11) |
                 ((values[22] & 8589934591_u64) << 22) |
                 ((values[23] & 8589934591_u64) << 55)).to_u64
    bytes[12] = (((values[23] & 8589934591_u64) >> 9) |
                 ((values[24] & 8589934591_u64) << 24) |
                 ((values[25] & 8589934591_u64) << 57)).to_u64
    bytes[13] = (((values[25] & 8589934591_u64) >> 7) |
                 ((values[26] & 8589934591_u64) << 26) |
                 ((values[27] & 8589934591_u64) << 59)).to_u64
    bytes[14] = (((values[27] & 8589934591_u64) >> 5) |
                 ((values[28] & 8589934591_u64) << 28) |
                 ((values[29] & 8589934591_u64) << 61)).to_u64
    bytes[15] = (((values[29] & 8589934591_u64) >> 3) |
                 ((values[30] & 8589934591_u64) << 30) |
                 ((values[31] & 8589934591_u64) << 63)).to_u64
    bytes[16] = (((values[31] & 8589934591_u64) >> 1) |
                 ((values[32] & 8589934591_u64) << 32)).to_u64
    bytes[17] = (((values[32] & 8589934591_u64) >> 32) |
                 ((values[33] & 8589934591_u64) << 1) |
                 ((values[34] & 8589934591_u64) << 34)).to_u64
    bytes[18] = (((values[34] & 8589934591_u64) >> 30) |
                 ((values[35] & 8589934591_u64) << 3) |
                 ((values[36] & 8589934591_u64) << 36)).to_u64
    bytes[19] = (((values[36] & 8589934591_u64) >> 28) |
                 ((values[37] & 8589934591_u64) << 5) |
                 ((values[38] & 8589934591_u64) << 38)).to_u64
    bytes[20] = (((values[38] & 8589934591_u64) >> 26) |
                 ((values[39] & 8589934591_u64) << 7) |
                 ((values[40] & 8589934591_u64) << 40)).to_u64
    bytes[21] = (((values[40] & 8589934591_u64) >> 24) |
                 ((values[41] & 8589934591_u64) << 9) |
                 ((values[42] & 8589934591_u64) << 42)).to_u64
    bytes[22] = (((values[42] & 8589934591_u64) >> 22) |
                 ((values[43] & 8589934591_u64) << 11) |
                 ((values[44] & 8589934591_u64) << 44)).to_u64
    bytes[23] = (((values[44] & 8589934591_u64) >> 20) |
                 ((values[45] & 8589934591_u64) << 13) |
                 ((values[46] & 8589934591_u64) << 46)).to_u64
    bytes[24] = (((values[46] & 8589934591_u64) >> 18) |
                 ((values[47] & 8589934591_u64) << 15) |
                 ((values[48] & 8589934591_u64) << 48)).to_u64
    bytes[25] = (((values[48] & 8589934591_u64) >> 16) |
                 ((values[49] & 8589934591_u64) << 17) |
                 ((values[50] & 8589934591_u64) << 50)).to_u64
    bytes[26] = (((values[50] & 8589934591_u64) >> 14) |
                 ((values[51] & 8589934591_u64) << 19) |
                 ((values[52] & 8589934591_u64) << 52)).to_u64
    bytes[27] = (((values[52] & 8589934591_u64) >> 12) |
                 ((values[53] & 8589934591_u64) << 21) |
                 ((values[54] & 8589934591_u64) << 54)).to_u64
    bytes[28] = (((values[54] & 8589934591_u64) >> 10) |
                 ((values[55] & 8589934591_u64) << 23) |
                 ((values[56] & 8589934591_u64) << 56)).to_u64
    bytes[29] = (((values[56] & 8589934591_u64) >> 8) |
                 ((values[57] & 8589934591_u64) << 25) |
                 ((values[58] & 8589934591_u64) << 58)).to_u64
    bytes[30] = (((values[58] & 8589934591_u64) >> 6) |
                 ((values[59] & 8589934591_u64) << 27) |
                 ((values[60] & 8589934591_u64) << 60)).to_u64
    bytes[31] = (((values[60] & 8589934591_u64) >> 4) |
                 ((values[61] & 8589934591_u64) << 29) |
                 ((values[62] & 8589934591_u64) << 62)).to_u64
    bytes[32] = (((values[62] & 8589934591_u64) >> 2) |
                 ((values[63] & 8589934591_u64) << 31)).to_u64
    bytes
  end

  def self.unpack33(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 8589934591_u64)).to_i64
    values[1] = (((bytes[0] >> 33) & 8589934591_u64) | ((bytes[1] & 3_u64) << 31)).to_i64
    values[2] = (((bytes[1] >> 2) & 8589934591_u64)).to_i64
    values[3] = (((bytes[1] >> 35) & 8589934591_u64) | ((bytes[2] & 15_u64) << 29)).to_i64
    values[4] = (((bytes[2] >> 4) & 8589934591_u64)).to_i64
    values[5] = (((bytes[2] >> 37) & 8589934591_u64) | ((bytes[3] & 63_u64) << 27)).to_i64
    values[6] = (((bytes[3] >> 6) & 8589934591_u64)).to_i64
    values[7] = (((bytes[3] >> 39) & 8589934591_u64) | ((bytes[4] & 255_u64) << 25)).to_i64
    values[8] = (((bytes[4] >> 8) & 8589934591_u64)).to_i64
    values[9] = (((bytes[4] >> 41) & 8589934591_u64) | ((bytes[5] & 1023_u64) << 23)).to_i64
    values[10] = (((bytes[5] >> 10) & 8589934591_u64)).to_i64
    values[11] = (((bytes[5] >> 43) & 8589934591_u64) | ((bytes[6] & 4095_u64) << 21)).to_i64
    values[12] = (((bytes[6] >> 12) & 8589934591_u64)).to_i64
    values[13] = (((bytes[6] >> 45) & 8589934591_u64) | ((bytes[7] & 16383_u64) << 19)).to_i64
    values[14] = (((bytes[7] >> 14) & 8589934591_u64)).to_i64
    values[15] = (((bytes[7] >> 47) & 8589934591_u64) | ((bytes[8] & 65535_u64) << 17)).to_i64
    values[16] = (((bytes[8] >> 16) & 8589934591_u64)).to_i64
    values[17] = (((bytes[8] >> 49) & 8589934591_u64) | ((bytes[9] & 262143_u64) << 15)).to_i64
    values[18] = (((bytes[9] >> 18) & 8589934591_u64)).to_i64
    values[19] = (((bytes[9] >> 51) & 8589934591_u64) | ((bytes[10] & 1048575_u64) << 13)).to_i64
    values[20] = (((bytes[10] >> 20) & 8589934591_u64)).to_i64
    values[21] = (((bytes[10] >> 53) & 8589934591_u64) | ((bytes[11] & 4194303_u64) << 11)).to_i64
    values[22] = (((bytes[11] >> 22) & 8589934591_u64)).to_i64
    values[23] = (((bytes[11] >> 55) & 8589934591_u64) | ((bytes[12] & 16777215_u64) << 9)).to_i64
    values[24] = (((bytes[12] >> 24) & 8589934591_u64)).to_i64
    values[25] = (((bytes[12] >> 57) & 8589934591_u64) | ((bytes[13] & 67108863_u64) << 7)).to_i64
    values[26] = (((bytes[13] >> 26) & 8589934591_u64)).to_i64
    values[27] = (((bytes[13] >> 59) & 8589934591_u64) | ((bytes[14] & 268435455_u64) << 5)).to_i64
    values[28] = (((bytes[14] >> 28) & 8589934591_u64)).to_i64
    values[29] = (((bytes[14] >> 61) & 8589934591_u64) | ((bytes[15] & 1073741823_u64) << 3)).to_i64
    values[30] = (((bytes[15] >> 30) & 8589934591_u64)).to_i64
    values[31] = (((bytes[15] >> 63) & 8589934591_u64) | ((bytes[16] & 4294967295_u64) << 1)).to_i64
    values[32] = (((bytes[16] >> 32) & 8589934591_u64) | ((bytes[17] & 1_u64) << 32)).to_i64
    values[33] = (((bytes[17] >> 1) & 8589934591_u64)).to_i64
    values[34] = (((bytes[17] >> 34) & 8589934591_u64) | ((bytes[18] & 7_u64) << 30)).to_i64
    values[35] = (((bytes[18] >> 3) & 8589934591_u64)).to_i64
    values[36] = (((bytes[18] >> 36) & 8589934591_u64) | ((bytes[19] & 31_u64) << 28)).to_i64
    values[37] = (((bytes[19] >> 5) & 8589934591_u64)).to_i64
    values[38] = (((bytes[19] >> 38) & 8589934591_u64) | ((bytes[20] & 127_u64) << 26)).to_i64
    values[39] = (((bytes[20] >> 7) & 8589934591_u64)).to_i64
    values[40] = (((bytes[20] >> 40) & 8589934591_u64) | ((bytes[21] & 511_u64) << 24)).to_i64
    values[41] = (((bytes[21] >> 9) & 8589934591_u64)).to_i64
    values[42] = (((bytes[21] >> 42) & 8589934591_u64) | ((bytes[22] & 2047_u64) << 22)).to_i64
    values[43] = (((bytes[22] >> 11) & 8589934591_u64)).to_i64
    values[44] = (((bytes[22] >> 44) & 8589934591_u64) | ((bytes[23] & 8191_u64) << 20)).to_i64
    values[45] = (((bytes[23] >> 13) & 8589934591_u64)).to_i64
    values[46] = (((bytes[23] >> 46) & 8589934591_u64) | ((bytes[24] & 32767_u64) << 18)).to_i64
    values[47] = (((bytes[24] >> 15) & 8589934591_u64)).to_i64
    values[48] = (((bytes[24] >> 48) & 8589934591_u64) | ((bytes[25] & 131071_u64) << 16)).to_i64
    values[49] = (((bytes[25] >> 17) & 8589934591_u64)).to_i64
    values[50] = (((bytes[25] >> 50) & 8589934591_u64) | ((bytes[26] & 524287_u64) << 14)).to_i64
    values[51] = (((bytes[26] >> 19) & 8589934591_u64)).to_i64
    values[52] = (((bytes[26] >> 52) & 8589934591_u64) | ((bytes[27] & 2097151_u64) << 12)).to_i64
    values[53] = (((bytes[27] >> 21) & 8589934591_u64)).to_i64
    values[54] = (((bytes[27] >> 54) & 8589934591_u64) | ((bytes[28] & 8388607_u64) << 10)).to_i64
    values[55] = (((bytes[28] >> 23) & 8589934591_u64)).to_i64
    values[56] = (((bytes[28] >> 56) & 8589934591_u64) | ((bytes[29] & 33554431_u64) << 8)).to_i64
    values[57] = (((bytes[29] >> 25) & 8589934591_u64)).to_i64
    values[58] = (((bytes[29] >> 58) & 8589934591_u64) | ((bytes[30] & 134217727_u64) << 6)).to_i64
    values[59] = (((bytes[30] >> 27) & 8589934591_u64)).to_i64
    values[60] = (((bytes[30] >> 60) & 8589934591_u64) | ((bytes[31] & 536870911_u64) << 4)).to_i64
    values[61] = (((bytes[31] >> 29) & 8589934591_u64)).to_i64
    values[62] = (((bytes[31] >> 62) & 8589934591_u64) | ((bytes[32] & 2147483647_u64) << 2)).to_i64
    values[63] = (((bytes[32] >> 31) & 8589934591_u64)).to_i64
    values
  end

  def self.pack34(values)
    bytes = Slice(UInt64).new(34, 0_u64)
    bytes[0] = (((values[0] & 17179869183_u64) << 0) |
                ((values[1] & 17179869183_u64) << 34)).to_u64
    bytes[1] = (((values[1] & 17179869183_u64) >> 30) |
                ((values[2] & 17179869183_u64) << 4) |
                ((values[3] & 17179869183_u64) << 38)).to_u64
    bytes[2] = (((values[3] & 17179869183_u64) >> 26) |
                ((values[4] & 17179869183_u64) << 8) |
                ((values[5] & 17179869183_u64) << 42)).to_u64
    bytes[3] = (((values[5] & 17179869183_u64) >> 22) |
                ((values[6] & 17179869183_u64) << 12) |
                ((values[7] & 17179869183_u64) << 46)).to_u64
    bytes[4] = (((values[7] & 17179869183_u64) >> 18) |
                ((values[8] & 17179869183_u64) << 16) |
                ((values[9] & 17179869183_u64) << 50)).to_u64
    bytes[5] = (((values[9] & 17179869183_u64) >> 14) |
                ((values[10] & 17179869183_u64) << 20) |
                ((values[11] & 17179869183_u64) << 54)).to_u64
    bytes[6] = (((values[11] & 17179869183_u64) >> 10) |
                ((values[12] & 17179869183_u64) << 24) |
                ((values[13] & 17179869183_u64) << 58)).to_u64
    bytes[7] = (((values[13] & 17179869183_u64) >> 6) |
                ((values[14] & 17179869183_u64) << 28) |
                ((values[15] & 17179869183_u64) << 62)).to_u64
    bytes[8] = (((values[15] & 17179869183_u64) >> 2) |
                ((values[16] & 17179869183_u64) << 32)).to_u64
    bytes[9] = (((values[16] & 17179869183_u64) >> 32) |
                ((values[17] & 17179869183_u64) << 2) |
                ((values[18] & 17179869183_u64) << 36)).to_u64
    bytes[10] = (((values[18] & 17179869183_u64) >> 28) |
                 ((values[19] & 17179869183_u64) << 6) |
                 ((values[20] & 17179869183_u64) << 40)).to_u64
    bytes[11] = (((values[20] & 17179869183_u64) >> 24) |
                 ((values[21] & 17179869183_u64) << 10) |
                 ((values[22] & 17179869183_u64) << 44)).to_u64
    bytes[12] = (((values[22] & 17179869183_u64) >> 20) |
                 ((values[23] & 17179869183_u64) << 14) |
                 ((values[24] & 17179869183_u64) << 48)).to_u64
    bytes[13] = (((values[24] & 17179869183_u64) >> 16) |
                 ((values[25] & 17179869183_u64) << 18) |
                 ((values[26] & 17179869183_u64) << 52)).to_u64
    bytes[14] = (((values[26] & 17179869183_u64) >> 12) |
                 ((values[27] & 17179869183_u64) << 22) |
                 ((values[28] & 17179869183_u64) << 56)).to_u64
    bytes[15] = (((values[28] & 17179869183_u64) >> 8) |
                 ((values[29] & 17179869183_u64) << 26) |
                 ((values[30] & 17179869183_u64) << 60)).to_u64
    bytes[16] = (((values[30] & 17179869183_u64) >> 4) |
                 ((values[31] & 17179869183_u64) << 30)).to_u64
    bytes[17] = (((values[32] & 17179869183_u64) << 0) |
                 ((values[33] & 17179869183_u64) << 34)).to_u64
    bytes[18] = (((values[33] & 17179869183_u64) >> 30) |
                 ((values[34] & 17179869183_u64) << 4) |
                 ((values[35] & 17179869183_u64) << 38)).to_u64
    bytes[19] = (((values[35] & 17179869183_u64) >> 26) |
                 ((values[36] & 17179869183_u64) << 8) |
                 ((values[37] & 17179869183_u64) << 42)).to_u64
    bytes[20] = (((values[37] & 17179869183_u64) >> 22) |
                 ((values[38] & 17179869183_u64) << 12) |
                 ((values[39] & 17179869183_u64) << 46)).to_u64
    bytes[21] = (((values[39] & 17179869183_u64) >> 18) |
                 ((values[40] & 17179869183_u64) << 16) |
                 ((values[41] & 17179869183_u64) << 50)).to_u64
    bytes[22] = (((values[41] & 17179869183_u64) >> 14) |
                 ((values[42] & 17179869183_u64) << 20) |
                 ((values[43] & 17179869183_u64) << 54)).to_u64
    bytes[23] = (((values[43] & 17179869183_u64) >> 10) |
                 ((values[44] & 17179869183_u64) << 24) |
                 ((values[45] & 17179869183_u64) << 58)).to_u64
    bytes[24] = (((values[45] & 17179869183_u64) >> 6) |
                 ((values[46] & 17179869183_u64) << 28) |
                 ((values[47] & 17179869183_u64) << 62)).to_u64
    bytes[25] = (((values[47] & 17179869183_u64) >> 2) |
                 ((values[48] & 17179869183_u64) << 32)).to_u64
    bytes[26] = (((values[48] & 17179869183_u64) >> 32) |
                 ((values[49] & 17179869183_u64) << 2) |
                 ((values[50] & 17179869183_u64) << 36)).to_u64
    bytes[27] = (((values[50] & 17179869183_u64) >> 28) |
                 ((values[51] & 17179869183_u64) << 6) |
                 ((values[52] & 17179869183_u64) << 40)).to_u64
    bytes[28] = (((values[52] & 17179869183_u64) >> 24) |
                 ((values[53] & 17179869183_u64) << 10) |
                 ((values[54] & 17179869183_u64) << 44)).to_u64
    bytes[29] = (((values[54] & 17179869183_u64) >> 20) |
                 ((values[55] & 17179869183_u64) << 14) |
                 ((values[56] & 17179869183_u64) << 48)).to_u64
    bytes[30] = (((values[56] & 17179869183_u64) >> 16) |
                 ((values[57] & 17179869183_u64) << 18) |
                 ((values[58] & 17179869183_u64) << 52)).to_u64
    bytes[31] = (((values[58] & 17179869183_u64) >> 12) |
                 ((values[59] & 17179869183_u64) << 22) |
                 ((values[60] & 17179869183_u64) << 56)).to_u64
    bytes[32] = (((values[60] & 17179869183_u64) >> 8) |
                 ((values[61] & 17179869183_u64) << 26) |
                 ((values[62] & 17179869183_u64) << 60)).to_u64
    bytes[33] = (((values[62] & 17179869183_u64) >> 4) |
                 ((values[63] & 17179869183_u64) << 30)).to_u64
    bytes
  end

  def self.unpack34(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 17179869183_u64)).to_i64
    values[1] = (((bytes[0] >> 34) & 17179869183_u64) | ((bytes[1] & 15_u64) << 30)).to_i64
    values[2] = (((bytes[1] >> 4) & 17179869183_u64)).to_i64
    values[3] = (((bytes[1] >> 38) & 17179869183_u64) | ((bytes[2] & 255_u64) << 26)).to_i64
    values[4] = (((bytes[2] >> 8) & 17179869183_u64)).to_i64
    values[5] = (((bytes[2] >> 42) & 17179869183_u64) | ((bytes[3] & 4095_u64) << 22)).to_i64
    values[6] = (((bytes[3] >> 12) & 17179869183_u64)).to_i64
    values[7] = (((bytes[3] >> 46) & 17179869183_u64) | ((bytes[4] & 65535_u64) << 18)).to_i64
    values[8] = (((bytes[4] >> 16) & 17179869183_u64)).to_i64
    values[9] = (((bytes[4] >> 50) & 17179869183_u64) | ((bytes[5] & 1048575_u64) << 14)).to_i64
    values[10] = (((bytes[5] >> 20) & 17179869183_u64)).to_i64
    values[11] = (((bytes[5] >> 54) & 17179869183_u64) | ((bytes[6] & 16777215_u64) << 10)).to_i64
    values[12] = (((bytes[6] >> 24) & 17179869183_u64)).to_i64
    values[13] = (((bytes[6] >> 58) & 17179869183_u64) | ((bytes[7] & 268435455_u64) << 6)).to_i64
    values[14] = (((bytes[7] >> 28) & 17179869183_u64)).to_i64
    values[15] = (((bytes[7] >> 62) & 17179869183_u64) | ((bytes[8] & 4294967295_u64) << 2)).to_i64
    values[16] = (((bytes[8] >> 32) & 17179869183_u64) | ((bytes[9] & 3_u64) << 32)).to_i64
    values[17] = (((bytes[9] >> 2) & 17179869183_u64)).to_i64
    values[18] = (((bytes[9] >> 36) & 17179869183_u64) | ((bytes[10] & 63_u64) << 28)).to_i64
    values[19] = (((bytes[10] >> 6) & 17179869183_u64)).to_i64
    values[20] = (((bytes[10] >> 40) & 17179869183_u64) | ((bytes[11] & 1023_u64) << 24)).to_i64
    values[21] = (((bytes[11] >> 10) & 17179869183_u64)).to_i64
    values[22] = (((bytes[11] >> 44) & 17179869183_u64) | ((bytes[12] & 16383_u64) << 20)).to_i64
    values[23] = (((bytes[12] >> 14) & 17179869183_u64)).to_i64
    values[24] = (((bytes[12] >> 48) & 17179869183_u64) | ((bytes[13] & 262143_u64) << 16)).to_i64
    values[25] = (((bytes[13] >> 18) & 17179869183_u64)).to_i64
    values[26] = (((bytes[13] >> 52) & 17179869183_u64) | ((bytes[14] & 4194303_u64) << 12)).to_i64
    values[27] = (((bytes[14] >> 22) & 17179869183_u64)).to_i64
    values[28] = (((bytes[14] >> 56) & 17179869183_u64) | ((bytes[15] & 67108863_u64) << 8)).to_i64
    values[29] = (((bytes[15] >> 26) & 17179869183_u64)).to_i64
    values[30] = (((bytes[15] >> 60) & 17179869183_u64) | ((bytes[16] & 1073741823_u64) << 4)).to_i64
    values[31] = (((bytes[16] >> 30) & 17179869183_u64)).to_i64
    values[32] = (((bytes[17] >> 0) & 17179869183_u64)).to_i64
    values[33] = (((bytes[17] >> 34) & 17179869183_u64) | ((bytes[18] & 15_u64) << 30)).to_i64
    values[34] = (((bytes[18] >> 4) & 17179869183_u64)).to_i64
    values[35] = (((bytes[18] >> 38) & 17179869183_u64) | ((bytes[19] & 255_u64) << 26)).to_i64
    values[36] = (((bytes[19] >> 8) & 17179869183_u64)).to_i64
    values[37] = (((bytes[19] >> 42) & 17179869183_u64) | ((bytes[20] & 4095_u64) << 22)).to_i64
    values[38] = (((bytes[20] >> 12) & 17179869183_u64)).to_i64
    values[39] = (((bytes[20] >> 46) & 17179869183_u64) | ((bytes[21] & 65535_u64) << 18)).to_i64
    values[40] = (((bytes[21] >> 16) & 17179869183_u64)).to_i64
    values[41] = (((bytes[21] >> 50) & 17179869183_u64) | ((bytes[22] & 1048575_u64) << 14)).to_i64
    values[42] = (((bytes[22] >> 20) & 17179869183_u64)).to_i64
    values[43] = (((bytes[22] >> 54) & 17179869183_u64) | ((bytes[23] & 16777215_u64) << 10)).to_i64
    values[44] = (((bytes[23] >> 24) & 17179869183_u64)).to_i64
    values[45] = (((bytes[23] >> 58) & 17179869183_u64) | ((bytes[24] & 268435455_u64) << 6)).to_i64
    values[46] = (((bytes[24] >> 28) & 17179869183_u64)).to_i64
    values[47] = (((bytes[24] >> 62) & 17179869183_u64) | ((bytes[25] & 4294967295_u64) << 2)).to_i64
    values[48] = (((bytes[25] >> 32) & 17179869183_u64) | ((bytes[26] & 3_u64) << 32)).to_i64
    values[49] = (((bytes[26] >> 2) & 17179869183_u64)).to_i64
    values[50] = (((bytes[26] >> 36) & 17179869183_u64) | ((bytes[27] & 63_u64) << 28)).to_i64
    values[51] = (((bytes[27] >> 6) & 17179869183_u64)).to_i64
    values[52] = (((bytes[27] >> 40) & 17179869183_u64) | ((bytes[28] & 1023_u64) << 24)).to_i64
    values[53] = (((bytes[28] >> 10) & 17179869183_u64)).to_i64
    values[54] = (((bytes[28] >> 44) & 17179869183_u64) | ((bytes[29] & 16383_u64) << 20)).to_i64
    values[55] = (((bytes[29] >> 14) & 17179869183_u64)).to_i64
    values[56] = (((bytes[29] >> 48) & 17179869183_u64) | ((bytes[30] & 262143_u64) << 16)).to_i64
    values[57] = (((bytes[30] >> 18) & 17179869183_u64)).to_i64
    values[58] = (((bytes[30] >> 52) & 17179869183_u64) | ((bytes[31] & 4194303_u64) << 12)).to_i64
    values[59] = (((bytes[31] >> 22) & 17179869183_u64)).to_i64
    values[60] = (((bytes[31] >> 56) & 17179869183_u64) | ((bytes[32] & 67108863_u64) << 8)).to_i64
    values[61] = (((bytes[32] >> 26) & 17179869183_u64)).to_i64
    values[62] = (((bytes[32] >> 60) & 17179869183_u64) | ((bytes[33] & 1073741823_u64) << 4)).to_i64
    values[63] = (((bytes[33] >> 30) & 17179869183_u64)).to_i64
    values
  end

  def self.pack35(values)
    bytes = Slice(UInt64).new(35, 0_u64)
    bytes[0] = (((values[0] & 34359738367_u64) << 0) |
                ((values[1] & 34359738367_u64) << 35)).to_u64
    bytes[1] = (((values[1] & 34359738367_u64) >> 29) |
                ((values[2] & 34359738367_u64) << 6) |
                ((values[3] & 34359738367_u64) << 41)).to_u64
    bytes[2] = (((values[3] & 34359738367_u64) >> 23) |
                ((values[4] & 34359738367_u64) << 12) |
                ((values[5] & 34359738367_u64) << 47)).to_u64
    bytes[3] = (((values[5] & 34359738367_u64) >> 17) |
                ((values[6] & 34359738367_u64) << 18) |
                ((values[7] & 34359738367_u64) << 53)).to_u64
    bytes[4] = (((values[7] & 34359738367_u64) >> 11) |
                ((values[8] & 34359738367_u64) << 24) |
                ((values[9] & 34359738367_u64) << 59)).to_u64
    bytes[5] = (((values[9] & 34359738367_u64) >> 5) |
                ((values[10] & 34359738367_u64) << 30)).to_u64
    bytes[6] = (((values[10] & 34359738367_u64) >> 34) |
                ((values[11] & 34359738367_u64) << 1) |
                ((values[12] & 34359738367_u64) << 36)).to_u64
    bytes[7] = (((values[12] & 34359738367_u64) >> 28) |
                ((values[13] & 34359738367_u64) << 7) |
                ((values[14] & 34359738367_u64) << 42)).to_u64
    bytes[8] = (((values[14] & 34359738367_u64) >> 22) |
                ((values[15] & 34359738367_u64) << 13) |
                ((values[16] & 34359738367_u64) << 48)).to_u64
    bytes[9] = (((values[16] & 34359738367_u64) >> 16) |
                ((values[17] & 34359738367_u64) << 19) |
                ((values[18] & 34359738367_u64) << 54)).to_u64
    bytes[10] = (((values[18] & 34359738367_u64) >> 10) |
                 ((values[19] & 34359738367_u64) << 25) |
                 ((values[20] & 34359738367_u64) << 60)).to_u64
    bytes[11] = (((values[20] & 34359738367_u64) >> 4) |
                 ((values[21] & 34359738367_u64) << 31)).to_u64
    bytes[12] = (((values[21] & 34359738367_u64) >> 33) |
                 ((values[22] & 34359738367_u64) << 2) |
                 ((values[23] & 34359738367_u64) << 37)).to_u64
    bytes[13] = (((values[23] & 34359738367_u64) >> 27) |
                 ((values[24] & 34359738367_u64) << 8) |
                 ((values[25] & 34359738367_u64) << 43)).to_u64
    bytes[14] = (((values[25] & 34359738367_u64) >> 21) |
                 ((values[26] & 34359738367_u64) << 14) |
                 ((values[27] & 34359738367_u64) << 49)).to_u64
    bytes[15] = (((values[27] & 34359738367_u64) >> 15) |
                 ((values[28] & 34359738367_u64) << 20) |
                 ((values[29] & 34359738367_u64) << 55)).to_u64
    bytes[16] = (((values[29] & 34359738367_u64) >> 9) |
                 ((values[30] & 34359738367_u64) << 26) |
                 ((values[31] & 34359738367_u64) << 61)).to_u64
    bytes[17] = (((values[31] & 34359738367_u64) >> 3) |
                 ((values[32] & 34359738367_u64) << 32)).to_u64
    bytes[18] = (((values[32] & 34359738367_u64) >> 32) |
                 ((values[33] & 34359738367_u64) << 3) |
                 ((values[34] & 34359738367_u64) << 38)).to_u64
    bytes[19] = (((values[34] & 34359738367_u64) >> 26) |
                 ((values[35] & 34359738367_u64) << 9) |
                 ((values[36] & 34359738367_u64) << 44)).to_u64
    bytes[20] = (((values[36] & 34359738367_u64) >> 20) |
                 ((values[37] & 34359738367_u64) << 15) |
                 ((values[38] & 34359738367_u64) << 50)).to_u64
    bytes[21] = (((values[38] & 34359738367_u64) >> 14) |
                 ((values[39] & 34359738367_u64) << 21) |
                 ((values[40] & 34359738367_u64) << 56)).to_u64
    bytes[22] = (((values[40] & 34359738367_u64) >> 8) |
                 ((values[41] & 34359738367_u64) << 27) |
                 ((values[42] & 34359738367_u64) << 62)).to_u64
    bytes[23] = (((values[42] & 34359738367_u64) >> 2) |
                 ((values[43] & 34359738367_u64) << 33)).to_u64
    bytes[24] = (((values[43] & 34359738367_u64) >> 31) |
                 ((values[44] & 34359738367_u64) << 4) |
                 ((values[45] & 34359738367_u64) << 39)).to_u64
    bytes[25] = (((values[45] & 34359738367_u64) >> 25) |
                 ((values[46] & 34359738367_u64) << 10) |
                 ((values[47] & 34359738367_u64) << 45)).to_u64
    bytes[26] = (((values[47] & 34359738367_u64) >> 19) |
                 ((values[48] & 34359738367_u64) << 16) |
                 ((values[49] & 34359738367_u64) << 51)).to_u64
    bytes[27] = (((values[49] & 34359738367_u64) >> 13) |
                 ((values[50] & 34359738367_u64) << 22) |
                 ((values[51] & 34359738367_u64) << 57)).to_u64
    bytes[28] = (((values[51] & 34359738367_u64) >> 7) |
                 ((values[52] & 34359738367_u64) << 28) |
                 ((values[53] & 34359738367_u64) << 63)).to_u64
    bytes[29] = (((values[53] & 34359738367_u64) >> 1) |
                 ((values[54] & 34359738367_u64) << 34)).to_u64
    bytes[30] = (((values[54] & 34359738367_u64) >> 30) |
                 ((values[55] & 34359738367_u64) << 5) |
                 ((values[56] & 34359738367_u64) << 40)).to_u64
    bytes[31] = (((values[56] & 34359738367_u64) >> 24) |
                 ((values[57] & 34359738367_u64) << 11) |
                 ((values[58] & 34359738367_u64) << 46)).to_u64
    bytes[32] = (((values[58] & 34359738367_u64) >> 18) |
                 ((values[59] & 34359738367_u64) << 17) |
                 ((values[60] & 34359738367_u64) << 52)).to_u64
    bytes[33] = (((values[60] & 34359738367_u64) >> 12) |
                 ((values[61] & 34359738367_u64) << 23) |
                 ((values[62] & 34359738367_u64) << 58)).to_u64
    bytes[34] = (((values[62] & 34359738367_u64) >> 6) |
                 ((values[63] & 34359738367_u64) << 29)).to_u64
    bytes
  end

  def self.unpack35(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 34359738367_u64)).to_i64
    values[1] = (((bytes[0] >> 35) & 34359738367_u64) | ((bytes[1] & 63_u64) << 29)).to_i64
    values[2] = (((bytes[1] >> 6) & 34359738367_u64)).to_i64
    values[3] = (((bytes[1] >> 41) & 34359738367_u64) | ((bytes[2] & 4095_u64) << 23)).to_i64
    values[4] = (((bytes[2] >> 12) & 34359738367_u64)).to_i64
    values[5] = (((bytes[2] >> 47) & 34359738367_u64) | ((bytes[3] & 262143_u64) << 17)).to_i64
    values[6] = (((bytes[3] >> 18) & 34359738367_u64)).to_i64
    values[7] = (((bytes[3] >> 53) & 34359738367_u64) | ((bytes[4] & 16777215_u64) << 11)).to_i64
    values[8] = (((bytes[4] >> 24) & 34359738367_u64)).to_i64
    values[9] = (((bytes[4] >> 59) & 34359738367_u64) | ((bytes[5] & 1073741823_u64) << 5)).to_i64
    values[10] = (((bytes[5] >> 30) & 34359738367_u64) | ((bytes[6] & 1_u64) << 34)).to_i64
    values[11] = (((bytes[6] >> 1) & 34359738367_u64)).to_i64
    values[12] = (((bytes[6] >> 36) & 34359738367_u64) | ((bytes[7] & 127_u64) << 28)).to_i64
    values[13] = (((bytes[7] >> 7) & 34359738367_u64)).to_i64
    values[14] = (((bytes[7] >> 42) & 34359738367_u64) | ((bytes[8] & 8191_u64) << 22)).to_i64
    values[15] = (((bytes[8] >> 13) & 34359738367_u64)).to_i64
    values[16] = (((bytes[8] >> 48) & 34359738367_u64) | ((bytes[9] & 524287_u64) << 16)).to_i64
    values[17] = (((bytes[9] >> 19) & 34359738367_u64)).to_i64
    values[18] = (((bytes[9] >> 54) & 34359738367_u64) | ((bytes[10] & 33554431_u64) << 10)).to_i64
    values[19] = (((bytes[10] >> 25) & 34359738367_u64)).to_i64
    values[20] = (((bytes[10] >> 60) & 34359738367_u64) | ((bytes[11] & 2147483647_u64) << 4)).to_i64
    values[21] = (((bytes[11] >> 31) & 34359738367_u64) | ((bytes[12] & 3_u64) << 33)).to_i64
    values[22] = (((bytes[12] >> 2) & 34359738367_u64)).to_i64
    values[23] = (((bytes[12] >> 37) & 34359738367_u64) | ((bytes[13] & 255_u64) << 27)).to_i64
    values[24] = (((bytes[13] >> 8) & 34359738367_u64)).to_i64
    values[25] = (((bytes[13] >> 43) & 34359738367_u64) | ((bytes[14] & 16383_u64) << 21)).to_i64
    values[26] = (((bytes[14] >> 14) & 34359738367_u64)).to_i64
    values[27] = (((bytes[14] >> 49) & 34359738367_u64) | ((bytes[15] & 1048575_u64) << 15)).to_i64
    values[28] = (((bytes[15] >> 20) & 34359738367_u64)).to_i64
    values[29] = (((bytes[15] >> 55) & 34359738367_u64) | ((bytes[16] & 67108863_u64) << 9)).to_i64
    values[30] = (((bytes[16] >> 26) & 34359738367_u64)).to_i64
    values[31] = (((bytes[16] >> 61) & 34359738367_u64) | ((bytes[17] & 4294967295_u64) << 3)).to_i64
    values[32] = (((bytes[17] >> 32) & 34359738367_u64) | ((bytes[18] & 7_u64) << 32)).to_i64
    values[33] = (((bytes[18] >> 3) & 34359738367_u64)).to_i64
    values[34] = (((bytes[18] >> 38) & 34359738367_u64) | ((bytes[19] & 511_u64) << 26)).to_i64
    values[35] = (((bytes[19] >> 9) & 34359738367_u64)).to_i64
    values[36] = (((bytes[19] >> 44) & 34359738367_u64) | ((bytes[20] & 32767_u64) << 20)).to_i64
    values[37] = (((bytes[20] >> 15) & 34359738367_u64)).to_i64
    values[38] = (((bytes[20] >> 50) & 34359738367_u64) | ((bytes[21] & 2097151_u64) << 14)).to_i64
    values[39] = (((bytes[21] >> 21) & 34359738367_u64)).to_i64
    values[40] = (((bytes[21] >> 56) & 34359738367_u64) | ((bytes[22] & 134217727_u64) << 8)).to_i64
    values[41] = (((bytes[22] >> 27) & 34359738367_u64)).to_i64
    values[42] = (((bytes[22] >> 62) & 34359738367_u64) | ((bytes[23] & 8589934591_u64) << 2)).to_i64
    values[43] = (((bytes[23] >> 33) & 34359738367_u64) | ((bytes[24] & 15_u64) << 31)).to_i64
    values[44] = (((bytes[24] >> 4) & 34359738367_u64)).to_i64
    values[45] = (((bytes[24] >> 39) & 34359738367_u64) | ((bytes[25] & 1023_u64) << 25)).to_i64
    values[46] = (((bytes[25] >> 10) & 34359738367_u64)).to_i64
    values[47] = (((bytes[25] >> 45) & 34359738367_u64) | ((bytes[26] & 65535_u64) << 19)).to_i64
    values[48] = (((bytes[26] >> 16) & 34359738367_u64)).to_i64
    values[49] = (((bytes[26] >> 51) & 34359738367_u64) | ((bytes[27] & 4194303_u64) << 13)).to_i64
    values[50] = (((bytes[27] >> 22) & 34359738367_u64)).to_i64
    values[51] = (((bytes[27] >> 57) & 34359738367_u64) | ((bytes[28] & 268435455_u64) << 7)).to_i64
    values[52] = (((bytes[28] >> 28) & 34359738367_u64)).to_i64
    values[53] = (((bytes[28] >> 63) & 34359738367_u64) | ((bytes[29] & 17179869183_u64) << 1)).to_i64
    values[54] = (((bytes[29] >> 34) & 34359738367_u64) | ((bytes[30] & 31_u64) << 30)).to_i64
    values[55] = (((bytes[30] >> 5) & 34359738367_u64)).to_i64
    values[56] = (((bytes[30] >> 40) & 34359738367_u64) | ((bytes[31] & 2047_u64) << 24)).to_i64
    values[57] = (((bytes[31] >> 11) & 34359738367_u64)).to_i64
    values[58] = (((bytes[31] >> 46) & 34359738367_u64) | ((bytes[32] & 131071_u64) << 18)).to_i64
    values[59] = (((bytes[32] >> 17) & 34359738367_u64)).to_i64
    values[60] = (((bytes[32] >> 52) & 34359738367_u64) | ((bytes[33] & 8388607_u64) << 12)).to_i64
    values[61] = (((bytes[33] >> 23) & 34359738367_u64)).to_i64
    values[62] = (((bytes[33] >> 58) & 34359738367_u64) | ((bytes[34] & 536870911_u64) << 6)).to_i64
    values[63] = (((bytes[34] >> 29) & 34359738367_u64)).to_i64
    values
  end

  def self.pack36(values)
    bytes = Slice(UInt64).new(36, 0_u64)
    bytes[0] = (((values[0] & 68719476735_u64) << 0) |
                ((values[1] & 68719476735_u64) << 36)).to_u64
    bytes[1] = (((values[1] & 68719476735_u64) >> 28) |
                ((values[2] & 68719476735_u64) << 8) |
                ((values[3] & 68719476735_u64) << 44)).to_u64
    bytes[2] = (((values[3] & 68719476735_u64) >> 20) |
                ((values[4] & 68719476735_u64) << 16) |
                ((values[5] & 68719476735_u64) << 52)).to_u64
    bytes[3] = (((values[5] & 68719476735_u64) >> 12) |
                ((values[6] & 68719476735_u64) << 24) |
                ((values[7] & 68719476735_u64) << 60)).to_u64
    bytes[4] = (((values[7] & 68719476735_u64) >> 4) |
                ((values[8] & 68719476735_u64) << 32)).to_u64
    bytes[5] = (((values[8] & 68719476735_u64) >> 32) |
                ((values[9] & 68719476735_u64) << 4) |
                ((values[10] & 68719476735_u64) << 40)).to_u64
    bytes[6] = (((values[10] & 68719476735_u64) >> 24) |
                ((values[11] & 68719476735_u64) << 12) |
                ((values[12] & 68719476735_u64) << 48)).to_u64
    bytes[7] = (((values[12] & 68719476735_u64) >> 16) |
                ((values[13] & 68719476735_u64) << 20) |
                ((values[14] & 68719476735_u64) << 56)).to_u64
    bytes[8] = (((values[14] & 68719476735_u64) >> 8) |
                ((values[15] & 68719476735_u64) << 28)).to_u64
    bytes[9] = (((values[16] & 68719476735_u64) << 0) |
                ((values[17] & 68719476735_u64) << 36)).to_u64
    bytes[10] = (((values[17] & 68719476735_u64) >> 28) |
                 ((values[18] & 68719476735_u64) << 8) |
                 ((values[19] & 68719476735_u64) << 44)).to_u64
    bytes[11] = (((values[19] & 68719476735_u64) >> 20) |
                 ((values[20] & 68719476735_u64) << 16) |
                 ((values[21] & 68719476735_u64) << 52)).to_u64
    bytes[12] = (((values[21] & 68719476735_u64) >> 12) |
                 ((values[22] & 68719476735_u64) << 24) |
                 ((values[23] & 68719476735_u64) << 60)).to_u64
    bytes[13] = (((values[23] & 68719476735_u64) >> 4) |
                 ((values[24] & 68719476735_u64) << 32)).to_u64
    bytes[14] = (((values[24] & 68719476735_u64) >> 32) |
                 ((values[25] & 68719476735_u64) << 4) |
                 ((values[26] & 68719476735_u64) << 40)).to_u64
    bytes[15] = (((values[26] & 68719476735_u64) >> 24) |
                 ((values[27] & 68719476735_u64) << 12) |
                 ((values[28] & 68719476735_u64) << 48)).to_u64
    bytes[16] = (((values[28] & 68719476735_u64) >> 16) |
                 ((values[29] & 68719476735_u64) << 20) |
                 ((values[30] & 68719476735_u64) << 56)).to_u64
    bytes[17] = (((values[30] & 68719476735_u64) >> 8) |
                 ((values[31] & 68719476735_u64) << 28)).to_u64
    bytes[18] = (((values[32] & 68719476735_u64) << 0) |
                 ((values[33] & 68719476735_u64) << 36)).to_u64
    bytes[19] = (((values[33] & 68719476735_u64) >> 28) |
                 ((values[34] & 68719476735_u64) << 8) |
                 ((values[35] & 68719476735_u64) << 44)).to_u64
    bytes[20] = (((values[35] & 68719476735_u64) >> 20) |
                 ((values[36] & 68719476735_u64) << 16) |
                 ((values[37] & 68719476735_u64) << 52)).to_u64
    bytes[21] = (((values[37] & 68719476735_u64) >> 12) |
                 ((values[38] & 68719476735_u64) << 24) |
                 ((values[39] & 68719476735_u64) << 60)).to_u64
    bytes[22] = (((values[39] & 68719476735_u64) >> 4) |
                 ((values[40] & 68719476735_u64) << 32)).to_u64
    bytes[23] = (((values[40] & 68719476735_u64) >> 32) |
                 ((values[41] & 68719476735_u64) << 4) |
                 ((values[42] & 68719476735_u64) << 40)).to_u64
    bytes[24] = (((values[42] & 68719476735_u64) >> 24) |
                 ((values[43] & 68719476735_u64) << 12) |
                 ((values[44] & 68719476735_u64) << 48)).to_u64
    bytes[25] = (((values[44] & 68719476735_u64) >> 16) |
                 ((values[45] & 68719476735_u64) << 20) |
                 ((values[46] & 68719476735_u64) << 56)).to_u64
    bytes[26] = (((values[46] & 68719476735_u64) >> 8) |
                 ((values[47] & 68719476735_u64) << 28)).to_u64
    bytes[27] = (((values[48] & 68719476735_u64) << 0) |
                 ((values[49] & 68719476735_u64) << 36)).to_u64
    bytes[28] = (((values[49] & 68719476735_u64) >> 28) |
                 ((values[50] & 68719476735_u64) << 8) |
                 ((values[51] & 68719476735_u64) << 44)).to_u64
    bytes[29] = (((values[51] & 68719476735_u64) >> 20) |
                 ((values[52] & 68719476735_u64) << 16) |
                 ((values[53] & 68719476735_u64) << 52)).to_u64
    bytes[30] = (((values[53] & 68719476735_u64) >> 12) |
                 ((values[54] & 68719476735_u64) << 24) |
                 ((values[55] & 68719476735_u64) << 60)).to_u64
    bytes[31] = (((values[55] & 68719476735_u64) >> 4) |
                 ((values[56] & 68719476735_u64) << 32)).to_u64
    bytes[32] = (((values[56] & 68719476735_u64) >> 32) |
                 ((values[57] & 68719476735_u64) << 4) |
                 ((values[58] & 68719476735_u64) << 40)).to_u64
    bytes[33] = (((values[58] & 68719476735_u64) >> 24) |
                 ((values[59] & 68719476735_u64) << 12) |
                 ((values[60] & 68719476735_u64) << 48)).to_u64
    bytes[34] = (((values[60] & 68719476735_u64) >> 16) |
                 ((values[61] & 68719476735_u64) << 20) |
                 ((values[62] & 68719476735_u64) << 56)).to_u64
    bytes[35] = (((values[62] & 68719476735_u64) >> 8) |
                 ((values[63] & 68719476735_u64) << 28)).to_u64
    bytes
  end

  def self.unpack36(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 68719476735_u64)).to_i64
    values[1] = (((bytes[0] >> 36) & 68719476735_u64) | ((bytes[1] & 255_u64) << 28)).to_i64
    values[2] = (((bytes[1] >> 8) & 68719476735_u64)).to_i64
    values[3] = (((bytes[1] >> 44) & 68719476735_u64) | ((bytes[2] & 65535_u64) << 20)).to_i64
    values[4] = (((bytes[2] >> 16) & 68719476735_u64)).to_i64
    values[5] = (((bytes[2] >> 52) & 68719476735_u64) | ((bytes[3] & 16777215_u64) << 12)).to_i64
    values[6] = (((bytes[3] >> 24) & 68719476735_u64)).to_i64
    values[7] = (((bytes[3] >> 60) & 68719476735_u64) | ((bytes[4] & 4294967295_u64) << 4)).to_i64
    values[8] = (((bytes[4] >> 32) & 68719476735_u64) | ((bytes[5] & 15_u64) << 32)).to_i64
    values[9] = (((bytes[5] >> 4) & 68719476735_u64)).to_i64
    values[10] = (((bytes[5] >> 40) & 68719476735_u64) | ((bytes[6] & 4095_u64) << 24)).to_i64
    values[11] = (((bytes[6] >> 12) & 68719476735_u64)).to_i64
    values[12] = (((bytes[6] >> 48) & 68719476735_u64) | ((bytes[7] & 1048575_u64) << 16)).to_i64
    values[13] = (((bytes[7] >> 20) & 68719476735_u64)).to_i64
    values[14] = (((bytes[7] >> 56) & 68719476735_u64) | ((bytes[8] & 268435455_u64) << 8)).to_i64
    values[15] = (((bytes[8] >> 28) & 68719476735_u64)).to_i64
    values[16] = (((bytes[9] >> 0) & 68719476735_u64)).to_i64
    values[17] = (((bytes[9] >> 36) & 68719476735_u64) | ((bytes[10] & 255_u64) << 28)).to_i64
    values[18] = (((bytes[10] >> 8) & 68719476735_u64)).to_i64
    values[19] = (((bytes[10] >> 44) & 68719476735_u64) | ((bytes[11] & 65535_u64) << 20)).to_i64
    values[20] = (((bytes[11] >> 16) & 68719476735_u64)).to_i64
    values[21] = (((bytes[11] >> 52) & 68719476735_u64) | ((bytes[12] & 16777215_u64) << 12)).to_i64
    values[22] = (((bytes[12] >> 24) & 68719476735_u64)).to_i64
    values[23] = (((bytes[12] >> 60) & 68719476735_u64) | ((bytes[13] & 4294967295_u64) << 4)).to_i64
    values[24] = (((bytes[13] >> 32) & 68719476735_u64) | ((bytes[14] & 15_u64) << 32)).to_i64
    values[25] = (((bytes[14] >> 4) & 68719476735_u64)).to_i64
    values[26] = (((bytes[14] >> 40) & 68719476735_u64) | ((bytes[15] & 4095_u64) << 24)).to_i64
    values[27] = (((bytes[15] >> 12) & 68719476735_u64)).to_i64
    values[28] = (((bytes[15] >> 48) & 68719476735_u64) | ((bytes[16] & 1048575_u64) << 16)).to_i64
    values[29] = (((bytes[16] >> 20) & 68719476735_u64)).to_i64
    values[30] = (((bytes[16] >> 56) & 68719476735_u64) | ((bytes[17] & 268435455_u64) << 8)).to_i64
    values[31] = (((bytes[17] >> 28) & 68719476735_u64)).to_i64
    values[32] = (((bytes[18] >> 0) & 68719476735_u64)).to_i64
    values[33] = (((bytes[18] >> 36) & 68719476735_u64) | ((bytes[19] & 255_u64) << 28)).to_i64
    values[34] = (((bytes[19] >> 8) & 68719476735_u64)).to_i64
    values[35] = (((bytes[19] >> 44) & 68719476735_u64) | ((bytes[20] & 65535_u64) << 20)).to_i64
    values[36] = (((bytes[20] >> 16) & 68719476735_u64)).to_i64
    values[37] = (((bytes[20] >> 52) & 68719476735_u64) | ((bytes[21] & 16777215_u64) << 12)).to_i64
    values[38] = (((bytes[21] >> 24) & 68719476735_u64)).to_i64
    values[39] = (((bytes[21] >> 60) & 68719476735_u64) | ((bytes[22] & 4294967295_u64) << 4)).to_i64
    values[40] = (((bytes[22] >> 32) & 68719476735_u64) | ((bytes[23] & 15_u64) << 32)).to_i64
    values[41] = (((bytes[23] >> 4) & 68719476735_u64)).to_i64
    values[42] = (((bytes[23] >> 40) & 68719476735_u64) | ((bytes[24] & 4095_u64) << 24)).to_i64
    values[43] = (((bytes[24] >> 12) & 68719476735_u64)).to_i64
    values[44] = (((bytes[24] >> 48) & 68719476735_u64) | ((bytes[25] & 1048575_u64) << 16)).to_i64
    values[45] = (((bytes[25] >> 20) & 68719476735_u64)).to_i64
    values[46] = (((bytes[25] >> 56) & 68719476735_u64) | ((bytes[26] & 268435455_u64) << 8)).to_i64
    values[47] = (((bytes[26] >> 28) & 68719476735_u64)).to_i64
    values[48] = (((bytes[27] >> 0) & 68719476735_u64)).to_i64
    values[49] = (((bytes[27] >> 36) & 68719476735_u64) | ((bytes[28] & 255_u64) << 28)).to_i64
    values[50] = (((bytes[28] >> 8) & 68719476735_u64)).to_i64
    values[51] = (((bytes[28] >> 44) & 68719476735_u64) | ((bytes[29] & 65535_u64) << 20)).to_i64
    values[52] = (((bytes[29] >> 16) & 68719476735_u64)).to_i64
    values[53] = (((bytes[29] >> 52) & 68719476735_u64) | ((bytes[30] & 16777215_u64) << 12)).to_i64
    values[54] = (((bytes[30] >> 24) & 68719476735_u64)).to_i64
    values[55] = (((bytes[30] >> 60) & 68719476735_u64) | ((bytes[31] & 4294967295_u64) << 4)).to_i64
    values[56] = (((bytes[31] >> 32) & 68719476735_u64) | ((bytes[32] & 15_u64) << 32)).to_i64
    values[57] = (((bytes[32] >> 4) & 68719476735_u64)).to_i64
    values[58] = (((bytes[32] >> 40) & 68719476735_u64) | ((bytes[33] & 4095_u64) << 24)).to_i64
    values[59] = (((bytes[33] >> 12) & 68719476735_u64)).to_i64
    values[60] = (((bytes[33] >> 48) & 68719476735_u64) | ((bytes[34] & 1048575_u64) << 16)).to_i64
    values[61] = (((bytes[34] >> 20) & 68719476735_u64)).to_i64
    values[62] = (((bytes[34] >> 56) & 68719476735_u64) | ((bytes[35] & 268435455_u64) << 8)).to_i64
    values[63] = (((bytes[35] >> 28) & 68719476735_u64)).to_i64
    values
  end

  def self.pack37(values)
    bytes = Slice(UInt64).new(37, 0_u64)
    bytes[0] = (((values[0] & 137438953471_u64) << 0) |
                ((values[1] & 137438953471_u64) << 37)).to_u64
    bytes[1] = (((values[1] & 137438953471_u64) >> 27) |
                ((values[2] & 137438953471_u64) << 10) |
                ((values[3] & 137438953471_u64) << 47)).to_u64
    bytes[2] = (((values[3] & 137438953471_u64) >> 17) |
                ((values[4] & 137438953471_u64) << 20) |
                ((values[5] & 137438953471_u64) << 57)).to_u64
    bytes[3] = (((values[5] & 137438953471_u64) >> 7) |
                ((values[6] & 137438953471_u64) << 30)).to_u64
    bytes[4] = (((values[6] & 137438953471_u64) >> 34) |
                ((values[7] & 137438953471_u64) << 3) |
                ((values[8] & 137438953471_u64) << 40)).to_u64
    bytes[5] = (((values[8] & 137438953471_u64) >> 24) |
                ((values[9] & 137438953471_u64) << 13) |
                ((values[10] & 137438953471_u64) << 50)).to_u64
    bytes[6] = (((values[10] & 137438953471_u64) >> 14) |
                ((values[11] & 137438953471_u64) << 23) |
                ((values[12] & 137438953471_u64) << 60)).to_u64
    bytes[7] = (((values[12] & 137438953471_u64) >> 4) |
                ((values[13] & 137438953471_u64) << 33)).to_u64
    bytes[8] = (((values[13] & 137438953471_u64) >> 31) |
                ((values[14] & 137438953471_u64) << 6) |
                ((values[15] & 137438953471_u64) << 43)).to_u64
    bytes[9] = (((values[15] & 137438953471_u64) >> 21) |
                ((values[16] & 137438953471_u64) << 16) |
                ((values[17] & 137438953471_u64) << 53)).to_u64
    bytes[10] = (((values[17] & 137438953471_u64) >> 11) |
                 ((values[18] & 137438953471_u64) << 26) |
                 ((values[19] & 137438953471_u64) << 63)).to_u64
    bytes[11] = (((values[19] & 137438953471_u64) >> 1) |
                 ((values[20] & 137438953471_u64) << 36)).to_u64
    bytes[12] = (((values[20] & 137438953471_u64) >> 28) |
                 ((values[21] & 137438953471_u64) << 9) |
                 ((values[22] & 137438953471_u64) << 46)).to_u64
    bytes[13] = (((values[22] & 137438953471_u64) >> 18) |
                 ((values[23] & 137438953471_u64) << 19) |
                 ((values[24] & 137438953471_u64) << 56)).to_u64
    bytes[14] = (((values[24] & 137438953471_u64) >> 8) |
                 ((values[25] & 137438953471_u64) << 29)).to_u64
    bytes[15] = (((values[25] & 137438953471_u64) >> 35) |
                 ((values[26] & 137438953471_u64) << 2) |
                 ((values[27] & 137438953471_u64) << 39)).to_u64
    bytes[16] = (((values[27] & 137438953471_u64) >> 25) |
                 ((values[28] & 137438953471_u64) << 12) |
                 ((values[29] & 137438953471_u64) << 49)).to_u64
    bytes[17] = (((values[29] & 137438953471_u64) >> 15) |
                 ((values[30] & 137438953471_u64) << 22) |
                 ((values[31] & 137438953471_u64) << 59)).to_u64
    bytes[18] = (((values[31] & 137438953471_u64) >> 5) |
                 ((values[32] & 137438953471_u64) << 32)).to_u64
    bytes[19] = (((values[32] & 137438953471_u64) >> 32) |
                 ((values[33] & 137438953471_u64) << 5) |
                 ((values[34] & 137438953471_u64) << 42)).to_u64
    bytes[20] = (((values[34] & 137438953471_u64) >> 22) |
                 ((values[35] & 137438953471_u64) << 15) |
                 ((values[36] & 137438953471_u64) << 52)).to_u64
    bytes[21] = (((values[36] & 137438953471_u64) >> 12) |
                 ((values[37] & 137438953471_u64) << 25) |
                 ((values[38] & 137438953471_u64) << 62)).to_u64
    bytes[22] = (((values[38] & 137438953471_u64) >> 2) |
                 ((values[39] & 137438953471_u64) << 35)).to_u64
    bytes[23] = (((values[39] & 137438953471_u64) >> 29) |
                 ((values[40] & 137438953471_u64) << 8) |
                 ((values[41] & 137438953471_u64) << 45)).to_u64
    bytes[24] = (((values[41] & 137438953471_u64) >> 19) |
                 ((values[42] & 137438953471_u64) << 18) |
                 ((values[43] & 137438953471_u64) << 55)).to_u64
    bytes[25] = (((values[43] & 137438953471_u64) >> 9) |
                 ((values[44] & 137438953471_u64) << 28)).to_u64
    bytes[26] = (((values[44] & 137438953471_u64) >> 36) |
                 ((values[45] & 137438953471_u64) << 1) |
                 ((values[46] & 137438953471_u64) << 38)).to_u64
    bytes[27] = (((values[46] & 137438953471_u64) >> 26) |
                 ((values[47] & 137438953471_u64) << 11) |
                 ((values[48] & 137438953471_u64) << 48)).to_u64
    bytes[28] = (((values[48] & 137438953471_u64) >> 16) |
                 ((values[49] & 137438953471_u64) << 21) |
                 ((values[50] & 137438953471_u64) << 58)).to_u64
    bytes[29] = (((values[50] & 137438953471_u64) >> 6) |
                 ((values[51] & 137438953471_u64) << 31)).to_u64
    bytes[30] = (((values[51] & 137438953471_u64) >> 33) |
                 ((values[52] & 137438953471_u64) << 4) |
                 ((values[53] & 137438953471_u64) << 41)).to_u64
    bytes[31] = (((values[53] & 137438953471_u64) >> 23) |
                 ((values[54] & 137438953471_u64) << 14) |
                 ((values[55] & 137438953471_u64) << 51)).to_u64
    bytes[32] = (((values[55] & 137438953471_u64) >> 13) |
                 ((values[56] & 137438953471_u64) << 24) |
                 ((values[57] & 137438953471_u64) << 61)).to_u64
    bytes[33] = (((values[57] & 137438953471_u64) >> 3) |
                 ((values[58] & 137438953471_u64) << 34)).to_u64
    bytes[34] = (((values[58] & 137438953471_u64) >> 30) |
                 ((values[59] & 137438953471_u64) << 7) |
                 ((values[60] & 137438953471_u64) << 44)).to_u64
    bytes[35] = (((values[60] & 137438953471_u64) >> 20) |
                 ((values[61] & 137438953471_u64) << 17) |
                 ((values[62] & 137438953471_u64) << 54)).to_u64
    bytes[36] = (((values[62] & 137438953471_u64) >> 10) |
                 ((values[63] & 137438953471_u64) << 27)).to_u64
    bytes
  end

  def self.unpack37(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 137438953471_u64)).to_i64
    values[1] = (((bytes[0] >> 37) & 137438953471_u64) | ((bytes[1] & 1023_u64) << 27)).to_i64
    values[2] = (((bytes[1] >> 10) & 137438953471_u64)).to_i64
    values[3] = (((bytes[1] >> 47) & 137438953471_u64) | ((bytes[2] & 1048575_u64) << 17)).to_i64
    values[4] = (((bytes[2] >> 20) & 137438953471_u64)).to_i64
    values[5] = (((bytes[2] >> 57) & 137438953471_u64) | ((bytes[3] & 1073741823_u64) << 7)).to_i64
    values[6] = (((bytes[3] >> 30) & 137438953471_u64) | ((bytes[4] & 7_u64) << 34)).to_i64
    values[7] = (((bytes[4] >> 3) & 137438953471_u64)).to_i64
    values[8] = (((bytes[4] >> 40) & 137438953471_u64) | ((bytes[5] & 8191_u64) << 24)).to_i64
    values[9] = (((bytes[5] >> 13) & 137438953471_u64)).to_i64
    values[10] = (((bytes[5] >> 50) & 137438953471_u64) | ((bytes[6] & 8388607_u64) << 14)).to_i64
    values[11] = (((bytes[6] >> 23) & 137438953471_u64)).to_i64
    values[12] = (((bytes[6] >> 60) & 137438953471_u64) | ((bytes[7] & 8589934591_u64) << 4)).to_i64
    values[13] = (((bytes[7] >> 33) & 137438953471_u64) | ((bytes[8] & 63_u64) << 31)).to_i64
    values[14] = (((bytes[8] >> 6) & 137438953471_u64)).to_i64
    values[15] = (((bytes[8] >> 43) & 137438953471_u64) | ((bytes[9] & 65535_u64) << 21)).to_i64
    values[16] = (((bytes[9] >> 16) & 137438953471_u64)).to_i64
    values[17] = (((bytes[9] >> 53) & 137438953471_u64) | ((bytes[10] & 67108863_u64) << 11)).to_i64
    values[18] = (((bytes[10] >> 26) & 137438953471_u64)).to_i64
    values[19] = (((bytes[10] >> 63) & 137438953471_u64) | ((bytes[11] & 68719476735_u64) << 1)).to_i64
    values[20] = (((bytes[11] >> 36) & 137438953471_u64) | ((bytes[12] & 511_u64) << 28)).to_i64
    values[21] = (((bytes[12] >> 9) & 137438953471_u64)).to_i64
    values[22] = (((bytes[12] >> 46) & 137438953471_u64) | ((bytes[13] & 524287_u64) << 18)).to_i64
    values[23] = (((bytes[13] >> 19) & 137438953471_u64)).to_i64
    values[24] = (((bytes[13] >> 56) & 137438953471_u64) | ((bytes[14] & 536870911_u64) << 8)).to_i64
    values[25] = (((bytes[14] >> 29) & 137438953471_u64) | ((bytes[15] & 3_u64) << 35)).to_i64
    values[26] = (((bytes[15] >> 2) & 137438953471_u64)).to_i64
    values[27] = (((bytes[15] >> 39) & 137438953471_u64) | ((bytes[16] & 4095_u64) << 25)).to_i64
    values[28] = (((bytes[16] >> 12) & 137438953471_u64)).to_i64
    values[29] = (((bytes[16] >> 49) & 137438953471_u64) | ((bytes[17] & 4194303_u64) << 15)).to_i64
    values[30] = (((bytes[17] >> 22) & 137438953471_u64)).to_i64
    values[31] = (((bytes[17] >> 59) & 137438953471_u64) | ((bytes[18] & 4294967295_u64) << 5)).to_i64
    values[32] = (((bytes[18] >> 32) & 137438953471_u64) | ((bytes[19] & 31_u64) << 32)).to_i64
    values[33] = (((bytes[19] >> 5) & 137438953471_u64)).to_i64
    values[34] = (((bytes[19] >> 42) & 137438953471_u64) | ((bytes[20] & 32767_u64) << 22)).to_i64
    values[35] = (((bytes[20] >> 15) & 137438953471_u64)).to_i64
    values[36] = (((bytes[20] >> 52) & 137438953471_u64) | ((bytes[21] & 33554431_u64) << 12)).to_i64
    values[37] = (((bytes[21] >> 25) & 137438953471_u64)).to_i64
    values[38] = (((bytes[21] >> 62) & 137438953471_u64) | ((bytes[22] & 34359738367_u64) << 2)).to_i64
    values[39] = (((bytes[22] >> 35) & 137438953471_u64) | ((bytes[23] & 255_u64) << 29)).to_i64
    values[40] = (((bytes[23] >> 8) & 137438953471_u64)).to_i64
    values[41] = (((bytes[23] >> 45) & 137438953471_u64) | ((bytes[24] & 262143_u64) << 19)).to_i64
    values[42] = (((bytes[24] >> 18) & 137438953471_u64)).to_i64
    values[43] = (((bytes[24] >> 55) & 137438953471_u64) | ((bytes[25] & 268435455_u64) << 9)).to_i64
    values[44] = (((bytes[25] >> 28) & 137438953471_u64) | ((bytes[26] & 1_u64) << 36)).to_i64
    values[45] = (((bytes[26] >> 1) & 137438953471_u64)).to_i64
    values[46] = (((bytes[26] >> 38) & 137438953471_u64) | ((bytes[27] & 2047_u64) << 26)).to_i64
    values[47] = (((bytes[27] >> 11) & 137438953471_u64)).to_i64
    values[48] = (((bytes[27] >> 48) & 137438953471_u64) | ((bytes[28] & 2097151_u64) << 16)).to_i64
    values[49] = (((bytes[28] >> 21) & 137438953471_u64)).to_i64
    values[50] = (((bytes[28] >> 58) & 137438953471_u64) | ((bytes[29] & 2147483647_u64) << 6)).to_i64
    values[51] = (((bytes[29] >> 31) & 137438953471_u64) | ((bytes[30] & 15_u64) << 33)).to_i64
    values[52] = (((bytes[30] >> 4) & 137438953471_u64)).to_i64
    values[53] = (((bytes[30] >> 41) & 137438953471_u64) | ((bytes[31] & 16383_u64) << 23)).to_i64
    values[54] = (((bytes[31] >> 14) & 137438953471_u64)).to_i64
    values[55] = (((bytes[31] >> 51) & 137438953471_u64) | ((bytes[32] & 16777215_u64) << 13)).to_i64
    values[56] = (((bytes[32] >> 24) & 137438953471_u64)).to_i64
    values[57] = (((bytes[32] >> 61) & 137438953471_u64) | ((bytes[33] & 17179869183_u64) << 3)).to_i64
    values[58] = (((bytes[33] >> 34) & 137438953471_u64) | ((bytes[34] & 127_u64) << 30)).to_i64
    values[59] = (((bytes[34] >> 7) & 137438953471_u64)).to_i64
    values[60] = (((bytes[34] >> 44) & 137438953471_u64) | ((bytes[35] & 131071_u64) << 20)).to_i64
    values[61] = (((bytes[35] >> 17) & 137438953471_u64)).to_i64
    values[62] = (((bytes[35] >> 54) & 137438953471_u64) | ((bytes[36] & 134217727_u64) << 10)).to_i64
    values[63] = (((bytes[36] >> 27) & 137438953471_u64)).to_i64
    values
  end

  def self.pack38(values)
    bytes = Slice(UInt64).new(38, 0_u64)
    bytes[0] = (((values[0] & 274877906943_u64) << 0) |
                ((values[1] & 274877906943_u64) << 38)).to_u64
    bytes[1] = (((values[1] & 274877906943_u64) >> 26) |
                ((values[2] & 274877906943_u64) << 12) |
                ((values[3] & 274877906943_u64) << 50)).to_u64
    bytes[2] = (((values[3] & 274877906943_u64) >> 14) |
                ((values[4] & 274877906943_u64) << 24) |
                ((values[5] & 274877906943_u64) << 62)).to_u64
    bytes[3] = (((values[5] & 274877906943_u64) >> 2) |
                ((values[6] & 274877906943_u64) << 36)).to_u64
    bytes[4] = (((values[6] & 274877906943_u64) >> 28) |
                ((values[7] & 274877906943_u64) << 10) |
                ((values[8] & 274877906943_u64) << 48)).to_u64
    bytes[5] = (((values[8] & 274877906943_u64) >> 16) |
                ((values[9] & 274877906943_u64) << 22) |
                ((values[10] & 274877906943_u64) << 60)).to_u64
    bytes[6] = (((values[10] & 274877906943_u64) >> 4) |
                ((values[11] & 274877906943_u64) << 34)).to_u64
    bytes[7] = (((values[11] & 274877906943_u64) >> 30) |
                ((values[12] & 274877906943_u64) << 8) |
                ((values[13] & 274877906943_u64) << 46)).to_u64
    bytes[8] = (((values[13] & 274877906943_u64) >> 18) |
                ((values[14] & 274877906943_u64) << 20) |
                ((values[15] & 274877906943_u64) << 58)).to_u64
    bytes[9] = (((values[15] & 274877906943_u64) >> 6) |
                ((values[16] & 274877906943_u64) << 32)).to_u64
    bytes[10] = (((values[16] & 274877906943_u64) >> 32) |
                 ((values[17] & 274877906943_u64) << 6) |
                 ((values[18] & 274877906943_u64) << 44)).to_u64
    bytes[11] = (((values[18] & 274877906943_u64) >> 20) |
                 ((values[19] & 274877906943_u64) << 18) |
                 ((values[20] & 274877906943_u64) << 56)).to_u64
    bytes[12] = (((values[20] & 274877906943_u64) >> 8) |
                 ((values[21] & 274877906943_u64) << 30)).to_u64
    bytes[13] = (((values[21] & 274877906943_u64) >> 34) |
                 ((values[22] & 274877906943_u64) << 4) |
                 ((values[23] & 274877906943_u64) << 42)).to_u64
    bytes[14] = (((values[23] & 274877906943_u64) >> 22) |
                 ((values[24] & 274877906943_u64) << 16) |
                 ((values[25] & 274877906943_u64) << 54)).to_u64
    bytes[15] = (((values[25] & 274877906943_u64) >> 10) |
                 ((values[26] & 274877906943_u64) << 28)).to_u64
    bytes[16] = (((values[26] & 274877906943_u64) >> 36) |
                 ((values[27] & 274877906943_u64) << 2) |
                 ((values[28] & 274877906943_u64) << 40)).to_u64
    bytes[17] = (((values[28] & 274877906943_u64) >> 24) |
                 ((values[29] & 274877906943_u64) << 14) |
                 ((values[30] & 274877906943_u64) << 52)).to_u64
    bytes[18] = (((values[30] & 274877906943_u64) >> 12) |
                 ((values[31] & 274877906943_u64) << 26)).to_u64
    bytes[19] = (((values[32] & 274877906943_u64) << 0) |
                 ((values[33] & 274877906943_u64) << 38)).to_u64
    bytes[20] = (((values[33] & 274877906943_u64) >> 26) |
                 ((values[34] & 274877906943_u64) << 12) |
                 ((values[35] & 274877906943_u64) << 50)).to_u64
    bytes[21] = (((values[35] & 274877906943_u64) >> 14) |
                 ((values[36] & 274877906943_u64) << 24) |
                 ((values[37] & 274877906943_u64) << 62)).to_u64
    bytes[22] = (((values[37] & 274877906943_u64) >> 2) |
                 ((values[38] & 274877906943_u64) << 36)).to_u64
    bytes[23] = (((values[38] & 274877906943_u64) >> 28) |
                 ((values[39] & 274877906943_u64) << 10) |
                 ((values[40] & 274877906943_u64) << 48)).to_u64
    bytes[24] = (((values[40] & 274877906943_u64) >> 16) |
                 ((values[41] & 274877906943_u64) << 22) |
                 ((values[42] & 274877906943_u64) << 60)).to_u64
    bytes[25] = (((values[42] & 274877906943_u64) >> 4) |
                 ((values[43] & 274877906943_u64) << 34)).to_u64
    bytes[26] = (((values[43] & 274877906943_u64) >> 30) |
                 ((values[44] & 274877906943_u64) << 8) |
                 ((values[45] & 274877906943_u64) << 46)).to_u64
    bytes[27] = (((values[45] & 274877906943_u64) >> 18) |
                 ((values[46] & 274877906943_u64) << 20) |
                 ((values[47] & 274877906943_u64) << 58)).to_u64
    bytes[28] = (((values[47] & 274877906943_u64) >> 6) |
                 ((values[48] & 274877906943_u64) << 32)).to_u64
    bytes[29] = (((values[48] & 274877906943_u64) >> 32) |
                 ((values[49] & 274877906943_u64) << 6) |
                 ((values[50] & 274877906943_u64) << 44)).to_u64
    bytes[30] = (((values[50] & 274877906943_u64) >> 20) |
                 ((values[51] & 274877906943_u64) << 18) |
                 ((values[52] & 274877906943_u64) << 56)).to_u64
    bytes[31] = (((values[52] & 274877906943_u64) >> 8) |
                 ((values[53] & 274877906943_u64) << 30)).to_u64
    bytes[32] = (((values[53] & 274877906943_u64) >> 34) |
                 ((values[54] & 274877906943_u64) << 4) |
                 ((values[55] & 274877906943_u64) << 42)).to_u64
    bytes[33] = (((values[55] & 274877906943_u64) >> 22) |
                 ((values[56] & 274877906943_u64) << 16) |
                 ((values[57] & 274877906943_u64) << 54)).to_u64
    bytes[34] = (((values[57] & 274877906943_u64) >> 10) |
                 ((values[58] & 274877906943_u64) << 28)).to_u64
    bytes[35] = (((values[58] & 274877906943_u64) >> 36) |
                 ((values[59] & 274877906943_u64) << 2) |
                 ((values[60] & 274877906943_u64) << 40)).to_u64
    bytes[36] = (((values[60] & 274877906943_u64) >> 24) |
                 ((values[61] & 274877906943_u64) << 14) |
                 ((values[62] & 274877906943_u64) << 52)).to_u64
    bytes[37] = (((values[62] & 274877906943_u64) >> 12) |
                 ((values[63] & 274877906943_u64) << 26)).to_u64
    bytes
  end

  def self.unpack38(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 274877906943_u64)).to_i64
    values[1] = (((bytes[0] >> 38) & 274877906943_u64) | ((bytes[1] & 4095_u64) << 26)).to_i64
    values[2] = (((bytes[1] >> 12) & 274877906943_u64)).to_i64
    values[3] = (((bytes[1] >> 50) & 274877906943_u64) | ((bytes[2] & 16777215_u64) << 14)).to_i64
    values[4] = (((bytes[2] >> 24) & 274877906943_u64)).to_i64
    values[5] = (((bytes[2] >> 62) & 274877906943_u64) | ((bytes[3] & 68719476735_u64) << 2)).to_i64
    values[6] = (((bytes[3] >> 36) & 274877906943_u64) | ((bytes[4] & 1023_u64) << 28)).to_i64
    values[7] = (((bytes[4] >> 10) & 274877906943_u64)).to_i64
    values[8] = (((bytes[4] >> 48) & 274877906943_u64) | ((bytes[5] & 4194303_u64) << 16)).to_i64
    values[9] = (((bytes[5] >> 22) & 274877906943_u64)).to_i64
    values[10] = (((bytes[5] >> 60) & 274877906943_u64) | ((bytes[6] & 17179869183_u64) << 4)).to_i64
    values[11] = (((bytes[6] >> 34) & 274877906943_u64) | ((bytes[7] & 255_u64) << 30)).to_i64
    values[12] = (((bytes[7] >> 8) & 274877906943_u64)).to_i64
    values[13] = (((bytes[7] >> 46) & 274877906943_u64) | ((bytes[8] & 1048575_u64) << 18)).to_i64
    values[14] = (((bytes[8] >> 20) & 274877906943_u64)).to_i64
    values[15] = (((bytes[8] >> 58) & 274877906943_u64) | ((bytes[9] & 4294967295_u64) << 6)).to_i64
    values[16] = (((bytes[9] >> 32) & 274877906943_u64) | ((bytes[10] & 63_u64) << 32)).to_i64
    values[17] = (((bytes[10] >> 6) & 274877906943_u64)).to_i64
    values[18] = (((bytes[10] >> 44) & 274877906943_u64) | ((bytes[11] & 262143_u64) << 20)).to_i64
    values[19] = (((bytes[11] >> 18) & 274877906943_u64)).to_i64
    values[20] = (((bytes[11] >> 56) & 274877906943_u64) | ((bytes[12] & 1073741823_u64) << 8)).to_i64
    values[21] = (((bytes[12] >> 30) & 274877906943_u64) | ((bytes[13] & 15_u64) << 34)).to_i64
    values[22] = (((bytes[13] >> 4) & 274877906943_u64)).to_i64
    values[23] = (((bytes[13] >> 42) & 274877906943_u64) | ((bytes[14] & 65535_u64) << 22)).to_i64
    values[24] = (((bytes[14] >> 16) & 274877906943_u64)).to_i64
    values[25] = (((bytes[14] >> 54) & 274877906943_u64) | ((bytes[15] & 268435455_u64) << 10)).to_i64
    values[26] = (((bytes[15] >> 28) & 274877906943_u64) | ((bytes[16] & 3_u64) << 36)).to_i64
    values[27] = (((bytes[16] >> 2) & 274877906943_u64)).to_i64
    values[28] = (((bytes[16] >> 40) & 274877906943_u64) | ((bytes[17] & 16383_u64) << 24)).to_i64
    values[29] = (((bytes[17] >> 14) & 274877906943_u64)).to_i64
    values[30] = (((bytes[17] >> 52) & 274877906943_u64) | ((bytes[18] & 67108863_u64) << 12)).to_i64
    values[31] = (((bytes[18] >> 26) & 274877906943_u64)).to_i64
    values[32] = (((bytes[19] >> 0) & 274877906943_u64)).to_i64
    values[33] = (((bytes[19] >> 38) & 274877906943_u64) | ((bytes[20] & 4095_u64) << 26)).to_i64
    values[34] = (((bytes[20] >> 12) & 274877906943_u64)).to_i64
    values[35] = (((bytes[20] >> 50) & 274877906943_u64) | ((bytes[21] & 16777215_u64) << 14)).to_i64
    values[36] = (((bytes[21] >> 24) & 274877906943_u64)).to_i64
    values[37] = (((bytes[21] >> 62) & 274877906943_u64) | ((bytes[22] & 68719476735_u64) << 2)).to_i64
    values[38] = (((bytes[22] >> 36) & 274877906943_u64) | ((bytes[23] & 1023_u64) << 28)).to_i64
    values[39] = (((bytes[23] >> 10) & 274877906943_u64)).to_i64
    values[40] = (((bytes[23] >> 48) & 274877906943_u64) | ((bytes[24] & 4194303_u64) << 16)).to_i64
    values[41] = (((bytes[24] >> 22) & 274877906943_u64)).to_i64
    values[42] = (((bytes[24] >> 60) & 274877906943_u64) | ((bytes[25] & 17179869183_u64) << 4)).to_i64
    values[43] = (((bytes[25] >> 34) & 274877906943_u64) | ((bytes[26] & 255_u64) << 30)).to_i64
    values[44] = (((bytes[26] >> 8) & 274877906943_u64)).to_i64
    values[45] = (((bytes[26] >> 46) & 274877906943_u64) | ((bytes[27] & 1048575_u64) << 18)).to_i64
    values[46] = (((bytes[27] >> 20) & 274877906943_u64)).to_i64
    values[47] = (((bytes[27] >> 58) & 274877906943_u64) | ((bytes[28] & 4294967295_u64) << 6)).to_i64
    values[48] = (((bytes[28] >> 32) & 274877906943_u64) | ((bytes[29] & 63_u64) << 32)).to_i64
    values[49] = (((bytes[29] >> 6) & 274877906943_u64)).to_i64
    values[50] = (((bytes[29] >> 44) & 274877906943_u64) | ((bytes[30] & 262143_u64) << 20)).to_i64
    values[51] = (((bytes[30] >> 18) & 274877906943_u64)).to_i64
    values[52] = (((bytes[30] >> 56) & 274877906943_u64) | ((bytes[31] & 1073741823_u64) << 8)).to_i64
    values[53] = (((bytes[31] >> 30) & 274877906943_u64) | ((bytes[32] & 15_u64) << 34)).to_i64
    values[54] = (((bytes[32] >> 4) & 274877906943_u64)).to_i64
    values[55] = (((bytes[32] >> 42) & 274877906943_u64) | ((bytes[33] & 65535_u64) << 22)).to_i64
    values[56] = (((bytes[33] >> 16) & 274877906943_u64)).to_i64
    values[57] = (((bytes[33] >> 54) & 274877906943_u64) | ((bytes[34] & 268435455_u64) << 10)).to_i64
    values[58] = (((bytes[34] >> 28) & 274877906943_u64) | ((bytes[35] & 3_u64) << 36)).to_i64
    values[59] = (((bytes[35] >> 2) & 274877906943_u64)).to_i64
    values[60] = (((bytes[35] >> 40) & 274877906943_u64) | ((bytes[36] & 16383_u64) << 24)).to_i64
    values[61] = (((bytes[36] >> 14) & 274877906943_u64)).to_i64
    values[62] = (((bytes[36] >> 52) & 274877906943_u64) | ((bytes[37] & 67108863_u64) << 12)).to_i64
    values[63] = (((bytes[37] >> 26) & 274877906943_u64)).to_i64
    values
  end

  def self.pack39(values)
    bytes = Slice(UInt64).new(39, 0_u64)
    bytes[0] = (((values[0] & 549755813887_u64) << 0) |
                ((values[1] & 549755813887_u64) << 39)).to_u64
    bytes[1] = (((values[1] & 549755813887_u64) >> 25) |
                ((values[2] & 549755813887_u64) << 14) |
                ((values[3] & 549755813887_u64) << 53)).to_u64
    bytes[2] = (((values[3] & 549755813887_u64) >> 11) |
                ((values[4] & 549755813887_u64) << 28)).to_u64
    bytes[3] = (((values[4] & 549755813887_u64) >> 36) |
                ((values[5] & 549755813887_u64) << 3) |
                ((values[6] & 549755813887_u64) << 42)).to_u64
    bytes[4] = (((values[6] & 549755813887_u64) >> 22) |
                ((values[7] & 549755813887_u64) << 17) |
                ((values[8] & 549755813887_u64) << 56)).to_u64
    bytes[5] = (((values[8] & 549755813887_u64) >> 8) |
                ((values[9] & 549755813887_u64) << 31)).to_u64
    bytes[6] = (((values[9] & 549755813887_u64) >> 33) |
                ((values[10] & 549755813887_u64) << 6) |
                ((values[11] & 549755813887_u64) << 45)).to_u64
    bytes[7] = (((values[11] & 549755813887_u64) >> 19) |
                ((values[12] & 549755813887_u64) << 20) |
                ((values[13] & 549755813887_u64) << 59)).to_u64
    bytes[8] = (((values[13] & 549755813887_u64) >> 5) |
                ((values[14] & 549755813887_u64) << 34)).to_u64
    bytes[9] = (((values[14] & 549755813887_u64) >> 30) |
                ((values[15] & 549755813887_u64) << 9) |
                ((values[16] & 549755813887_u64) << 48)).to_u64
    bytes[10] = (((values[16] & 549755813887_u64) >> 16) |
                 ((values[17] & 549755813887_u64) << 23) |
                 ((values[18] & 549755813887_u64) << 62)).to_u64
    bytes[11] = (((values[18] & 549755813887_u64) >> 2) |
                 ((values[19] & 549755813887_u64) << 37)).to_u64
    bytes[12] = (((values[19] & 549755813887_u64) >> 27) |
                 ((values[20] & 549755813887_u64) << 12) |
                 ((values[21] & 549755813887_u64) << 51)).to_u64
    bytes[13] = (((values[21] & 549755813887_u64) >> 13) |
                 ((values[22] & 549755813887_u64) << 26)).to_u64
    bytes[14] = (((values[22] & 549755813887_u64) >> 38) |
                 ((values[23] & 549755813887_u64) << 1) |
                 ((values[24] & 549755813887_u64) << 40)).to_u64
    bytes[15] = (((values[24] & 549755813887_u64) >> 24) |
                 ((values[25] & 549755813887_u64) << 15) |
                 ((values[26] & 549755813887_u64) << 54)).to_u64
    bytes[16] = (((values[26] & 549755813887_u64) >> 10) |
                 ((values[27] & 549755813887_u64) << 29)).to_u64
    bytes[17] = (((values[27] & 549755813887_u64) >> 35) |
                 ((values[28] & 549755813887_u64) << 4) |
                 ((values[29] & 549755813887_u64) << 43)).to_u64
    bytes[18] = (((values[29] & 549755813887_u64) >> 21) |
                 ((values[30] & 549755813887_u64) << 18) |
                 ((values[31] & 549755813887_u64) << 57)).to_u64
    bytes[19] = (((values[31] & 549755813887_u64) >> 7) |
                 ((values[32] & 549755813887_u64) << 32)).to_u64
    bytes[20] = (((values[32] & 549755813887_u64) >> 32) |
                 ((values[33] & 549755813887_u64) << 7) |
                 ((values[34] & 549755813887_u64) << 46)).to_u64
    bytes[21] = (((values[34] & 549755813887_u64) >> 18) |
                 ((values[35] & 549755813887_u64) << 21) |
                 ((values[36] & 549755813887_u64) << 60)).to_u64
    bytes[22] = (((values[36] & 549755813887_u64) >> 4) |
                 ((values[37] & 549755813887_u64) << 35)).to_u64
    bytes[23] = (((values[37] & 549755813887_u64) >> 29) |
                 ((values[38] & 549755813887_u64) << 10) |
                 ((values[39] & 549755813887_u64) << 49)).to_u64
    bytes[24] = (((values[39] & 549755813887_u64) >> 15) |
                 ((values[40] & 549755813887_u64) << 24) |
                 ((values[41] & 549755813887_u64) << 63)).to_u64
    bytes[25] = (((values[41] & 549755813887_u64) >> 1) |
                 ((values[42] & 549755813887_u64) << 38)).to_u64
    bytes[26] = (((values[42] & 549755813887_u64) >> 26) |
                 ((values[43] & 549755813887_u64) << 13) |
                 ((values[44] & 549755813887_u64) << 52)).to_u64
    bytes[27] = (((values[44] & 549755813887_u64) >> 12) |
                 ((values[45] & 549755813887_u64) << 27)).to_u64
    bytes[28] = (((values[45] & 549755813887_u64) >> 37) |
                 ((values[46] & 549755813887_u64) << 2) |
                 ((values[47] & 549755813887_u64) << 41)).to_u64
    bytes[29] = (((values[47] & 549755813887_u64) >> 23) |
                 ((values[48] & 549755813887_u64) << 16) |
                 ((values[49] & 549755813887_u64) << 55)).to_u64
    bytes[30] = (((values[49] & 549755813887_u64) >> 9) |
                 ((values[50] & 549755813887_u64) << 30)).to_u64
    bytes[31] = (((values[50] & 549755813887_u64) >> 34) |
                 ((values[51] & 549755813887_u64) << 5) |
                 ((values[52] & 549755813887_u64) << 44)).to_u64
    bytes[32] = (((values[52] & 549755813887_u64) >> 20) |
                 ((values[53] & 549755813887_u64) << 19) |
                 ((values[54] & 549755813887_u64) << 58)).to_u64
    bytes[33] = (((values[54] & 549755813887_u64) >> 6) |
                 ((values[55] & 549755813887_u64) << 33)).to_u64
    bytes[34] = (((values[55] & 549755813887_u64) >> 31) |
                 ((values[56] & 549755813887_u64) << 8) |
                 ((values[57] & 549755813887_u64) << 47)).to_u64
    bytes[35] = (((values[57] & 549755813887_u64) >> 17) |
                 ((values[58] & 549755813887_u64) << 22) |
                 ((values[59] & 549755813887_u64) << 61)).to_u64
    bytes[36] = (((values[59] & 549755813887_u64) >> 3) |
                 ((values[60] & 549755813887_u64) << 36)).to_u64
    bytes[37] = (((values[60] & 549755813887_u64) >> 28) |
                 ((values[61] & 549755813887_u64) << 11) |
                 ((values[62] & 549755813887_u64) << 50)).to_u64
    bytes[38] = (((values[62] & 549755813887_u64) >> 14) |
                 ((values[63] & 549755813887_u64) << 25)).to_u64
    bytes
  end

  def self.unpack39(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 549755813887_u64)).to_i64
    values[1] = (((bytes[0] >> 39) & 549755813887_u64) | ((bytes[1] & 16383_u64) << 25)).to_i64
    values[2] = (((bytes[1] >> 14) & 549755813887_u64)).to_i64
    values[3] = (((bytes[1] >> 53) & 549755813887_u64) | ((bytes[2] & 268435455_u64) << 11)).to_i64
    values[4] = (((bytes[2] >> 28) & 549755813887_u64) | ((bytes[3] & 7_u64) << 36)).to_i64
    values[5] = (((bytes[3] >> 3) & 549755813887_u64)).to_i64
    values[6] = (((bytes[3] >> 42) & 549755813887_u64) | ((bytes[4] & 131071_u64) << 22)).to_i64
    values[7] = (((bytes[4] >> 17) & 549755813887_u64)).to_i64
    values[8] = (((bytes[4] >> 56) & 549755813887_u64) | ((bytes[5] & 2147483647_u64) << 8)).to_i64
    values[9] = (((bytes[5] >> 31) & 549755813887_u64) | ((bytes[6] & 63_u64) << 33)).to_i64
    values[10] = (((bytes[6] >> 6) & 549755813887_u64)).to_i64
    values[11] = (((bytes[6] >> 45) & 549755813887_u64) | ((bytes[7] & 1048575_u64) << 19)).to_i64
    values[12] = (((bytes[7] >> 20) & 549755813887_u64)).to_i64
    values[13] = (((bytes[7] >> 59) & 549755813887_u64) | ((bytes[8] & 17179869183_u64) << 5)).to_i64
    values[14] = (((bytes[8] >> 34) & 549755813887_u64) | ((bytes[9] & 511_u64) << 30)).to_i64
    values[15] = (((bytes[9] >> 9) & 549755813887_u64)).to_i64
    values[16] = (((bytes[9] >> 48) & 549755813887_u64) | ((bytes[10] & 8388607_u64) << 16)).to_i64
    values[17] = (((bytes[10] >> 23) & 549755813887_u64)).to_i64
    values[18] = (((bytes[10] >> 62) & 549755813887_u64) | ((bytes[11] & 137438953471_u64) << 2)).to_i64
    values[19] = (((bytes[11] >> 37) & 549755813887_u64) | ((bytes[12] & 4095_u64) << 27)).to_i64
    values[20] = (((bytes[12] >> 12) & 549755813887_u64)).to_i64
    values[21] = (((bytes[12] >> 51) & 549755813887_u64) | ((bytes[13] & 67108863_u64) << 13)).to_i64
    values[22] = (((bytes[13] >> 26) & 549755813887_u64) | ((bytes[14] & 1_u64) << 38)).to_i64
    values[23] = (((bytes[14] >> 1) & 549755813887_u64)).to_i64
    values[24] = (((bytes[14] >> 40) & 549755813887_u64) | ((bytes[15] & 32767_u64) << 24)).to_i64
    values[25] = (((bytes[15] >> 15) & 549755813887_u64)).to_i64
    values[26] = (((bytes[15] >> 54) & 549755813887_u64) | ((bytes[16] & 536870911_u64) << 10)).to_i64
    values[27] = (((bytes[16] >> 29) & 549755813887_u64) | ((bytes[17] & 15_u64) << 35)).to_i64
    values[28] = (((bytes[17] >> 4) & 549755813887_u64)).to_i64
    values[29] = (((bytes[17] >> 43) & 549755813887_u64) | ((bytes[18] & 262143_u64) << 21)).to_i64
    values[30] = (((bytes[18] >> 18) & 549755813887_u64)).to_i64
    values[31] = (((bytes[18] >> 57) & 549755813887_u64) | ((bytes[19] & 4294967295_u64) << 7)).to_i64
    values[32] = (((bytes[19] >> 32) & 549755813887_u64) | ((bytes[20] & 127_u64) << 32)).to_i64
    values[33] = (((bytes[20] >> 7) & 549755813887_u64)).to_i64
    values[34] = (((bytes[20] >> 46) & 549755813887_u64) | ((bytes[21] & 2097151_u64) << 18)).to_i64
    values[35] = (((bytes[21] >> 21) & 549755813887_u64)).to_i64
    values[36] = (((bytes[21] >> 60) & 549755813887_u64) | ((bytes[22] & 34359738367_u64) << 4)).to_i64
    values[37] = (((bytes[22] >> 35) & 549755813887_u64) | ((bytes[23] & 1023_u64) << 29)).to_i64
    values[38] = (((bytes[23] >> 10) & 549755813887_u64)).to_i64
    values[39] = (((bytes[23] >> 49) & 549755813887_u64) | ((bytes[24] & 16777215_u64) << 15)).to_i64
    values[40] = (((bytes[24] >> 24) & 549755813887_u64)).to_i64
    values[41] = (((bytes[24] >> 63) & 549755813887_u64) | ((bytes[25] & 274877906943_u64) << 1)).to_i64
    values[42] = (((bytes[25] >> 38) & 549755813887_u64) | ((bytes[26] & 8191_u64) << 26)).to_i64
    values[43] = (((bytes[26] >> 13) & 549755813887_u64)).to_i64
    values[44] = (((bytes[26] >> 52) & 549755813887_u64) | ((bytes[27] & 134217727_u64) << 12)).to_i64
    values[45] = (((bytes[27] >> 27) & 549755813887_u64) | ((bytes[28] & 3_u64) << 37)).to_i64
    values[46] = (((bytes[28] >> 2) & 549755813887_u64)).to_i64
    values[47] = (((bytes[28] >> 41) & 549755813887_u64) | ((bytes[29] & 65535_u64) << 23)).to_i64
    values[48] = (((bytes[29] >> 16) & 549755813887_u64)).to_i64
    values[49] = (((bytes[29] >> 55) & 549755813887_u64) | ((bytes[30] & 1073741823_u64) << 9)).to_i64
    values[50] = (((bytes[30] >> 30) & 549755813887_u64) | ((bytes[31] & 31_u64) << 34)).to_i64
    values[51] = (((bytes[31] >> 5) & 549755813887_u64)).to_i64
    values[52] = (((bytes[31] >> 44) & 549755813887_u64) | ((bytes[32] & 524287_u64) << 20)).to_i64
    values[53] = (((bytes[32] >> 19) & 549755813887_u64)).to_i64
    values[54] = (((bytes[32] >> 58) & 549755813887_u64) | ((bytes[33] & 8589934591_u64) << 6)).to_i64
    values[55] = (((bytes[33] >> 33) & 549755813887_u64) | ((bytes[34] & 255_u64) << 31)).to_i64
    values[56] = (((bytes[34] >> 8) & 549755813887_u64)).to_i64
    values[57] = (((bytes[34] >> 47) & 549755813887_u64) | ((bytes[35] & 4194303_u64) << 17)).to_i64
    values[58] = (((bytes[35] >> 22) & 549755813887_u64)).to_i64
    values[59] = (((bytes[35] >> 61) & 549755813887_u64) | ((bytes[36] & 68719476735_u64) << 3)).to_i64
    values[60] = (((bytes[36] >> 36) & 549755813887_u64) | ((bytes[37] & 2047_u64) << 28)).to_i64
    values[61] = (((bytes[37] >> 11) & 549755813887_u64)).to_i64
    values[62] = (((bytes[37] >> 50) & 549755813887_u64) | ((bytes[38] & 33554431_u64) << 14)).to_i64
    values[63] = (((bytes[38] >> 25) & 549755813887_u64)).to_i64
    values
  end

  def self.pack40(values)
    bytes = Slice(UInt64).new(40, 0_u64)
    bytes[0] = (((values[0] & 1099511627775_u64) << 0) |
                ((values[1] & 1099511627775_u64) << 40)).to_u64
    bytes[1] = (((values[1] & 1099511627775_u64) >> 24) |
                ((values[2] & 1099511627775_u64) << 16) |
                ((values[3] & 1099511627775_u64) << 56)).to_u64
    bytes[2] = (((values[3] & 1099511627775_u64) >> 8) |
                ((values[4] & 1099511627775_u64) << 32)).to_u64
    bytes[3] = (((values[4] & 1099511627775_u64) >> 32) |
                ((values[5] & 1099511627775_u64) << 8) |
                ((values[6] & 1099511627775_u64) << 48)).to_u64
    bytes[4] = (((values[6] & 1099511627775_u64) >> 16) |
                ((values[7] & 1099511627775_u64) << 24)).to_u64
    bytes[5] = (((values[8] & 1099511627775_u64) << 0) |
                ((values[9] & 1099511627775_u64) << 40)).to_u64
    bytes[6] = (((values[9] & 1099511627775_u64) >> 24) |
                ((values[10] & 1099511627775_u64) << 16) |
                ((values[11] & 1099511627775_u64) << 56)).to_u64
    bytes[7] = (((values[11] & 1099511627775_u64) >> 8) |
                ((values[12] & 1099511627775_u64) << 32)).to_u64
    bytes[8] = (((values[12] & 1099511627775_u64) >> 32) |
                ((values[13] & 1099511627775_u64) << 8) |
                ((values[14] & 1099511627775_u64) << 48)).to_u64
    bytes[9] = (((values[14] & 1099511627775_u64) >> 16) |
                ((values[15] & 1099511627775_u64) << 24)).to_u64
    bytes[10] = (((values[16] & 1099511627775_u64) << 0) |
                 ((values[17] & 1099511627775_u64) << 40)).to_u64
    bytes[11] = (((values[17] & 1099511627775_u64) >> 24) |
                 ((values[18] & 1099511627775_u64) << 16) |
                 ((values[19] & 1099511627775_u64) << 56)).to_u64
    bytes[12] = (((values[19] & 1099511627775_u64) >> 8) |
                 ((values[20] & 1099511627775_u64) << 32)).to_u64
    bytes[13] = (((values[20] & 1099511627775_u64) >> 32) |
                 ((values[21] & 1099511627775_u64) << 8) |
                 ((values[22] & 1099511627775_u64) << 48)).to_u64
    bytes[14] = (((values[22] & 1099511627775_u64) >> 16) |
                 ((values[23] & 1099511627775_u64) << 24)).to_u64
    bytes[15] = (((values[24] & 1099511627775_u64) << 0) |
                 ((values[25] & 1099511627775_u64) << 40)).to_u64
    bytes[16] = (((values[25] & 1099511627775_u64) >> 24) |
                 ((values[26] & 1099511627775_u64) << 16) |
                 ((values[27] & 1099511627775_u64) << 56)).to_u64
    bytes[17] = (((values[27] & 1099511627775_u64) >> 8) |
                 ((values[28] & 1099511627775_u64) << 32)).to_u64
    bytes[18] = (((values[28] & 1099511627775_u64) >> 32) |
                 ((values[29] & 1099511627775_u64) << 8) |
                 ((values[30] & 1099511627775_u64) << 48)).to_u64
    bytes[19] = (((values[30] & 1099511627775_u64) >> 16) |
                 ((values[31] & 1099511627775_u64) << 24)).to_u64
    bytes[20] = (((values[32] & 1099511627775_u64) << 0) |
                 ((values[33] & 1099511627775_u64) << 40)).to_u64
    bytes[21] = (((values[33] & 1099511627775_u64) >> 24) |
                 ((values[34] & 1099511627775_u64) << 16) |
                 ((values[35] & 1099511627775_u64) << 56)).to_u64
    bytes[22] = (((values[35] & 1099511627775_u64) >> 8) |
                 ((values[36] & 1099511627775_u64) << 32)).to_u64
    bytes[23] = (((values[36] & 1099511627775_u64) >> 32) |
                 ((values[37] & 1099511627775_u64) << 8) |
                 ((values[38] & 1099511627775_u64) << 48)).to_u64
    bytes[24] = (((values[38] & 1099511627775_u64) >> 16) |
                 ((values[39] & 1099511627775_u64) << 24)).to_u64
    bytes[25] = (((values[40] & 1099511627775_u64) << 0) |
                 ((values[41] & 1099511627775_u64) << 40)).to_u64
    bytes[26] = (((values[41] & 1099511627775_u64) >> 24) |
                 ((values[42] & 1099511627775_u64) << 16) |
                 ((values[43] & 1099511627775_u64) << 56)).to_u64
    bytes[27] = (((values[43] & 1099511627775_u64) >> 8) |
                 ((values[44] & 1099511627775_u64) << 32)).to_u64
    bytes[28] = (((values[44] & 1099511627775_u64) >> 32) |
                 ((values[45] & 1099511627775_u64) << 8) |
                 ((values[46] & 1099511627775_u64) << 48)).to_u64
    bytes[29] = (((values[46] & 1099511627775_u64) >> 16) |
                 ((values[47] & 1099511627775_u64) << 24)).to_u64
    bytes[30] = (((values[48] & 1099511627775_u64) << 0) |
                 ((values[49] & 1099511627775_u64) << 40)).to_u64
    bytes[31] = (((values[49] & 1099511627775_u64) >> 24) |
                 ((values[50] & 1099511627775_u64) << 16) |
                 ((values[51] & 1099511627775_u64) << 56)).to_u64
    bytes[32] = (((values[51] & 1099511627775_u64) >> 8) |
                 ((values[52] & 1099511627775_u64) << 32)).to_u64
    bytes[33] = (((values[52] & 1099511627775_u64) >> 32) |
                 ((values[53] & 1099511627775_u64) << 8) |
                 ((values[54] & 1099511627775_u64) << 48)).to_u64
    bytes[34] = (((values[54] & 1099511627775_u64) >> 16) |
                 ((values[55] & 1099511627775_u64) << 24)).to_u64
    bytes[35] = (((values[56] & 1099511627775_u64) << 0) |
                 ((values[57] & 1099511627775_u64) << 40)).to_u64
    bytes[36] = (((values[57] & 1099511627775_u64) >> 24) |
                 ((values[58] & 1099511627775_u64) << 16) |
                 ((values[59] & 1099511627775_u64) << 56)).to_u64
    bytes[37] = (((values[59] & 1099511627775_u64) >> 8) |
                 ((values[60] & 1099511627775_u64) << 32)).to_u64
    bytes[38] = (((values[60] & 1099511627775_u64) >> 32) |
                 ((values[61] & 1099511627775_u64) << 8) |
                 ((values[62] & 1099511627775_u64) << 48)).to_u64
    bytes[39] = (((values[62] & 1099511627775_u64) >> 16) |
                 ((values[63] & 1099511627775_u64) << 24)).to_u64
    bytes
  end

  def self.unpack40(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1099511627775_u64)).to_i64
    values[1] = (((bytes[0] >> 40) & 1099511627775_u64) | ((bytes[1] & 65535_u64) << 24)).to_i64
    values[2] = (((bytes[1] >> 16) & 1099511627775_u64)).to_i64
    values[3] = (((bytes[1] >> 56) & 1099511627775_u64) | ((bytes[2] & 4294967295_u64) << 8)).to_i64
    values[4] = (((bytes[2] >> 32) & 1099511627775_u64) | ((bytes[3] & 255_u64) << 32)).to_i64
    values[5] = (((bytes[3] >> 8) & 1099511627775_u64)).to_i64
    values[6] = (((bytes[3] >> 48) & 1099511627775_u64) | ((bytes[4] & 16777215_u64) << 16)).to_i64
    values[7] = (((bytes[4] >> 24) & 1099511627775_u64)).to_i64
    values[8] = (((bytes[5] >> 0) & 1099511627775_u64)).to_i64
    values[9] = (((bytes[5] >> 40) & 1099511627775_u64) | ((bytes[6] & 65535_u64) << 24)).to_i64
    values[10] = (((bytes[6] >> 16) & 1099511627775_u64)).to_i64
    values[11] = (((bytes[6] >> 56) & 1099511627775_u64) | ((bytes[7] & 4294967295_u64) << 8)).to_i64
    values[12] = (((bytes[7] >> 32) & 1099511627775_u64) | ((bytes[8] & 255_u64) << 32)).to_i64
    values[13] = (((bytes[8] >> 8) & 1099511627775_u64)).to_i64
    values[14] = (((bytes[8] >> 48) & 1099511627775_u64) | ((bytes[9] & 16777215_u64) << 16)).to_i64
    values[15] = (((bytes[9] >> 24) & 1099511627775_u64)).to_i64
    values[16] = (((bytes[10] >> 0) & 1099511627775_u64)).to_i64
    values[17] = (((bytes[10] >> 40) & 1099511627775_u64) | ((bytes[11] & 65535_u64) << 24)).to_i64
    values[18] = (((bytes[11] >> 16) & 1099511627775_u64)).to_i64
    values[19] = (((bytes[11] >> 56) & 1099511627775_u64) | ((bytes[12] & 4294967295_u64) << 8)).to_i64
    values[20] = (((bytes[12] >> 32) & 1099511627775_u64) | ((bytes[13] & 255_u64) << 32)).to_i64
    values[21] = (((bytes[13] >> 8) & 1099511627775_u64)).to_i64
    values[22] = (((bytes[13] >> 48) & 1099511627775_u64) | ((bytes[14] & 16777215_u64) << 16)).to_i64
    values[23] = (((bytes[14] >> 24) & 1099511627775_u64)).to_i64
    values[24] = (((bytes[15] >> 0) & 1099511627775_u64)).to_i64
    values[25] = (((bytes[15] >> 40) & 1099511627775_u64) | ((bytes[16] & 65535_u64) << 24)).to_i64
    values[26] = (((bytes[16] >> 16) & 1099511627775_u64)).to_i64
    values[27] = (((bytes[16] >> 56) & 1099511627775_u64) | ((bytes[17] & 4294967295_u64) << 8)).to_i64
    values[28] = (((bytes[17] >> 32) & 1099511627775_u64) | ((bytes[18] & 255_u64) << 32)).to_i64
    values[29] = (((bytes[18] >> 8) & 1099511627775_u64)).to_i64
    values[30] = (((bytes[18] >> 48) & 1099511627775_u64) | ((bytes[19] & 16777215_u64) << 16)).to_i64
    values[31] = (((bytes[19] >> 24) & 1099511627775_u64)).to_i64
    values[32] = (((bytes[20] >> 0) & 1099511627775_u64)).to_i64
    values[33] = (((bytes[20] >> 40) & 1099511627775_u64) | ((bytes[21] & 65535_u64) << 24)).to_i64
    values[34] = (((bytes[21] >> 16) & 1099511627775_u64)).to_i64
    values[35] = (((bytes[21] >> 56) & 1099511627775_u64) | ((bytes[22] & 4294967295_u64) << 8)).to_i64
    values[36] = (((bytes[22] >> 32) & 1099511627775_u64) | ((bytes[23] & 255_u64) << 32)).to_i64
    values[37] = (((bytes[23] >> 8) & 1099511627775_u64)).to_i64
    values[38] = (((bytes[23] >> 48) & 1099511627775_u64) | ((bytes[24] & 16777215_u64) << 16)).to_i64
    values[39] = (((bytes[24] >> 24) & 1099511627775_u64)).to_i64
    values[40] = (((bytes[25] >> 0) & 1099511627775_u64)).to_i64
    values[41] = (((bytes[25] >> 40) & 1099511627775_u64) | ((bytes[26] & 65535_u64) << 24)).to_i64
    values[42] = (((bytes[26] >> 16) & 1099511627775_u64)).to_i64
    values[43] = (((bytes[26] >> 56) & 1099511627775_u64) | ((bytes[27] & 4294967295_u64) << 8)).to_i64
    values[44] = (((bytes[27] >> 32) & 1099511627775_u64) | ((bytes[28] & 255_u64) << 32)).to_i64
    values[45] = (((bytes[28] >> 8) & 1099511627775_u64)).to_i64
    values[46] = (((bytes[28] >> 48) & 1099511627775_u64) | ((bytes[29] & 16777215_u64) << 16)).to_i64
    values[47] = (((bytes[29] >> 24) & 1099511627775_u64)).to_i64
    values[48] = (((bytes[30] >> 0) & 1099511627775_u64)).to_i64
    values[49] = (((bytes[30] >> 40) & 1099511627775_u64) | ((bytes[31] & 65535_u64) << 24)).to_i64
    values[50] = (((bytes[31] >> 16) & 1099511627775_u64)).to_i64
    values[51] = (((bytes[31] >> 56) & 1099511627775_u64) | ((bytes[32] & 4294967295_u64) << 8)).to_i64
    values[52] = (((bytes[32] >> 32) & 1099511627775_u64) | ((bytes[33] & 255_u64) << 32)).to_i64
    values[53] = (((bytes[33] >> 8) & 1099511627775_u64)).to_i64
    values[54] = (((bytes[33] >> 48) & 1099511627775_u64) | ((bytes[34] & 16777215_u64) << 16)).to_i64
    values[55] = (((bytes[34] >> 24) & 1099511627775_u64)).to_i64
    values[56] = (((bytes[35] >> 0) & 1099511627775_u64)).to_i64
    values[57] = (((bytes[35] >> 40) & 1099511627775_u64) | ((bytes[36] & 65535_u64) << 24)).to_i64
    values[58] = (((bytes[36] >> 16) & 1099511627775_u64)).to_i64
    values[59] = (((bytes[36] >> 56) & 1099511627775_u64) | ((bytes[37] & 4294967295_u64) << 8)).to_i64
    values[60] = (((bytes[37] >> 32) & 1099511627775_u64) | ((bytes[38] & 255_u64) << 32)).to_i64
    values[61] = (((bytes[38] >> 8) & 1099511627775_u64)).to_i64
    values[62] = (((bytes[38] >> 48) & 1099511627775_u64) | ((bytes[39] & 16777215_u64) << 16)).to_i64
    values[63] = (((bytes[39] >> 24) & 1099511627775_u64)).to_i64
    values
  end

  def self.pack41(values)
    bytes = Slice(UInt64).new(41, 0_u64)
    bytes[0] = (((values[0] & 2199023255551_u64) << 0) |
                ((values[1] & 2199023255551_u64) << 41)).to_u64
    bytes[1] = (((values[1] & 2199023255551_u64) >> 23) |
                ((values[2] & 2199023255551_u64) << 18) |
                ((values[3] & 2199023255551_u64) << 59)).to_u64
    bytes[2] = (((values[3] & 2199023255551_u64) >> 5) |
                ((values[4] & 2199023255551_u64) << 36)).to_u64
    bytes[3] = (((values[4] & 2199023255551_u64) >> 28) |
                ((values[5] & 2199023255551_u64) << 13) |
                ((values[6] & 2199023255551_u64) << 54)).to_u64
    bytes[4] = (((values[6] & 2199023255551_u64) >> 10) |
                ((values[7] & 2199023255551_u64) << 31)).to_u64
    bytes[5] = (((values[7] & 2199023255551_u64) >> 33) |
                ((values[8] & 2199023255551_u64) << 8) |
                ((values[9] & 2199023255551_u64) << 49)).to_u64
    bytes[6] = (((values[9] & 2199023255551_u64) >> 15) |
                ((values[10] & 2199023255551_u64) << 26)).to_u64
    bytes[7] = (((values[10] & 2199023255551_u64) >> 38) |
                ((values[11] & 2199023255551_u64) << 3) |
                ((values[12] & 2199023255551_u64) << 44)).to_u64
    bytes[8] = (((values[12] & 2199023255551_u64) >> 20) |
                ((values[13] & 2199023255551_u64) << 21) |
                ((values[14] & 2199023255551_u64) << 62)).to_u64
    bytes[9] = (((values[14] & 2199023255551_u64) >> 2) |
                ((values[15] & 2199023255551_u64) << 39)).to_u64
    bytes[10] = (((values[15] & 2199023255551_u64) >> 25) |
                 ((values[16] & 2199023255551_u64) << 16) |
                 ((values[17] & 2199023255551_u64) << 57)).to_u64
    bytes[11] = (((values[17] & 2199023255551_u64) >> 7) |
                 ((values[18] & 2199023255551_u64) << 34)).to_u64
    bytes[12] = (((values[18] & 2199023255551_u64) >> 30) |
                 ((values[19] & 2199023255551_u64) << 11) |
                 ((values[20] & 2199023255551_u64) << 52)).to_u64
    bytes[13] = (((values[20] & 2199023255551_u64) >> 12) |
                 ((values[21] & 2199023255551_u64) << 29)).to_u64
    bytes[14] = (((values[21] & 2199023255551_u64) >> 35) |
                 ((values[22] & 2199023255551_u64) << 6) |
                 ((values[23] & 2199023255551_u64) << 47)).to_u64
    bytes[15] = (((values[23] & 2199023255551_u64) >> 17) |
                 ((values[24] & 2199023255551_u64) << 24)).to_u64
    bytes[16] = (((values[24] & 2199023255551_u64) >> 40) |
                 ((values[25] & 2199023255551_u64) << 1) |
                 ((values[26] & 2199023255551_u64) << 42)).to_u64
    bytes[17] = (((values[26] & 2199023255551_u64) >> 22) |
                 ((values[27] & 2199023255551_u64) << 19) |
                 ((values[28] & 2199023255551_u64) << 60)).to_u64
    bytes[18] = (((values[28] & 2199023255551_u64) >> 4) |
                 ((values[29] & 2199023255551_u64) << 37)).to_u64
    bytes[19] = (((values[29] & 2199023255551_u64) >> 27) |
                 ((values[30] & 2199023255551_u64) << 14) |
                 ((values[31] & 2199023255551_u64) << 55)).to_u64
    bytes[20] = (((values[31] & 2199023255551_u64) >> 9) |
                 ((values[32] & 2199023255551_u64) << 32)).to_u64
    bytes[21] = (((values[32] & 2199023255551_u64) >> 32) |
                 ((values[33] & 2199023255551_u64) << 9) |
                 ((values[34] & 2199023255551_u64) << 50)).to_u64
    bytes[22] = (((values[34] & 2199023255551_u64) >> 14) |
                 ((values[35] & 2199023255551_u64) << 27)).to_u64
    bytes[23] = (((values[35] & 2199023255551_u64) >> 37) |
                 ((values[36] & 2199023255551_u64) << 4) |
                 ((values[37] & 2199023255551_u64) << 45)).to_u64
    bytes[24] = (((values[37] & 2199023255551_u64) >> 19) |
                 ((values[38] & 2199023255551_u64) << 22) |
                 ((values[39] & 2199023255551_u64) << 63)).to_u64
    bytes[25] = (((values[39] & 2199023255551_u64) >> 1) |
                 ((values[40] & 2199023255551_u64) << 40)).to_u64
    bytes[26] = (((values[40] & 2199023255551_u64) >> 24) |
                 ((values[41] & 2199023255551_u64) << 17) |
                 ((values[42] & 2199023255551_u64) << 58)).to_u64
    bytes[27] = (((values[42] & 2199023255551_u64) >> 6) |
                 ((values[43] & 2199023255551_u64) << 35)).to_u64
    bytes[28] = (((values[43] & 2199023255551_u64) >> 29) |
                 ((values[44] & 2199023255551_u64) << 12) |
                 ((values[45] & 2199023255551_u64) << 53)).to_u64
    bytes[29] = (((values[45] & 2199023255551_u64) >> 11) |
                 ((values[46] & 2199023255551_u64) << 30)).to_u64
    bytes[30] = (((values[46] & 2199023255551_u64) >> 34) |
                 ((values[47] & 2199023255551_u64) << 7) |
                 ((values[48] & 2199023255551_u64) << 48)).to_u64
    bytes[31] = (((values[48] & 2199023255551_u64) >> 16) |
                 ((values[49] & 2199023255551_u64) << 25)).to_u64
    bytes[32] = (((values[49] & 2199023255551_u64) >> 39) |
                 ((values[50] & 2199023255551_u64) << 2) |
                 ((values[51] & 2199023255551_u64) << 43)).to_u64
    bytes[33] = (((values[51] & 2199023255551_u64) >> 21) |
                 ((values[52] & 2199023255551_u64) << 20) |
                 ((values[53] & 2199023255551_u64) << 61)).to_u64
    bytes[34] = (((values[53] & 2199023255551_u64) >> 3) |
                 ((values[54] & 2199023255551_u64) << 38)).to_u64
    bytes[35] = (((values[54] & 2199023255551_u64) >> 26) |
                 ((values[55] & 2199023255551_u64) << 15) |
                 ((values[56] & 2199023255551_u64) << 56)).to_u64
    bytes[36] = (((values[56] & 2199023255551_u64) >> 8) |
                 ((values[57] & 2199023255551_u64) << 33)).to_u64
    bytes[37] = (((values[57] & 2199023255551_u64) >> 31) |
                 ((values[58] & 2199023255551_u64) << 10) |
                 ((values[59] & 2199023255551_u64) << 51)).to_u64
    bytes[38] = (((values[59] & 2199023255551_u64) >> 13) |
                 ((values[60] & 2199023255551_u64) << 28)).to_u64
    bytes[39] = (((values[60] & 2199023255551_u64) >> 36) |
                 ((values[61] & 2199023255551_u64) << 5) |
                 ((values[62] & 2199023255551_u64) << 46)).to_u64
    bytes[40] = (((values[62] & 2199023255551_u64) >> 18) |
                 ((values[63] & 2199023255551_u64) << 23)).to_u64
    bytes
  end

  def self.unpack41(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2199023255551_u64)).to_i64
    values[1] = (((bytes[0] >> 41) & 2199023255551_u64) | ((bytes[1] & 262143_u64) << 23)).to_i64
    values[2] = (((bytes[1] >> 18) & 2199023255551_u64)).to_i64
    values[3] = (((bytes[1] >> 59) & 2199023255551_u64) | ((bytes[2] & 68719476735_u64) << 5)).to_i64
    values[4] = (((bytes[2] >> 36) & 2199023255551_u64) | ((bytes[3] & 8191_u64) << 28)).to_i64
    values[5] = (((bytes[3] >> 13) & 2199023255551_u64)).to_i64
    values[6] = (((bytes[3] >> 54) & 2199023255551_u64) | ((bytes[4] & 2147483647_u64) << 10)).to_i64
    values[7] = (((bytes[4] >> 31) & 2199023255551_u64) | ((bytes[5] & 255_u64) << 33)).to_i64
    values[8] = (((bytes[5] >> 8) & 2199023255551_u64)).to_i64
    values[9] = (((bytes[5] >> 49) & 2199023255551_u64) | ((bytes[6] & 67108863_u64) << 15)).to_i64
    values[10] = (((bytes[6] >> 26) & 2199023255551_u64) | ((bytes[7] & 7_u64) << 38)).to_i64
    values[11] = (((bytes[7] >> 3) & 2199023255551_u64)).to_i64
    values[12] = (((bytes[7] >> 44) & 2199023255551_u64) | ((bytes[8] & 2097151_u64) << 20)).to_i64
    values[13] = (((bytes[8] >> 21) & 2199023255551_u64)).to_i64
    values[14] = (((bytes[8] >> 62) & 2199023255551_u64) | ((bytes[9] & 549755813887_u64) << 2)).to_i64
    values[15] = (((bytes[9] >> 39) & 2199023255551_u64) | ((bytes[10] & 65535_u64) << 25)).to_i64
    values[16] = (((bytes[10] >> 16) & 2199023255551_u64)).to_i64
    values[17] = (((bytes[10] >> 57) & 2199023255551_u64) | ((bytes[11] & 17179869183_u64) << 7)).to_i64
    values[18] = (((bytes[11] >> 34) & 2199023255551_u64) | ((bytes[12] & 2047_u64) << 30)).to_i64
    values[19] = (((bytes[12] >> 11) & 2199023255551_u64)).to_i64
    values[20] = (((bytes[12] >> 52) & 2199023255551_u64) | ((bytes[13] & 536870911_u64) << 12)).to_i64
    values[21] = (((bytes[13] >> 29) & 2199023255551_u64) | ((bytes[14] & 63_u64) << 35)).to_i64
    values[22] = (((bytes[14] >> 6) & 2199023255551_u64)).to_i64
    values[23] = (((bytes[14] >> 47) & 2199023255551_u64) | ((bytes[15] & 16777215_u64) << 17)).to_i64
    values[24] = (((bytes[15] >> 24) & 2199023255551_u64) | ((bytes[16] & 1_u64) << 40)).to_i64
    values[25] = (((bytes[16] >> 1) & 2199023255551_u64)).to_i64
    values[26] = (((bytes[16] >> 42) & 2199023255551_u64) | ((bytes[17] & 524287_u64) << 22)).to_i64
    values[27] = (((bytes[17] >> 19) & 2199023255551_u64)).to_i64
    values[28] = (((bytes[17] >> 60) & 2199023255551_u64) | ((bytes[18] & 137438953471_u64) << 4)).to_i64
    values[29] = (((bytes[18] >> 37) & 2199023255551_u64) | ((bytes[19] & 16383_u64) << 27)).to_i64
    values[30] = (((bytes[19] >> 14) & 2199023255551_u64)).to_i64
    values[31] = (((bytes[19] >> 55) & 2199023255551_u64) | ((bytes[20] & 4294967295_u64) << 9)).to_i64
    values[32] = (((bytes[20] >> 32) & 2199023255551_u64) | ((bytes[21] & 511_u64) << 32)).to_i64
    values[33] = (((bytes[21] >> 9) & 2199023255551_u64)).to_i64
    values[34] = (((bytes[21] >> 50) & 2199023255551_u64) | ((bytes[22] & 134217727_u64) << 14)).to_i64
    values[35] = (((bytes[22] >> 27) & 2199023255551_u64) | ((bytes[23] & 15_u64) << 37)).to_i64
    values[36] = (((bytes[23] >> 4) & 2199023255551_u64)).to_i64
    values[37] = (((bytes[23] >> 45) & 2199023255551_u64) | ((bytes[24] & 4194303_u64) << 19)).to_i64
    values[38] = (((bytes[24] >> 22) & 2199023255551_u64)).to_i64
    values[39] = (((bytes[24] >> 63) & 2199023255551_u64) | ((bytes[25] & 1099511627775_u64) << 1)).to_i64
    values[40] = (((bytes[25] >> 40) & 2199023255551_u64) | ((bytes[26] & 131071_u64) << 24)).to_i64
    values[41] = (((bytes[26] >> 17) & 2199023255551_u64)).to_i64
    values[42] = (((bytes[26] >> 58) & 2199023255551_u64) | ((bytes[27] & 34359738367_u64) << 6)).to_i64
    values[43] = (((bytes[27] >> 35) & 2199023255551_u64) | ((bytes[28] & 4095_u64) << 29)).to_i64
    values[44] = (((bytes[28] >> 12) & 2199023255551_u64)).to_i64
    values[45] = (((bytes[28] >> 53) & 2199023255551_u64) | ((bytes[29] & 1073741823_u64) << 11)).to_i64
    values[46] = (((bytes[29] >> 30) & 2199023255551_u64) | ((bytes[30] & 127_u64) << 34)).to_i64
    values[47] = (((bytes[30] >> 7) & 2199023255551_u64)).to_i64
    values[48] = (((bytes[30] >> 48) & 2199023255551_u64) | ((bytes[31] & 33554431_u64) << 16)).to_i64
    values[49] = (((bytes[31] >> 25) & 2199023255551_u64) | ((bytes[32] & 3_u64) << 39)).to_i64
    values[50] = (((bytes[32] >> 2) & 2199023255551_u64)).to_i64
    values[51] = (((bytes[32] >> 43) & 2199023255551_u64) | ((bytes[33] & 1048575_u64) << 21)).to_i64
    values[52] = (((bytes[33] >> 20) & 2199023255551_u64)).to_i64
    values[53] = (((bytes[33] >> 61) & 2199023255551_u64) | ((bytes[34] & 274877906943_u64) << 3)).to_i64
    values[54] = (((bytes[34] >> 38) & 2199023255551_u64) | ((bytes[35] & 32767_u64) << 26)).to_i64
    values[55] = (((bytes[35] >> 15) & 2199023255551_u64)).to_i64
    values[56] = (((bytes[35] >> 56) & 2199023255551_u64) | ((bytes[36] & 8589934591_u64) << 8)).to_i64
    values[57] = (((bytes[36] >> 33) & 2199023255551_u64) | ((bytes[37] & 1023_u64) << 31)).to_i64
    values[58] = (((bytes[37] >> 10) & 2199023255551_u64)).to_i64
    values[59] = (((bytes[37] >> 51) & 2199023255551_u64) | ((bytes[38] & 268435455_u64) << 13)).to_i64
    values[60] = (((bytes[38] >> 28) & 2199023255551_u64) | ((bytes[39] & 31_u64) << 36)).to_i64
    values[61] = (((bytes[39] >> 5) & 2199023255551_u64)).to_i64
    values[62] = (((bytes[39] >> 46) & 2199023255551_u64) | ((bytes[40] & 8388607_u64) << 18)).to_i64
    values[63] = (((bytes[40] >> 23) & 2199023255551_u64)).to_i64
    values
  end

  def self.pack42(values)
    bytes = Slice(UInt64).new(42, 0_u64)
    bytes[0] = (((values[0] & 4398046511103_u64) << 0) |
                ((values[1] & 4398046511103_u64) << 42)).to_u64
    bytes[1] = (((values[1] & 4398046511103_u64) >> 22) |
                ((values[2] & 4398046511103_u64) << 20) |
                ((values[3] & 4398046511103_u64) << 62)).to_u64
    bytes[2] = (((values[3] & 4398046511103_u64) >> 2) |
                ((values[4] & 4398046511103_u64) << 40)).to_u64
    bytes[3] = (((values[4] & 4398046511103_u64) >> 24) |
                ((values[5] & 4398046511103_u64) << 18) |
                ((values[6] & 4398046511103_u64) << 60)).to_u64
    bytes[4] = (((values[6] & 4398046511103_u64) >> 4) |
                ((values[7] & 4398046511103_u64) << 38)).to_u64
    bytes[5] = (((values[7] & 4398046511103_u64) >> 26) |
                ((values[8] & 4398046511103_u64) << 16) |
                ((values[9] & 4398046511103_u64) << 58)).to_u64
    bytes[6] = (((values[9] & 4398046511103_u64) >> 6) |
                ((values[10] & 4398046511103_u64) << 36)).to_u64
    bytes[7] = (((values[10] & 4398046511103_u64) >> 28) |
                ((values[11] & 4398046511103_u64) << 14) |
                ((values[12] & 4398046511103_u64) << 56)).to_u64
    bytes[8] = (((values[12] & 4398046511103_u64) >> 8) |
                ((values[13] & 4398046511103_u64) << 34)).to_u64
    bytes[9] = (((values[13] & 4398046511103_u64) >> 30) |
                ((values[14] & 4398046511103_u64) << 12) |
                ((values[15] & 4398046511103_u64) << 54)).to_u64
    bytes[10] = (((values[15] & 4398046511103_u64) >> 10) |
                 ((values[16] & 4398046511103_u64) << 32)).to_u64
    bytes[11] = (((values[16] & 4398046511103_u64) >> 32) |
                 ((values[17] & 4398046511103_u64) << 10) |
                 ((values[18] & 4398046511103_u64) << 52)).to_u64
    bytes[12] = (((values[18] & 4398046511103_u64) >> 12) |
                 ((values[19] & 4398046511103_u64) << 30)).to_u64
    bytes[13] = (((values[19] & 4398046511103_u64) >> 34) |
                 ((values[20] & 4398046511103_u64) << 8) |
                 ((values[21] & 4398046511103_u64) << 50)).to_u64
    bytes[14] = (((values[21] & 4398046511103_u64) >> 14) |
                 ((values[22] & 4398046511103_u64) << 28)).to_u64
    bytes[15] = (((values[22] & 4398046511103_u64) >> 36) |
                 ((values[23] & 4398046511103_u64) << 6) |
                 ((values[24] & 4398046511103_u64) << 48)).to_u64
    bytes[16] = (((values[24] & 4398046511103_u64) >> 16) |
                 ((values[25] & 4398046511103_u64) << 26)).to_u64
    bytes[17] = (((values[25] & 4398046511103_u64) >> 38) |
                 ((values[26] & 4398046511103_u64) << 4) |
                 ((values[27] & 4398046511103_u64) << 46)).to_u64
    bytes[18] = (((values[27] & 4398046511103_u64) >> 18) |
                 ((values[28] & 4398046511103_u64) << 24)).to_u64
    bytes[19] = (((values[28] & 4398046511103_u64) >> 40) |
                 ((values[29] & 4398046511103_u64) << 2) |
                 ((values[30] & 4398046511103_u64) << 44)).to_u64
    bytes[20] = (((values[30] & 4398046511103_u64) >> 20) |
                 ((values[31] & 4398046511103_u64) << 22)).to_u64
    bytes[21] = (((values[32] & 4398046511103_u64) << 0) |
                 ((values[33] & 4398046511103_u64) << 42)).to_u64
    bytes[22] = (((values[33] & 4398046511103_u64) >> 22) |
                 ((values[34] & 4398046511103_u64) << 20) |
                 ((values[35] & 4398046511103_u64) << 62)).to_u64
    bytes[23] = (((values[35] & 4398046511103_u64) >> 2) |
                 ((values[36] & 4398046511103_u64) << 40)).to_u64
    bytes[24] = (((values[36] & 4398046511103_u64) >> 24) |
                 ((values[37] & 4398046511103_u64) << 18) |
                 ((values[38] & 4398046511103_u64) << 60)).to_u64
    bytes[25] = (((values[38] & 4398046511103_u64) >> 4) |
                 ((values[39] & 4398046511103_u64) << 38)).to_u64
    bytes[26] = (((values[39] & 4398046511103_u64) >> 26) |
                 ((values[40] & 4398046511103_u64) << 16) |
                 ((values[41] & 4398046511103_u64) << 58)).to_u64
    bytes[27] = (((values[41] & 4398046511103_u64) >> 6) |
                 ((values[42] & 4398046511103_u64) << 36)).to_u64
    bytes[28] = (((values[42] & 4398046511103_u64) >> 28) |
                 ((values[43] & 4398046511103_u64) << 14) |
                 ((values[44] & 4398046511103_u64) << 56)).to_u64
    bytes[29] = (((values[44] & 4398046511103_u64) >> 8) |
                 ((values[45] & 4398046511103_u64) << 34)).to_u64
    bytes[30] = (((values[45] & 4398046511103_u64) >> 30) |
                 ((values[46] & 4398046511103_u64) << 12) |
                 ((values[47] & 4398046511103_u64) << 54)).to_u64
    bytes[31] = (((values[47] & 4398046511103_u64) >> 10) |
                 ((values[48] & 4398046511103_u64) << 32)).to_u64
    bytes[32] = (((values[48] & 4398046511103_u64) >> 32) |
                 ((values[49] & 4398046511103_u64) << 10) |
                 ((values[50] & 4398046511103_u64) << 52)).to_u64
    bytes[33] = (((values[50] & 4398046511103_u64) >> 12) |
                 ((values[51] & 4398046511103_u64) << 30)).to_u64
    bytes[34] = (((values[51] & 4398046511103_u64) >> 34) |
                 ((values[52] & 4398046511103_u64) << 8) |
                 ((values[53] & 4398046511103_u64) << 50)).to_u64
    bytes[35] = (((values[53] & 4398046511103_u64) >> 14) |
                 ((values[54] & 4398046511103_u64) << 28)).to_u64
    bytes[36] = (((values[54] & 4398046511103_u64) >> 36) |
                 ((values[55] & 4398046511103_u64) << 6) |
                 ((values[56] & 4398046511103_u64) << 48)).to_u64
    bytes[37] = (((values[56] & 4398046511103_u64) >> 16) |
                 ((values[57] & 4398046511103_u64) << 26)).to_u64
    bytes[38] = (((values[57] & 4398046511103_u64) >> 38) |
                 ((values[58] & 4398046511103_u64) << 4) |
                 ((values[59] & 4398046511103_u64) << 46)).to_u64
    bytes[39] = (((values[59] & 4398046511103_u64) >> 18) |
                 ((values[60] & 4398046511103_u64) << 24)).to_u64
    bytes[40] = (((values[60] & 4398046511103_u64) >> 40) |
                 ((values[61] & 4398046511103_u64) << 2) |
                 ((values[62] & 4398046511103_u64) << 44)).to_u64
    bytes[41] = (((values[62] & 4398046511103_u64) >> 20) |
                 ((values[63] & 4398046511103_u64) << 22)).to_u64
    bytes
  end

  def self.unpack42(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4398046511103_u64)).to_i64
    values[1] = (((bytes[0] >> 42) & 4398046511103_u64) | ((bytes[1] & 1048575_u64) << 22)).to_i64
    values[2] = (((bytes[1] >> 20) & 4398046511103_u64)).to_i64
    values[3] = (((bytes[1] >> 62) & 4398046511103_u64) | ((bytes[2] & 1099511627775_u64) << 2)).to_i64
    values[4] = (((bytes[2] >> 40) & 4398046511103_u64) | ((bytes[3] & 262143_u64) << 24)).to_i64
    values[5] = (((bytes[3] >> 18) & 4398046511103_u64)).to_i64
    values[6] = (((bytes[3] >> 60) & 4398046511103_u64) | ((bytes[4] & 274877906943_u64) << 4)).to_i64
    values[7] = (((bytes[4] >> 38) & 4398046511103_u64) | ((bytes[5] & 65535_u64) << 26)).to_i64
    values[8] = (((bytes[5] >> 16) & 4398046511103_u64)).to_i64
    values[9] = (((bytes[5] >> 58) & 4398046511103_u64) | ((bytes[6] & 68719476735_u64) << 6)).to_i64
    values[10] = (((bytes[6] >> 36) & 4398046511103_u64) | ((bytes[7] & 16383_u64) << 28)).to_i64
    values[11] = (((bytes[7] >> 14) & 4398046511103_u64)).to_i64
    values[12] = (((bytes[7] >> 56) & 4398046511103_u64) | ((bytes[8] & 17179869183_u64) << 8)).to_i64
    values[13] = (((bytes[8] >> 34) & 4398046511103_u64) | ((bytes[9] & 4095_u64) << 30)).to_i64
    values[14] = (((bytes[9] >> 12) & 4398046511103_u64)).to_i64
    values[15] = (((bytes[9] >> 54) & 4398046511103_u64) | ((bytes[10] & 4294967295_u64) << 10)).to_i64
    values[16] = (((bytes[10] >> 32) & 4398046511103_u64) | ((bytes[11] & 1023_u64) << 32)).to_i64
    values[17] = (((bytes[11] >> 10) & 4398046511103_u64)).to_i64
    values[18] = (((bytes[11] >> 52) & 4398046511103_u64) | ((bytes[12] & 1073741823_u64) << 12)).to_i64
    values[19] = (((bytes[12] >> 30) & 4398046511103_u64) | ((bytes[13] & 255_u64) << 34)).to_i64
    values[20] = (((bytes[13] >> 8) & 4398046511103_u64)).to_i64
    values[21] = (((bytes[13] >> 50) & 4398046511103_u64) | ((bytes[14] & 268435455_u64) << 14)).to_i64
    values[22] = (((bytes[14] >> 28) & 4398046511103_u64) | ((bytes[15] & 63_u64) << 36)).to_i64
    values[23] = (((bytes[15] >> 6) & 4398046511103_u64)).to_i64
    values[24] = (((bytes[15] >> 48) & 4398046511103_u64) | ((bytes[16] & 67108863_u64) << 16)).to_i64
    values[25] = (((bytes[16] >> 26) & 4398046511103_u64) | ((bytes[17] & 15_u64) << 38)).to_i64
    values[26] = (((bytes[17] >> 4) & 4398046511103_u64)).to_i64
    values[27] = (((bytes[17] >> 46) & 4398046511103_u64) | ((bytes[18] & 16777215_u64) << 18)).to_i64
    values[28] = (((bytes[18] >> 24) & 4398046511103_u64) | ((bytes[19] & 3_u64) << 40)).to_i64
    values[29] = (((bytes[19] >> 2) & 4398046511103_u64)).to_i64
    values[30] = (((bytes[19] >> 44) & 4398046511103_u64) | ((bytes[20] & 4194303_u64) << 20)).to_i64
    values[31] = (((bytes[20] >> 22) & 4398046511103_u64)).to_i64
    values[32] = (((bytes[21] >> 0) & 4398046511103_u64)).to_i64
    values[33] = (((bytes[21] >> 42) & 4398046511103_u64) | ((bytes[22] & 1048575_u64) << 22)).to_i64
    values[34] = (((bytes[22] >> 20) & 4398046511103_u64)).to_i64
    values[35] = (((bytes[22] >> 62) & 4398046511103_u64) | ((bytes[23] & 1099511627775_u64) << 2)).to_i64
    values[36] = (((bytes[23] >> 40) & 4398046511103_u64) | ((bytes[24] & 262143_u64) << 24)).to_i64
    values[37] = (((bytes[24] >> 18) & 4398046511103_u64)).to_i64
    values[38] = (((bytes[24] >> 60) & 4398046511103_u64) | ((bytes[25] & 274877906943_u64) << 4)).to_i64
    values[39] = (((bytes[25] >> 38) & 4398046511103_u64) | ((bytes[26] & 65535_u64) << 26)).to_i64
    values[40] = (((bytes[26] >> 16) & 4398046511103_u64)).to_i64
    values[41] = (((bytes[26] >> 58) & 4398046511103_u64) | ((bytes[27] & 68719476735_u64) << 6)).to_i64
    values[42] = (((bytes[27] >> 36) & 4398046511103_u64) | ((bytes[28] & 16383_u64) << 28)).to_i64
    values[43] = (((bytes[28] >> 14) & 4398046511103_u64)).to_i64
    values[44] = (((bytes[28] >> 56) & 4398046511103_u64) | ((bytes[29] & 17179869183_u64) << 8)).to_i64
    values[45] = (((bytes[29] >> 34) & 4398046511103_u64) | ((bytes[30] & 4095_u64) << 30)).to_i64
    values[46] = (((bytes[30] >> 12) & 4398046511103_u64)).to_i64
    values[47] = (((bytes[30] >> 54) & 4398046511103_u64) | ((bytes[31] & 4294967295_u64) << 10)).to_i64
    values[48] = (((bytes[31] >> 32) & 4398046511103_u64) | ((bytes[32] & 1023_u64) << 32)).to_i64
    values[49] = (((bytes[32] >> 10) & 4398046511103_u64)).to_i64
    values[50] = (((bytes[32] >> 52) & 4398046511103_u64) | ((bytes[33] & 1073741823_u64) << 12)).to_i64
    values[51] = (((bytes[33] >> 30) & 4398046511103_u64) | ((bytes[34] & 255_u64) << 34)).to_i64
    values[52] = (((bytes[34] >> 8) & 4398046511103_u64)).to_i64
    values[53] = (((bytes[34] >> 50) & 4398046511103_u64) | ((bytes[35] & 268435455_u64) << 14)).to_i64
    values[54] = (((bytes[35] >> 28) & 4398046511103_u64) | ((bytes[36] & 63_u64) << 36)).to_i64
    values[55] = (((bytes[36] >> 6) & 4398046511103_u64)).to_i64
    values[56] = (((bytes[36] >> 48) & 4398046511103_u64) | ((bytes[37] & 67108863_u64) << 16)).to_i64
    values[57] = (((bytes[37] >> 26) & 4398046511103_u64) | ((bytes[38] & 15_u64) << 38)).to_i64
    values[58] = (((bytes[38] >> 4) & 4398046511103_u64)).to_i64
    values[59] = (((bytes[38] >> 46) & 4398046511103_u64) | ((bytes[39] & 16777215_u64) << 18)).to_i64
    values[60] = (((bytes[39] >> 24) & 4398046511103_u64) | ((bytes[40] & 3_u64) << 40)).to_i64
    values[61] = (((bytes[40] >> 2) & 4398046511103_u64)).to_i64
    values[62] = (((bytes[40] >> 44) & 4398046511103_u64) | ((bytes[41] & 4194303_u64) << 20)).to_i64
    values[63] = (((bytes[41] >> 22) & 4398046511103_u64)).to_i64
    values
  end

  def self.pack43(values)
    bytes = Slice(UInt64).new(43, 0_u64)
    bytes[0] = (((values[0] & 8796093022207_u64) << 0) |
                ((values[1] & 8796093022207_u64) << 43)).to_u64
    bytes[1] = (((values[1] & 8796093022207_u64) >> 21) |
                ((values[2] & 8796093022207_u64) << 22)).to_u64
    bytes[2] = (((values[2] & 8796093022207_u64) >> 42) |
                ((values[3] & 8796093022207_u64) << 1) |
                ((values[4] & 8796093022207_u64) << 44)).to_u64
    bytes[3] = (((values[4] & 8796093022207_u64) >> 20) |
                ((values[5] & 8796093022207_u64) << 23)).to_u64
    bytes[4] = (((values[5] & 8796093022207_u64) >> 41) |
                ((values[6] & 8796093022207_u64) << 2) |
                ((values[7] & 8796093022207_u64) << 45)).to_u64
    bytes[5] = (((values[7] & 8796093022207_u64) >> 19) |
                ((values[8] & 8796093022207_u64) << 24)).to_u64
    bytes[6] = (((values[8] & 8796093022207_u64) >> 40) |
                ((values[9] & 8796093022207_u64) << 3) |
                ((values[10] & 8796093022207_u64) << 46)).to_u64
    bytes[7] = (((values[10] & 8796093022207_u64) >> 18) |
                ((values[11] & 8796093022207_u64) << 25)).to_u64
    bytes[8] = (((values[11] & 8796093022207_u64) >> 39) |
                ((values[12] & 8796093022207_u64) << 4) |
                ((values[13] & 8796093022207_u64) << 47)).to_u64
    bytes[9] = (((values[13] & 8796093022207_u64) >> 17) |
                ((values[14] & 8796093022207_u64) << 26)).to_u64
    bytes[10] = (((values[14] & 8796093022207_u64) >> 38) |
                 ((values[15] & 8796093022207_u64) << 5) |
                 ((values[16] & 8796093022207_u64) << 48)).to_u64
    bytes[11] = (((values[16] & 8796093022207_u64) >> 16) |
                 ((values[17] & 8796093022207_u64) << 27)).to_u64
    bytes[12] = (((values[17] & 8796093022207_u64) >> 37) |
                 ((values[18] & 8796093022207_u64) << 6) |
                 ((values[19] & 8796093022207_u64) << 49)).to_u64
    bytes[13] = (((values[19] & 8796093022207_u64) >> 15) |
                 ((values[20] & 8796093022207_u64) << 28)).to_u64
    bytes[14] = (((values[20] & 8796093022207_u64) >> 36) |
                 ((values[21] & 8796093022207_u64) << 7) |
                 ((values[22] & 8796093022207_u64) << 50)).to_u64
    bytes[15] = (((values[22] & 8796093022207_u64) >> 14) |
                 ((values[23] & 8796093022207_u64) << 29)).to_u64
    bytes[16] = (((values[23] & 8796093022207_u64) >> 35) |
                 ((values[24] & 8796093022207_u64) << 8) |
                 ((values[25] & 8796093022207_u64) << 51)).to_u64
    bytes[17] = (((values[25] & 8796093022207_u64) >> 13) |
                 ((values[26] & 8796093022207_u64) << 30)).to_u64
    bytes[18] = (((values[26] & 8796093022207_u64) >> 34) |
                 ((values[27] & 8796093022207_u64) << 9) |
                 ((values[28] & 8796093022207_u64) << 52)).to_u64
    bytes[19] = (((values[28] & 8796093022207_u64) >> 12) |
                 ((values[29] & 8796093022207_u64) << 31)).to_u64
    bytes[20] = (((values[29] & 8796093022207_u64) >> 33) |
                 ((values[30] & 8796093022207_u64) << 10) |
                 ((values[31] & 8796093022207_u64) << 53)).to_u64
    bytes[21] = (((values[31] & 8796093022207_u64) >> 11) |
                 ((values[32] & 8796093022207_u64) << 32)).to_u64
    bytes[22] = (((values[32] & 8796093022207_u64) >> 32) |
                 ((values[33] & 8796093022207_u64) << 11) |
                 ((values[34] & 8796093022207_u64) << 54)).to_u64
    bytes[23] = (((values[34] & 8796093022207_u64) >> 10) |
                 ((values[35] & 8796093022207_u64) << 33)).to_u64
    bytes[24] = (((values[35] & 8796093022207_u64) >> 31) |
                 ((values[36] & 8796093022207_u64) << 12) |
                 ((values[37] & 8796093022207_u64) << 55)).to_u64
    bytes[25] = (((values[37] & 8796093022207_u64) >> 9) |
                 ((values[38] & 8796093022207_u64) << 34)).to_u64
    bytes[26] = (((values[38] & 8796093022207_u64) >> 30) |
                 ((values[39] & 8796093022207_u64) << 13) |
                 ((values[40] & 8796093022207_u64) << 56)).to_u64
    bytes[27] = (((values[40] & 8796093022207_u64) >> 8) |
                 ((values[41] & 8796093022207_u64) << 35)).to_u64
    bytes[28] = (((values[41] & 8796093022207_u64) >> 29) |
                 ((values[42] & 8796093022207_u64) << 14) |
                 ((values[43] & 8796093022207_u64) << 57)).to_u64
    bytes[29] = (((values[43] & 8796093022207_u64) >> 7) |
                 ((values[44] & 8796093022207_u64) << 36)).to_u64
    bytes[30] = (((values[44] & 8796093022207_u64) >> 28) |
                 ((values[45] & 8796093022207_u64) << 15) |
                 ((values[46] & 8796093022207_u64) << 58)).to_u64
    bytes[31] = (((values[46] & 8796093022207_u64) >> 6) |
                 ((values[47] & 8796093022207_u64) << 37)).to_u64
    bytes[32] = (((values[47] & 8796093022207_u64) >> 27) |
                 ((values[48] & 8796093022207_u64) << 16) |
                 ((values[49] & 8796093022207_u64) << 59)).to_u64
    bytes[33] = (((values[49] & 8796093022207_u64) >> 5) |
                 ((values[50] & 8796093022207_u64) << 38)).to_u64
    bytes[34] = (((values[50] & 8796093022207_u64) >> 26) |
                 ((values[51] & 8796093022207_u64) << 17) |
                 ((values[52] & 8796093022207_u64) << 60)).to_u64
    bytes[35] = (((values[52] & 8796093022207_u64) >> 4) |
                 ((values[53] & 8796093022207_u64) << 39)).to_u64
    bytes[36] = (((values[53] & 8796093022207_u64) >> 25) |
                 ((values[54] & 8796093022207_u64) << 18) |
                 ((values[55] & 8796093022207_u64) << 61)).to_u64
    bytes[37] = (((values[55] & 8796093022207_u64) >> 3) |
                 ((values[56] & 8796093022207_u64) << 40)).to_u64
    bytes[38] = (((values[56] & 8796093022207_u64) >> 24) |
                 ((values[57] & 8796093022207_u64) << 19) |
                 ((values[58] & 8796093022207_u64) << 62)).to_u64
    bytes[39] = (((values[58] & 8796093022207_u64) >> 2) |
                 ((values[59] & 8796093022207_u64) << 41)).to_u64
    bytes[40] = (((values[59] & 8796093022207_u64) >> 23) |
                 ((values[60] & 8796093022207_u64) << 20) |
                 ((values[61] & 8796093022207_u64) << 63)).to_u64
    bytes[41] = (((values[61] & 8796093022207_u64) >> 1) |
                 ((values[62] & 8796093022207_u64) << 42)).to_u64
    bytes[42] = (((values[62] & 8796093022207_u64) >> 22) |
                 ((values[63] & 8796093022207_u64) << 21)).to_u64
    bytes
  end

  def self.unpack43(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 8796093022207_u64)).to_i64
    values[1] = (((bytes[0] >> 43) & 8796093022207_u64) | ((bytes[1] & 4194303_u64) << 21)).to_i64
    values[2] = (((bytes[1] >> 22) & 8796093022207_u64) | ((bytes[2] & 1_u64) << 42)).to_i64
    values[3] = (((bytes[2] >> 1) & 8796093022207_u64)).to_i64
    values[4] = (((bytes[2] >> 44) & 8796093022207_u64) | ((bytes[3] & 8388607_u64) << 20)).to_i64
    values[5] = (((bytes[3] >> 23) & 8796093022207_u64) | ((bytes[4] & 3_u64) << 41)).to_i64
    values[6] = (((bytes[4] >> 2) & 8796093022207_u64)).to_i64
    values[7] = (((bytes[4] >> 45) & 8796093022207_u64) | ((bytes[5] & 16777215_u64) << 19)).to_i64
    values[8] = (((bytes[5] >> 24) & 8796093022207_u64) | ((bytes[6] & 7_u64) << 40)).to_i64
    values[9] = (((bytes[6] >> 3) & 8796093022207_u64)).to_i64
    values[10] = (((bytes[6] >> 46) & 8796093022207_u64) | ((bytes[7] & 33554431_u64) << 18)).to_i64
    values[11] = (((bytes[7] >> 25) & 8796093022207_u64) | ((bytes[8] & 15_u64) << 39)).to_i64
    values[12] = (((bytes[8] >> 4) & 8796093022207_u64)).to_i64
    values[13] = (((bytes[8] >> 47) & 8796093022207_u64) | ((bytes[9] & 67108863_u64) << 17)).to_i64
    values[14] = (((bytes[9] >> 26) & 8796093022207_u64) | ((bytes[10] & 31_u64) << 38)).to_i64
    values[15] = (((bytes[10] >> 5) & 8796093022207_u64)).to_i64
    values[16] = (((bytes[10] >> 48) & 8796093022207_u64) | ((bytes[11] & 134217727_u64) << 16)).to_i64
    values[17] = (((bytes[11] >> 27) & 8796093022207_u64) | ((bytes[12] & 63_u64) << 37)).to_i64
    values[18] = (((bytes[12] >> 6) & 8796093022207_u64)).to_i64
    values[19] = (((bytes[12] >> 49) & 8796093022207_u64) | ((bytes[13] & 268435455_u64) << 15)).to_i64
    values[20] = (((bytes[13] >> 28) & 8796093022207_u64) | ((bytes[14] & 127_u64) << 36)).to_i64
    values[21] = (((bytes[14] >> 7) & 8796093022207_u64)).to_i64
    values[22] = (((bytes[14] >> 50) & 8796093022207_u64) | ((bytes[15] & 536870911_u64) << 14)).to_i64
    values[23] = (((bytes[15] >> 29) & 8796093022207_u64) | ((bytes[16] & 255_u64) << 35)).to_i64
    values[24] = (((bytes[16] >> 8) & 8796093022207_u64)).to_i64
    values[25] = (((bytes[16] >> 51) & 8796093022207_u64) | ((bytes[17] & 1073741823_u64) << 13)).to_i64
    values[26] = (((bytes[17] >> 30) & 8796093022207_u64) | ((bytes[18] & 511_u64) << 34)).to_i64
    values[27] = (((bytes[18] >> 9) & 8796093022207_u64)).to_i64
    values[28] = (((bytes[18] >> 52) & 8796093022207_u64) | ((bytes[19] & 2147483647_u64) << 12)).to_i64
    values[29] = (((bytes[19] >> 31) & 8796093022207_u64) | ((bytes[20] & 1023_u64) << 33)).to_i64
    values[30] = (((bytes[20] >> 10) & 8796093022207_u64)).to_i64
    values[31] = (((bytes[20] >> 53) & 8796093022207_u64) | ((bytes[21] & 4294967295_u64) << 11)).to_i64
    values[32] = (((bytes[21] >> 32) & 8796093022207_u64) | ((bytes[22] & 2047_u64) << 32)).to_i64
    values[33] = (((bytes[22] >> 11) & 8796093022207_u64)).to_i64
    values[34] = (((bytes[22] >> 54) & 8796093022207_u64) | ((bytes[23] & 8589934591_u64) << 10)).to_i64
    values[35] = (((bytes[23] >> 33) & 8796093022207_u64) | ((bytes[24] & 4095_u64) << 31)).to_i64
    values[36] = (((bytes[24] >> 12) & 8796093022207_u64)).to_i64
    values[37] = (((bytes[24] >> 55) & 8796093022207_u64) | ((bytes[25] & 17179869183_u64) << 9)).to_i64
    values[38] = (((bytes[25] >> 34) & 8796093022207_u64) | ((bytes[26] & 8191_u64) << 30)).to_i64
    values[39] = (((bytes[26] >> 13) & 8796093022207_u64)).to_i64
    values[40] = (((bytes[26] >> 56) & 8796093022207_u64) | ((bytes[27] & 34359738367_u64) << 8)).to_i64
    values[41] = (((bytes[27] >> 35) & 8796093022207_u64) | ((bytes[28] & 16383_u64) << 29)).to_i64
    values[42] = (((bytes[28] >> 14) & 8796093022207_u64)).to_i64
    values[43] = (((bytes[28] >> 57) & 8796093022207_u64) | ((bytes[29] & 68719476735_u64) << 7)).to_i64
    values[44] = (((bytes[29] >> 36) & 8796093022207_u64) | ((bytes[30] & 32767_u64) << 28)).to_i64
    values[45] = (((bytes[30] >> 15) & 8796093022207_u64)).to_i64
    values[46] = (((bytes[30] >> 58) & 8796093022207_u64) | ((bytes[31] & 137438953471_u64) << 6)).to_i64
    values[47] = (((bytes[31] >> 37) & 8796093022207_u64) | ((bytes[32] & 65535_u64) << 27)).to_i64
    values[48] = (((bytes[32] >> 16) & 8796093022207_u64)).to_i64
    values[49] = (((bytes[32] >> 59) & 8796093022207_u64) | ((bytes[33] & 274877906943_u64) << 5)).to_i64
    values[50] = (((bytes[33] >> 38) & 8796093022207_u64) | ((bytes[34] & 131071_u64) << 26)).to_i64
    values[51] = (((bytes[34] >> 17) & 8796093022207_u64)).to_i64
    values[52] = (((bytes[34] >> 60) & 8796093022207_u64) | ((bytes[35] & 549755813887_u64) << 4)).to_i64
    values[53] = (((bytes[35] >> 39) & 8796093022207_u64) | ((bytes[36] & 262143_u64) << 25)).to_i64
    values[54] = (((bytes[36] >> 18) & 8796093022207_u64)).to_i64
    values[55] = (((bytes[36] >> 61) & 8796093022207_u64) | ((bytes[37] & 1099511627775_u64) << 3)).to_i64
    values[56] = (((bytes[37] >> 40) & 8796093022207_u64) | ((bytes[38] & 524287_u64) << 24)).to_i64
    values[57] = (((bytes[38] >> 19) & 8796093022207_u64)).to_i64
    values[58] = (((bytes[38] >> 62) & 8796093022207_u64) | ((bytes[39] & 2199023255551_u64) << 2)).to_i64
    values[59] = (((bytes[39] >> 41) & 8796093022207_u64) | ((bytes[40] & 1048575_u64) << 23)).to_i64
    values[60] = (((bytes[40] >> 20) & 8796093022207_u64)).to_i64
    values[61] = (((bytes[40] >> 63) & 8796093022207_u64) | ((bytes[41] & 4398046511103_u64) << 1)).to_i64
    values[62] = (((bytes[41] >> 42) & 8796093022207_u64) | ((bytes[42] & 2097151_u64) << 22)).to_i64
    values[63] = (((bytes[42] >> 21) & 8796093022207_u64)).to_i64
    values
  end

  def self.pack44(values)
    bytes = Slice(UInt64).new(44, 0_u64)
    bytes[0] = (((values[0] & 17592186044415_u64) << 0) |
                ((values[1] & 17592186044415_u64) << 44)).to_u64
    bytes[1] = (((values[1] & 17592186044415_u64) >> 20) |
                ((values[2] & 17592186044415_u64) << 24)).to_u64
    bytes[2] = (((values[2] & 17592186044415_u64) >> 40) |
                ((values[3] & 17592186044415_u64) << 4) |
                ((values[4] & 17592186044415_u64) << 48)).to_u64
    bytes[3] = (((values[4] & 17592186044415_u64) >> 16) |
                ((values[5] & 17592186044415_u64) << 28)).to_u64
    bytes[4] = (((values[5] & 17592186044415_u64) >> 36) |
                ((values[6] & 17592186044415_u64) << 8) |
                ((values[7] & 17592186044415_u64) << 52)).to_u64
    bytes[5] = (((values[7] & 17592186044415_u64) >> 12) |
                ((values[8] & 17592186044415_u64) << 32)).to_u64
    bytes[6] = (((values[8] & 17592186044415_u64) >> 32) |
                ((values[9] & 17592186044415_u64) << 12) |
                ((values[10] & 17592186044415_u64) << 56)).to_u64
    bytes[7] = (((values[10] & 17592186044415_u64) >> 8) |
                ((values[11] & 17592186044415_u64) << 36)).to_u64
    bytes[8] = (((values[11] & 17592186044415_u64) >> 28) |
                ((values[12] & 17592186044415_u64) << 16) |
                ((values[13] & 17592186044415_u64) << 60)).to_u64
    bytes[9] = (((values[13] & 17592186044415_u64) >> 4) |
                ((values[14] & 17592186044415_u64) << 40)).to_u64
    bytes[10] = (((values[14] & 17592186044415_u64) >> 24) |
                 ((values[15] & 17592186044415_u64) << 20)).to_u64
    bytes[11] = (((values[16] & 17592186044415_u64) << 0) |
                 ((values[17] & 17592186044415_u64) << 44)).to_u64
    bytes[12] = (((values[17] & 17592186044415_u64) >> 20) |
                 ((values[18] & 17592186044415_u64) << 24)).to_u64
    bytes[13] = (((values[18] & 17592186044415_u64) >> 40) |
                 ((values[19] & 17592186044415_u64) << 4) |
                 ((values[20] & 17592186044415_u64) << 48)).to_u64
    bytes[14] = (((values[20] & 17592186044415_u64) >> 16) |
                 ((values[21] & 17592186044415_u64) << 28)).to_u64
    bytes[15] = (((values[21] & 17592186044415_u64) >> 36) |
                 ((values[22] & 17592186044415_u64) << 8) |
                 ((values[23] & 17592186044415_u64) << 52)).to_u64
    bytes[16] = (((values[23] & 17592186044415_u64) >> 12) |
                 ((values[24] & 17592186044415_u64) << 32)).to_u64
    bytes[17] = (((values[24] & 17592186044415_u64) >> 32) |
                 ((values[25] & 17592186044415_u64) << 12) |
                 ((values[26] & 17592186044415_u64) << 56)).to_u64
    bytes[18] = (((values[26] & 17592186044415_u64) >> 8) |
                 ((values[27] & 17592186044415_u64) << 36)).to_u64
    bytes[19] = (((values[27] & 17592186044415_u64) >> 28) |
                 ((values[28] & 17592186044415_u64) << 16) |
                 ((values[29] & 17592186044415_u64) << 60)).to_u64
    bytes[20] = (((values[29] & 17592186044415_u64) >> 4) |
                 ((values[30] & 17592186044415_u64) << 40)).to_u64
    bytes[21] = (((values[30] & 17592186044415_u64) >> 24) |
                 ((values[31] & 17592186044415_u64) << 20)).to_u64
    bytes[22] = (((values[32] & 17592186044415_u64) << 0) |
                 ((values[33] & 17592186044415_u64) << 44)).to_u64
    bytes[23] = (((values[33] & 17592186044415_u64) >> 20) |
                 ((values[34] & 17592186044415_u64) << 24)).to_u64
    bytes[24] = (((values[34] & 17592186044415_u64) >> 40) |
                 ((values[35] & 17592186044415_u64) << 4) |
                 ((values[36] & 17592186044415_u64) << 48)).to_u64
    bytes[25] = (((values[36] & 17592186044415_u64) >> 16) |
                 ((values[37] & 17592186044415_u64) << 28)).to_u64
    bytes[26] = (((values[37] & 17592186044415_u64) >> 36) |
                 ((values[38] & 17592186044415_u64) << 8) |
                 ((values[39] & 17592186044415_u64) << 52)).to_u64
    bytes[27] = (((values[39] & 17592186044415_u64) >> 12) |
                 ((values[40] & 17592186044415_u64) << 32)).to_u64
    bytes[28] = (((values[40] & 17592186044415_u64) >> 32) |
                 ((values[41] & 17592186044415_u64) << 12) |
                 ((values[42] & 17592186044415_u64) << 56)).to_u64
    bytes[29] = (((values[42] & 17592186044415_u64) >> 8) |
                 ((values[43] & 17592186044415_u64) << 36)).to_u64
    bytes[30] = (((values[43] & 17592186044415_u64) >> 28) |
                 ((values[44] & 17592186044415_u64) << 16) |
                 ((values[45] & 17592186044415_u64) << 60)).to_u64
    bytes[31] = (((values[45] & 17592186044415_u64) >> 4) |
                 ((values[46] & 17592186044415_u64) << 40)).to_u64
    bytes[32] = (((values[46] & 17592186044415_u64) >> 24) |
                 ((values[47] & 17592186044415_u64) << 20)).to_u64
    bytes[33] = (((values[48] & 17592186044415_u64) << 0) |
                 ((values[49] & 17592186044415_u64) << 44)).to_u64
    bytes[34] = (((values[49] & 17592186044415_u64) >> 20) |
                 ((values[50] & 17592186044415_u64) << 24)).to_u64
    bytes[35] = (((values[50] & 17592186044415_u64) >> 40) |
                 ((values[51] & 17592186044415_u64) << 4) |
                 ((values[52] & 17592186044415_u64) << 48)).to_u64
    bytes[36] = (((values[52] & 17592186044415_u64) >> 16) |
                 ((values[53] & 17592186044415_u64) << 28)).to_u64
    bytes[37] = (((values[53] & 17592186044415_u64) >> 36) |
                 ((values[54] & 17592186044415_u64) << 8) |
                 ((values[55] & 17592186044415_u64) << 52)).to_u64
    bytes[38] = (((values[55] & 17592186044415_u64) >> 12) |
                 ((values[56] & 17592186044415_u64) << 32)).to_u64
    bytes[39] = (((values[56] & 17592186044415_u64) >> 32) |
                 ((values[57] & 17592186044415_u64) << 12) |
                 ((values[58] & 17592186044415_u64) << 56)).to_u64
    bytes[40] = (((values[58] & 17592186044415_u64) >> 8) |
                 ((values[59] & 17592186044415_u64) << 36)).to_u64
    bytes[41] = (((values[59] & 17592186044415_u64) >> 28) |
                 ((values[60] & 17592186044415_u64) << 16) |
                 ((values[61] & 17592186044415_u64) << 60)).to_u64
    bytes[42] = (((values[61] & 17592186044415_u64) >> 4) |
                 ((values[62] & 17592186044415_u64) << 40)).to_u64
    bytes[43] = (((values[62] & 17592186044415_u64) >> 24) |
                 ((values[63] & 17592186044415_u64) << 20)).to_u64
    bytes
  end

  def self.unpack44(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 17592186044415_u64)).to_i64
    values[1] = (((bytes[0] >> 44) & 17592186044415_u64) | ((bytes[1] & 16777215_u64) << 20)).to_i64
    values[2] = (((bytes[1] >> 24) & 17592186044415_u64) | ((bytes[2] & 15_u64) << 40)).to_i64
    values[3] = (((bytes[2] >> 4) & 17592186044415_u64)).to_i64
    values[4] = (((bytes[2] >> 48) & 17592186044415_u64) | ((bytes[3] & 268435455_u64) << 16)).to_i64
    values[5] = (((bytes[3] >> 28) & 17592186044415_u64) | ((bytes[4] & 255_u64) << 36)).to_i64
    values[6] = (((bytes[4] >> 8) & 17592186044415_u64)).to_i64
    values[7] = (((bytes[4] >> 52) & 17592186044415_u64) | ((bytes[5] & 4294967295_u64) << 12)).to_i64
    values[8] = (((bytes[5] >> 32) & 17592186044415_u64) | ((bytes[6] & 4095_u64) << 32)).to_i64
    values[9] = (((bytes[6] >> 12) & 17592186044415_u64)).to_i64
    values[10] = (((bytes[6] >> 56) & 17592186044415_u64) | ((bytes[7] & 68719476735_u64) << 8)).to_i64
    values[11] = (((bytes[7] >> 36) & 17592186044415_u64) | ((bytes[8] & 65535_u64) << 28)).to_i64
    values[12] = (((bytes[8] >> 16) & 17592186044415_u64)).to_i64
    values[13] = (((bytes[8] >> 60) & 17592186044415_u64) | ((bytes[9] & 1099511627775_u64) << 4)).to_i64
    values[14] = (((bytes[9] >> 40) & 17592186044415_u64) | ((bytes[10] & 1048575_u64) << 24)).to_i64
    values[15] = (((bytes[10] >> 20) & 17592186044415_u64)).to_i64
    values[16] = (((bytes[11] >> 0) & 17592186044415_u64)).to_i64
    values[17] = (((bytes[11] >> 44) & 17592186044415_u64) | ((bytes[12] & 16777215_u64) << 20)).to_i64
    values[18] = (((bytes[12] >> 24) & 17592186044415_u64) | ((bytes[13] & 15_u64) << 40)).to_i64
    values[19] = (((bytes[13] >> 4) & 17592186044415_u64)).to_i64
    values[20] = (((bytes[13] >> 48) & 17592186044415_u64) | ((bytes[14] & 268435455_u64) << 16)).to_i64
    values[21] = (((bytes[14] >> 28) & 17592186044415_u64) | ((bytes[15] & 255_u64) << 36)).to_i64
    values[22] = (((bytes[15] >> 8) & 17592186044415_u64)).to_i64
    values[23] = (((bytes[15] >> 52) & 17592186044415_u64) | ((bytes[16] & 4294967295_u64) << 12)).to_i64
    values[24] = (((bytes[16] >> 32) & 17592186044415_u64) | ((bytes[17] & 4095_u64) << 32)).to_i64
    values[25] = (((bytes[17] >> 12) & 17592186044415_u64)).to_i64
    values[26] = (((bytes[17] >> 56) & 17592186044415_u64) | ((bytes[18] & 68719476735_u64) << 8)).to_i64
    values[27] = (((bytes[18] >> 36) & 17592186044415_u64) | ((bytes[19] & 65535_u64) << 28)).to_i64
    values[28] = (((bytes[19] >> 16) & 17592186044415_u64)).to_i64
    values[29] = (((bytes[19] >> 60) & 17592186044415_u64) | ((bytes[20] & 1099511627775_u64) << 4)).to_i64
    values[30] = (((bytes[20] >> 40) & 17592186044415_u64) | ((bytes[21] & 1048575_u64) << 24)).to_i64
    values[31] = (((bytes[21] >> 20) & 17592186044415_u64)).to_i64
    values[32] = (((bytes[22] >> 0) & 17592186044415_u64)).to_i64
    values[33] = (((bytes[22] >> 44) & 17592186044415_u64) | ((bytes[23] & 16777215_u64) << 20)).to_i64
    values[34] = (((bytes[23] >> 24) & 17592186044415_u64) | ((bytes[24] & 15_u64) << 40)).to_i64
    values[35] = (((bytes[24] >> 4) & 17592186044415_u64)).to_i64
    values[36] = (((bytes[24] >> 48) & 17592186044415_u64) | ((bytes[25] & 268435455_u64) << 16)).to_i64
    values[37] = (((bytes[25] >> 28) & 17592186044415_u64) | ((bytes[26] & 255_u64) << 36)).to_i64
    values[38] = (((bytes[26] >> 8) & 17592186044415_u64)).to_i64
    values[39] = (((bytes[26] >> 52) & 17592186044415_u64) | ((bytes[27] & 4294967295_u64) << 12)).to_i64
    values[40] = (((bytes[27] >> 32) & 17592186044415_u64) | ((bytes[28] & 4095_u64) << 32)).to_i64
    values[41] = (((bytes[28] >> 12) & 17592186044415_u64)).to_i64
    values[42] = (((bytes[28] >> 56) & 17592186044415_u64) | ((bytes[29] & 68719476735_u64) << 8)).to_i64
    values[43] = (((bytes[29] >> 36) & 17592186044415_u64) | ((bytes[30] & 65535_u64) << 28)).to_i64
    values[44] = (((bytes[30] >> 16) & 17592186044415_u64)).to_i64
    values[45] = (((bytes[30] >> 60) & 17592186044415_u64) | ((bytes[31] & 1099511627775_u64) << 4)).to_i64
    values[46] = (((bytes[31] >> 40) & 17592186044415_u64) | ((bytes[32] & 1048575_u64) << 24)).to_i64
    values[47] = (((bytes[32] >> 20) & 17592186044415_u64)).to_i64
    values[48] = (((bytes[33] >> 0) & 17592186044415_u64)).to_i64
    values[49] = (((bytes[33] >> 44) & 17592186044415_u64) | ((bytes[34] & 16777215_u64) << 20)).to_i64
    values[50] = (((bytes[34] >> 24) & 17592186044415_u64) | ((bytes[35] & 15_u64) << 40)).to_i64
    values[51] = (((bytes[35] >> 4) & 17592186044415_u64)).to_i64
    values[52] = (((bytes[35] >> 48) & 17592186044415_u64) | ((bytes[36] & 268435455_u64) << 16)).to_i64
    values[53] = (((bytes[36] >> 28) & 17592186044415_u64) | ((bytes[37] & 255_u64) << 36)).to_i64
    values[54] = (((bytes[37] >> 8) & 17592186044415_u64)).to_i64
    values[55] = (((bytes[37] >> 52) & 17592186044415_u64) | ((bytes[38] & 4294967295_u64) << 12)).to_i64
    values[56] = (((bytes[38] >> 32) & 17592186044415_u64) | ((bytes[39] & 4095_u64) << 32)).to_i64
    values[57] = (((bytes[39] >> 12) & 17592186044415_u64)).to_i64
    values[58] = (((bytes[39] >> 56) & 17592186044415_u64) | ((bytes[40] & 68719476735_u64) << 8)).to_i64
    values[59] = (((bytes[40] >> 36) & 17592186044415_u64) | ((bytes[41] & 65535_u64) << 28)).to_i64
    values[60] = (((bytes[41] >> 16) & 17592186044415_u64)).to_i64
    values[61] = (((bytes[41] >> 60) & 17592186044415_u64) | ((bytes[42] & 1099511627775_u64) << 4)).to_i64
    values[62] = (((bytes[42] >> 40) & 17592186044415_u64) | ((bytes[43] & 1048575_u64) << 24)).to_i64
    values[63] = (((bytes[43] >> 20) & 17592186044415_u64)).to_i64
    values
  end

  def self.pack45(values)
    bytes = Slice(UInt64).new(45, 0_u64)
    bytes[0] = (((values[0] & 35184372088831_u64) << 0) |
                ((values[1] & 35184372088831_u64) << 45)).to_u64
    bytes[1] = (((values[1] & 35184372088831_u64) >> 19) |
                ((values[2] & 35184372088831_u64) << 26)).to_u64
    bytes[2] = (((values[2] & 35184372088831_u64) >> 38) |
                ((values[3] & 35184372088831_u64) << 7) |
                ((values[4] & 35184372088831_u64) << 52)).to_u64
    bytes[3] = (((values[4] & 35184372088831_u64) >> 12) |
                ((values[5] & 35184372088831_u64) << 33)).to_u64
    bytes[4] = (((values[5] & 35184372088831_u64) >> 31) |
                ((values[6] & 35184372088831_u64) << 14) |
                ((values[7] & 35184372088831_u64) << 59)).to_u64
    bytes[5] = (((values[7] & 35184372088831_u64) >> 5) |
                ((values[8] & 35184372088831_u64) << 40)).to_u64
    bytes[6] = (((values[8] & 35184372088831_u64) >> 24) |
                ((values[9] & 35184372088831_u64) << 21)).to_u64
    bytes[7] = (((values[9] & 35184372088831_u64) >> 43) |
                ((values[10] & 35184372088831_u64) << 2) |
                ((values[11] & 35184372088831_u64) << 47)).to_u64
    bytes[8] = (((values[11] & 35184372088831_u64) >> 17) |
                ((values[12] & 35184372088831_u64) << 28)).to_u64
    bytes[9] = (((values[12] & 35184372088831_u64) >> 36) |
                ((values[13] & 35184372088831_u64) << 9) |
                ((values[14] & 35184372088831_u64) << 54)).to_u64
    bytes[10] = (((values[14] & 35184372088831_u64) >> 10) |
                 ((values[15] & 35184372088831_u64) << 35)).to_u64
    bytes[11] = (((values[15] & 35184372088831_u64) >> 29) |
                 ((values[16] & 35184372088831_u64) << 16) |
                 ((values[17] & 35184372088831_u64) << 61)).to_u64
    bytes[12] = (((values[17] & 35184372088831_u64) >> 3) |
                 ((values[18] & 35184372088831_u64) << 42)).to_u64
    bytes[13] = (((values[18] & 35184372088831_u64) >> 22) |
                 ((values[19] & 35184372088831_u64) << 23)).to_u64
    bytes[14] = (((values[19] & 35184372088831_u64) >> 41) |
                 ((values[20] & 35184372088831_u64) << 4) |
                 ((values[21] & 35184372088831_u64) << 49)).to_u64
    bytes[15] = (((values[21] & 35184372088831_u64) >> 15) |
                 ((values[22] & 35184372088831_u64) << 30)).to_u64
    bytes[16] = (((values[22] & 35184372088831_u64) >> 34) |
                 ((values[23] & 35184372088831_u64) << 11) |
                 ((values[24] & 35184372088831_u64) << 56)).to_u64
    bytes[17] = (((values[24] & 35184372088831_u64) >> 8) |
                 ((values[25] & 35184372088831_u64) << 37)).to_u64
    bytes[18] = (((values[25] & 35184372088831_u64) >> 27) |
                 ((values[26] & 35184372088831_u64) << 18) |
                 ((values[27] & 35184372088831_u64) << 63)).to_u64
    bytes[19] = (((values[27] & 35184372088831_u64) >> 1) |
                 ((values[28] & 35184372088831_u64) << 44)).to_u64
    bytes[20] = (((values[28] & 35184372088831_u64) >> 20) |
                 ((values[29] & 35184372088831_u64) << 25)).to_u64
    bytes[21] = (((values[29] & 35184372088831_u64) >> 39) |
                 ((values[30] & 35184372088831_u64) << 6) |
                 ((values[31] & 35184372088831_u64) << 51)).to_u64
    bytes[22] = (((values[31] & 35184372088831_u64) >> 13) |
                 ((values[32] & 35184372088831_u64) << 32)).to_u64
    bytes[23] = (((values[32] & 35184372088831_u64) >> 32) |
                 ((values[33] & 35184372088831_u64) << 13) |
                 ((values[34] & 35184372088831_u64) << 58)).to_u64
    bytes[24] = (((values[34] & 35184372088831_u64) >> 6) |
                 ((values[35] & 35184372088831_u64) << 39)).to_u64
    bytes[25] = (((values[35] & 35184372088831_u64) >> 25) |
                 ((values[36] & 35184372088831_u64) << 20)).to_u64
    bytes[26] = (((values[36] & 35184372088831_u64) >> 44) |
                 ((values[37] & 35184372088831_u64) << 1) |
                 ((values[38] & 35184372088831_u64) << 46)).to_u64
    bytes[27] = (((values[38] & 35184372088831_u64) >> 18) |
                 ((values[39] & 35184372088831_u64) << 27)).to_u64
    bytes[28] = (((values[39] & 35184372088831_u64) >> 37) |
                 ((values[40] & 35184372088831_u64) << 8) |
                 ((values[41] & 35184372088831_u64) << 53)).to_u64
    bytes[29] = (((values[41] & 35184372088831_u64) >> 11) |
                 ((values[42] & 35184372088831_u64) << 34)).to_u64
    bytes[30] = (((values[42] & 35184372088831_u64) >> 30) |
                 ((values[43] & 35184372088831_u64) << 15) |
                 ((values[44] & 35184372088831_u64) << 60)).to_u64
    bytes[31] = (((values[44] & 35184372088831_u64) >> 4) |
                 ((values[45] & 35184372088831_u64) << 41)).to_u64
    bytes[32] = (((values[45] & 35184372088831_u64) >> 23) |
                 ((values[46] & 35184372088831_u64) << 22)).to_u64
    bytes[33] = (((values[46] & 35184372088831_u64) >> 42) |
                 ((values[47] & 35184372088831_u64) << 3) |
                 ((values[48] & 35184372088831_u64) << 48)).to_u64
    bytes[34] = (((values[48] & 35184372088831_u64) >> 16) |
                 ((values[49] & 35184372088831_u64) << 29)).to_u64
    bytes[35] = (((values[49] & 35184372088831_u64) >> 35) |
                 ((values[50] & 35184372088831_u64) << 10) |
                 ((values[51] & 35184372088831_u64) << 55)).to_u64
    bytes[36] = (((values[51] & 35184372088831_u64) >> 9) |
                 ((values[52] & 35184372088831_u64) << 36)).to_u64
    bytes[37] = (((values[52] & 35184372088831_u64) >> 28) |
                 ((values[53] & 35184372088831_u64) << 17) |
                 ((values[54] & 35184372088831_u64) << 62)).to_u64
    bytes[38] = (((values[54] & 35184372088831_u64) >> 2) |
                 ((values[55] & 35184372088831_u64) << 43)).to_u64
    bytes[39] = (((values[55] & 35184372088831_u64) >> 21) |
                 ((values[56] & 35184372088831_u64) << 24)).to_u64
    bytes[40] = (((values[56] & 35184372088831_u64) >> 40) |
                 ((values[57] & 35184372088831_u64) << 5) |
                 ((values[58] & 35184372088831_u64) << 50)).to_u64
    bytes[41] = (((values[58] & 35184372088831_u64) >> 14) |
                 ((values[59] & 35184372088831_u64) << 31)).to_u64
    bytes[42] = (((values[59] & 35184372088831_u64) >> 33) |
                 ((values[60] & 35184372088831_u64) << 12) |
                 ((values[61] & 35184372088831_u64) << 57)).to_u64
    bytes[43] = (((values[61] & 35184372088831_u64) >> 7) |
                 ((values[62] & 35184372088831_u64) << 38)).to_u64
    bytes[44] = (((values[62] & 35184372088831_u64) >> 26) |
                 ((values[63] & 35184372088831_u64) << 19)).to_u64
    bytes
  end

  def self.unpack45(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 35184372088831_u64)).to_i64
    values[1] = (((bytes[0] >> 45) & 35184372088831_u64) | ((bytes[1] & 67108863_u64) << 19)).to_i64
    values[2] = (((bytes[1] >> 26) & 35184372088831_u64) | ((bytes[2] & 127_u64) << 38)).to_i64
    values[3] = (((bytes[2] >> 7) & 35184372088831_u64)).to_i64
    values[4] = (((bytes[2] >> 52) & 35184372088831_u64) | ((bytes[3] & 8589934591_u64) << 12)).to_i64
    values[5] = (((bytes[3] >> 33) & 35184372088831_u64) | ((bytes[4] & 16383_u64) << 31)).to_i64
    values[6] = (((bytes[4] >> 14) & 35184372088831_u64)).to_i64
    values[7] = (((bytes[4] >> 59) & 35184372088831_u64) | ((bytes[5] & 1099511627775_u64) << 5)).to_i64
    values[8] = (((bytes[5] >> 40) & 35184372088831_u64) | ((bytes[6] & 2097151_u64) << 24)).to_i64
    values[9] = (((bytes[6] >> 21) & 35184372088831_u64) | ((bytes[7] & 3_u64) << 43)).to_i64
    values[10] = (((bytes[7] >> 2) & 35184372088831_u64)).to_i64
    values[11] = (((bytes[7] >> 47) & 35184372088831_u64) | ((bytes[8] & 268435455_u64) << 17)).to_i64
    values[12] = (((bytes[8] >> 28) & 35184372088831_u64) | ((bytes[9] & 511_u64) << 36)).to_i64
    values[13] = (((bytes[9] >> 9) & 35184372088831_u64)).to_i64
    values[14] = (((bytes[9] >> 54) & 35184372088831_u64) | ((bytes[10] & 34359738367_u64) << 10)).to_i64
    values[15] = (((bytes[10] >> 35) & 35184372088831_u64) | ((bytes[11] & 65535_u64) << 29)).to_i64
    values[16] = (((bytes[11] >> 16) & 35184372088831_u64)).to_i64
    values[17] = (((bytes[11] >> 61) & 35184372088831_u64) | ((bytes[12] & 4398046511103_u64) << 3)).to_i64
    values[18] = (((bytes[12] >> 42) & 35184372088831_u64) | ((bytes[13] & 8388607_u64) << 22)).to_i64
    values[19] = (((bytes[13] >> 23) & 35184372088831_u64) | ((bytes[14] & 15_u64) << 41)).to_i64
    values[20] = (((bytes[14] >> 4) & 35184372088831_u64)).to_i64
    values[21] = (((bytes[14] >> 49) & 35184372088831_u64) | ((bytes[15] & 1073741823_u64) << 15)).to_i64
    values[22] = (((bytes[15] >> 30) & 35184372088831_u64) | ((bytes[16] & 2047_u64) << 34)).to_i64
    values[23] = (((bytes[16] >> 11) & 35184372088831_u64)).to_i64
    values[24] = (((bytes[16] >> 56) & 35184372088831_u64) | ((bytes[17] & 137438953471_u64) << 8)).to_i64
    values[25] = (((bytes[17] >> 37) & 35184372088831_u64) | ((bytes[18] & 262143_u64) << 27)).to_i64
    values[26] = (((bytes[18] >> 18) & 35184372088831_u64)).to_i64
    values[27] = (((bytes[18] >> 63) & 35184372088831_u64) | ((bytes[19] & 17592186044415_u64) << 1)).to_i64
    values[28] = (((bytes[19] >> 44) & 35184372088831_u64) | ((bytes[20] & 33554431_u64) << 20)).to_i64
    values[29] = (((bytes[20] >> 25) & 35184372088831_u64) | ((bytes[21] & 63_u64) << 39)).to_i64
    values[30] = (((bytes[21] >> 6) & 35184372088831_u64)).to_i64
    values[31] = (((bytes[21] >> 51) & 35184372088831_u64) | ((bytes[22] & 4294967295_u64) << 13)).to_i64
    values[32] = (((bytes[22] >> 32) & 35184372088831_u64) | ((bytes[23] & 8191_u64) << 32)).to_i64
    values[33] = (((bytes[23] >> 13) & 35184372088831_u64)).to_i64
    values[34] = (((bytes[23] >> 58) & 35184372088831_u64) | ((bytes[24] & 549755813887_u64) << 6)).to_i64
    values[35] = (((bytes[24] >> 39) & 35184372088831_u64) | ((bytes[25] & 1048575_u64) << 25)).to_i64
    values[36] = (((bytes[25] >> 20) & 35184372088831_u64) | ((bytes[26] & 1_u64) << 44)).to_i64
    values[37] = (((bytes[26] >> 1) & 35184372088831_u64)).to_i64
    values[38] = (((bytes[26] >> 46) & 35184372088831_u64) | ((bytes[27] & 134217727_u64) << 18)).to_i64
    values[39] = (((bytes[27] >> 27) & 35184372088831_u64) | ((bytes[28] & 255_u64) << 37)).to_i64
    values[40] = (((bytes[28] >> 8) & 35184372088831_u64)).to_i64
    values[41] = (((bytes[28] >> 53) & 35184372088831_u64) | ((bytes[29] & 17179869183_u64) << 11)).to_i64
    values[42] = (((bytes[29] >> 34) & 35184372088831_u64) | ((bytes[30] & 32767_u64) << 30)).to_i64
    values[43] = (((bytes[30] >> 15) & 35184372088831_u64)).to_i64
    values[44] = (((bytes[30] >> 60) & 35184372088831_u64) | ((bytes[31] & 2199023255551_u64) << 4)).to_i64
    values[45] = (((bytes[31] >> 41) & 35184372088831_u64) | ((bytes[32] & 4194303_u64) << 23)).to_i64
    values[46] = (((bytes[32] >> 22) & 35184372088831_u64) | ((bytes[33] & 7_u64) << 42)).to_i64
    values[47] = (((bytes[33] >> 3) & 35184372088831_u64)).to_i64
    values[48] = (((bytes[33] >> 48) & 35184372088831_u64) | ((bytes[34] & 536870911_u64) << 16)).to_i64
    values[49] = (((bytes[34] >> 29) & 35184372088831_u64) | ((bytes[35] & 1023_u64) << 35)).to_i64
    values[50] = (((bytes[35] >> 10) & 35184372088831_u64)).to_i64
    values[51] = (((bytes[35] >> 55) & 35184372088831_u64) | ((bytes[36] & 68719476735_u64) << 9)).to_i64
    values[52] = (((bytes[36] >> 36) & 35184372088831_u64) | ((bytes[37] & 131071_u64) << 28)).to_i64
    values[53] = (((bytes[37] >> 17) & 35184372088831_u64)).to_i64
    values[54] = (((bytes[37] >> 62) & 35184372088831_u64) | ((bytes[38] & 8796093022207_u64) << 2)).to_i64
    values[55] = (((bytes[38] >> 43) & 35184372088831_u64) | ((bytes[39] & 16777215_u64) << 21)).to_i64
    values[56] = (((bytes[39] >> 24) & 35184372088831_u64) | ((bytes[40] & 31_u64) << 40)).to_i64
    values[57] = (((bytes[40] >> 5) & 35184372088831_u64)).to_i64
    values[58] = (((bytes[40] >> 50) & 35184372088831_u64) | ((bytes[41] & 2147483647_u64) << 14)).to_i64
    values[59] = (((bytes[41] >> 31) & 35184372088831_u64) | ((bytes[42] & 4095_u64) << 33)).to_i64
    values[60] = (((bytes[42] >> 12) & 35184372088831_u64)).to_i64
    values[61] = (((bytes[42] >> 57) & 35184372088831_u64) | ((bytes[43] & 274877906943_u64) << 7)).to_i64
    values[62] = (((bytes[43] >> 38) & 35184372088831_u64) | ((bytes[44] & 524287_u64) << 26)).to_i64
    values[63] = (((bytes[44] >> 19) & 35184372088831_u64)).to_i64
    values
  end

  def self.pack46(values)
    bytes = Slice(UInt64).new(46, 0_u64)
    bytes[0] = (((values[0] & 70368744177663_u64) << 0) |
                ((values[1] & 70368744177663_u64) << 46)).to_u64
    bytes[1] = (((values[1] & 70368744177663_u64) >> 18) |
                ((values[2] & 70368744177663_u64) << 28)).to_u64
    bytes[2] = (((values[2] & 70368744177663_u64) >> 36) |
                ((values[3] & 70368744177663_u64) << 10) |
                ((values[4] & 70368744177663_u64) << 56)).to_u64
    bytes[3] = (((values[4] & 70368744177663_u64) >> 8) |
                ((values[5] & 70368744177663_u64) << 38)).to_u64
    bytes[4] = (((values[5] & 70368744177663_u64) >> 26) |
                ((values[6] & 70368744177663_u64) << 20)).to_u64
    bytes[5] = (((values[6] & 70368744177663_u64) >> 44) |
                ((values[7] & 70368744177663_u64) << 2) |
                ((values[8] & 70368744177663_u64) << 48)).to_u64
    bytes[6] = (((values[8] & 70368744177663_u64) >> 16) |
                ((values[9] & 70368744177663_u64) << 30)).to_u64
    bytes[7] = (((values[9] & 70368744177663_u64) >> 34) |
                ((values[10] & 70368744177663_u64) << 12) |
                ((values[11] & 70368744177663_u64) << 58)).to_u64
    bytes[8] = (((values[11] & 70368744177663_u64) >> 6) |
                ((values[12] & 70368744177663_u64) << 40)).to_u64
    bytes[9] = (((values[12] & 70368744177663_u64) >> 24) |
                ((values[13] & 70368744177663_u64) << 22)).to_u64
    bytes[10] = (((values[13] & 70368744177663_u64) >> 42) |
                 ((values[14] & 70368744177663_u64) << 4) |
                 ((values[15] & 70368744177663_u64) << 50)).to_u64
    bytes[11] = (((values[15] & 70368744177663_u64) >> 14) |
                 ((values[16] & 70368744177663_u64) << 32)).to_u64
    bytes[12] = (((values[16] & 70368744177663_u64) >> 32) |
                 ((values[17] & 70368744177663_u64) << 14) |
                 ((values[18] & 70368744177663_u64) << 60)).to_u64
    bytes[13] = (((values[18] & 70368744177663_u64) >> 4) |
                 ((values[19] & 70368744177663_u64) << 42)).to_u64
    bytes[14] = (((values[19] & 70368744177663_u64) >> 22) |
                 ((values[20] & 70368744177663_u64) << 24)).to_u64
    bytes[15] = (((values[20] & 70368744177663_u64) >> 40) |
                 ((values[21] & 70368744177663_u64) << 6) |
                 ((values[22] & 70368744177663_u64) << 52)).to_u64
    bytes[16] = (((values[22] & 70368744177663_u64) >> 12) |
                 ((values[23] & 70368744177663_u64) << 34)).to_u64
    bytes[17] = (((values[23] & 70368744177663_u64) >> 30) |
                 ((values[24] & 70368744177663_u64) << 16) |
                 ((values[25] & 70368744177663_u64) << 62)).to_u64
    bytes[18] = (((values[25] & 70368744177663_u64) >> 2) |
                 ((values[26] & 70368744177663_u64) << 44)).to_u64
    bytes[19] = (((values[26] & 70368744177663_u64) >> 20) |
                 ((values[27] & 70368744177663_u64) << 26)).to_u64
    bytes[20] = (((values[27] & 70368744177663_u64) >> 38) |
                 ((values[28] & 70368744177663_u64) << 8) |
                 ((values[29] & 70368744177663_u64) << 54)).to_u64
    bytes[21] = (((values[29] & 70368744177663_u64) >> 10) |
                 ((values[30] & 70368744177663_u64) << 36)).to_u64
    bytes[22] = (((values[30] & 70368744177663_u64) >> 28) |
                 ((values[31] & 70368744177663_u64) << 18)).to_u64
    bytes[23] = (((values[32] & 70368744177663_u64) << 0) |
                 ((values[33] & 70368744177663_u64) << 46)).to_u64
    bytes[24] = (((values[33] & 70368744177663_u64) >> 18) |
                 ((values[34] & 70368744177663_u64) << 28)).to_u64
    bytes[25] = (((values[34] & 70368744177663_u64) >> 36) |
                 ((values[35] & 70368744177663_u64) << 10) |
                 ((values[36] & 70368744177663_u64) << 56)).to_u64
    bytes[26] = (((values[36] & 70368744177663_u64) >> 8) |
                 ((values[37] & 70368744177663_u64) << 38)).to_u64
    bytes[27] = (((values[37] & 70368744177663_u64) >> 26) |
                 ((values[38] & 70368744177663_u64) << 20)).to_u64
    bytes[28] = (((values[38] & 70368744177663_u64) >> 44) |
                 ((values[39] & 70368744177663_u64) << 2) |
                 ((values[40] & 70368744177663_u64) << 48)).to_u64
    bytes[29] = (((values[40] & 70368744177663_u64) >> 16) |
                 ((values[41] & 70368744177663_u64) << 30)).to_u64
    bytes[30] = (((values[41] & 70368744177663_u64) >> 34) |
                 ((values[42] & 70368744177663_u64) << 12) |
                 ((values[43] & 70368744177663_u64) << 58)).to_u64
    bytes[31] = (((values[43] & 70368744177663_u64) >> 6) |
                 ((values[44] & 70368744177663_u64) << 40)).to_u64
    bytes[32] = (((values[44] & 70368744177663_u64) >> 24) |
                 ((values[45] & 70368744177663_u64) << 22)).to_u64
    bytes[33] = (((values[45] & 70368744177663_u64) >> 42) |
                 ((values[46] & 70368744177663_u64) << 4) |
                 ((values[47] & 70368744177663_u64) << 50)).to_u64
    bytes[34] = (((values[47] & 70368744177663_u64) >> 14) |
                 ((values[48] & 70368744177663_u64) << 32)).to_u64
    bytes[35] = (((values[48] & 70368744177663_u64) >> 32) |
                 ((values[49] & 70368744177663_u64) << 14) |
                 ((values[50] & 70368744177663_u64) << 60)).to_u64
    bytes[36] = (((values[50] & 70368744177663_u64) >> 4) |
                 ((values[51] & 70368744177663_u64) << 42)).to_u64
    bytes[37] = (((values[51] & 70368744177663_u64) >> 22) |
                 ((values[52] & 70368744177663_u64) << 24)).to_u64
    bytes[38] = (((values[52] & 70368744177663_u64) >> 40) |
                 ((values[53] & 70368744177663_u64) << 6) |
                 ((values[54] & 70368744177663_u64) << 52)).to_u64
    bytes[39] = (((values[54] & 70368744177663_u64) >> 12) |
                 ((values[55] & 70368744177663_u64) << 34)).to_u64
    bytes[40] = (((values[55] & 70368744177663_u64) >> 30) |
                 ((values[56] & 70368744177663_u64) << 16) |
                 ((values[57] & 70368744177663_u64) << 62)).to_u64
    bytes[41] = (((values[57] & 70368744177663_u64) >> 2) |
                 ((values[58] & 70368744177663_u64) << 44)).to_u64
    bytes[42] = (((values[58] & 70368744177663_u64) >> 20) |
                 ((values[59] & 70368744177663_u64) << 26)).to_u64
    bytes[43] = (((values[59] & 70368744177663_u64) >> 38) |
                 ((values[60] & 70368744177663_u64) << 8) |
                 ((values[61] & 70368744177663_u64) << 54)).to_u64
    bytes[44] = (((values[61] & 70368744177663_u64) >> 10) |
                 ((values[62] & 70368744177663_u64) << 36)).to_u64
    bytes[45] = (((values[62] & 70368744177663_u64) >> 28) |
                 ((values[63] & 70368744177663_u64) << 18)).to_u64
    bytes
  end

  def self.unpack46(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 70368744177663_u64)).to_i64
    values[1] = (((bytes[0] >> 46) & 70368744177663_u64) | ((bytes[1] & 268435455_u64) << 18)).to_i64
    values[2] = (((bytes[1] >> 28) & 70368744177663_u64) | ((bytes[2] & 1023_u64) << 36)).to_i64
    values[3] = (((bytes[2] >> 10) & 70368744177663_u64)).to_i64
    values[4] = (((bytes[2] >> 56) & 70368744177663_u64) | ((bytes[3] & 274877906943_u64) << 8)).to_i64
    values[5] = (((bytes[3] >> 38) & 70368744177663_u64) | ((bytes[4] & 1048575_u64) << 26)).to_i64
    values[6] = (((bytes[4] >> 20) & 70368744177663_u64) | ((bytes[5] & 3_u64) << 44)).to_i64
    values[7] = (((bytes[5] >> 2) & 70368744177663_u64)).to_i64
    values[8] = (((bytes[5] >> 48) & 70368744177663_u64) | ((bytes[6] & 1073741823_u64) << 16)).to_i64
    values[9] = (((bytes[6] >> 30) & 70368744177663_u64) | ((bytes[7] & 4095_u64) << 34)).to_i64
    values[10] = (((bytes[7] >> 12) & 70368744177663_u64)).to_i64
    values[11] = (((bytes[7] >> 58) & 70368744177663_u64) | ((bytes[8] & 1099511627775_u64) << 6)).to_i64
    values[12] = (((bytes[8] >> 40) & 70368744177663_u64) | ((bytes[9] & 4194303_u64) << 24)).to_i64
    values[13] = (((bytes[9] >> 22) & 70368744177663_u64) | ((bytes[10] & 15_u64) << 42)).to_i64
    values[14] = (((bytes[10] >> 4) & 70368744177663_u64)).to_i64
    values[15] = (((bytes[10] >> 50) & 70368744177663_u64) | ((bytes[11] & 4294967295_u64) << 14)).to_i64
    values[16] = (((bytes[11] >> 32) & 70368744177663_u64) | ((bytes[12] & 16383_u64) << 32)).to_i64
    values[17] = (((bytes[12] >> 14) & 70368744177663_u64)).to_i64
    values[18] = (((bytes[12] >> 60) & 70368744177663_u64) | ((bytes[13] & 4398046511103_u64) << 4)).to_i64
    values[19] = (((bytes[13] >> 42) & 70368744177663_u64) | ((bytes[14] & 16777215_u64) << 22)).to_i64
    values[20] = (((bytes[14] >> 24) & 70368744177663_u64) | ((bytes[15] & 63_u64) << 40)).to_i64
    values[21] = (((bytes[15] >> 6) & 70368744177663_u64)).to_i64
    values[22] = (((bytes[15] >> 52) & 70368744177663_u64) | ((bytes[16] & 17179869183_u64) << 12)).to_i64
    values[23] = (((bytes[16] >> 34) & 70368744177663_u64) | ((bytes[17] & 65535_u64) << 30)).to_i64
    values[24] = (((bytes[17] >> 16) & 70368744177663_u64)).to_i64
    values[25] = (((bytes[17] >> 62) & 70368744177663_u64) | ((bytes[18] & 17592186044415_u64) << 2)).to_i64
    values[26] = (((bytes[18] >> 44) & 70368744177663_u64) | ((bytes[19] & 67108863_u64) << 20)).to_i64
    values[27] = (((bytes[19] >> 26) & 70368744177663_u64) | ((bytes[20] & 255_u64) << 38)).to_i64
    values[28] = (((bytes[20] >> 8) & 70368744177663_u64)).to_i64
    values[29] = (((bytes[20] >> 54) & 70368744177663_u64) | ((bytes[21] & 68719476735_u64) << 10)).to_i64
    values[30] = (((bytes[21] >> 36) & 70368744177663_u64) | ((bytes[22] & 262143_u64) << 28)).to_i64
    values[31] = (((bytes[22] >> 18) & 70368744177663_u64)).to_i64
    values[32] = (((bytes[23] >> 0) & 70368744177663_u64)).to_i64
    values[33] = (((bytes[23] >> 46) & 70368744177663_u64) | ((bytes[24] & 268435455_u64) << 18)).to_i64
    values[34] = (((bytes[24] >> 28) & 70368744177663_u64) | ((bytes[25] & 1023_u64) << 36)).to_i64
    values[35] = (((bytes[25] >> 10) & 70368744177663_u64)).to_i64
    values[36] = (((bytes[25] >> 56) & 70368744177663_u64) | ((bytes[26] & 274877906943_u64) << 8)).to_i64
    values[37] = (((bytes[26] >> 38) & 70368744177663_u64) | ((bytes[27] & 1048575_u64) << 26)).to_i64
    values[38] = (((bytes[27] >> 20) & 70368744177663_u64) | ((bytes[28] & 3_u64) << 44)).to_i64
    values[39] = (((bytes[28] >> 2) & 70368744177663_u64)).to_i64
    values[40] = (((bytes[28] >> 48) & 70368744177663_u64) | ((bytes[29] & 1073741823_u64) << 16)).to_i64
    values[41] = (((bytes[29] >> 30) & 70368744177663_u64) | ((bytes[30] & 4095_u64) << 34)).to_i64
    values[42] = (((bytes[30] >> 12) & 70368744177663_u64)).to_i64
    values[43] = (((bytes[30] >> 58) & 70368744177663_u64) | ((bytes[31] & 1099511627775_u64) << 6)).to_i64
    values[44] = (((bytes[31] >> 40) & 70368744177663_u64) | ((bytes[32] & 4194303_u64) << 24)).to_i64
    values[45] = (((bytes[32] >> 22) & 70368744177663_u64) | ((bytes[33] & 15_u64) << 42)).to_i64
    values[46] = (((bytes[33] >> 4) & 70368744177663_u64)).to_i64
    values[47] = (((bytes[33] >> 50) & 70368744177663_u64) | ((bytes[34] & 4294967295_u64) << 14)).to_i64
    values[48] = (((bytes[34] >> 32) & 70368744177663_u64) | ((bytes[35] & 16383_u64) << 32)).to_i64
    values[49] = (((bytes[35] >> 14) & 70368744177663_u64)).to_i64
    values[50] = (((bytes[35] >> 60) & 70368744177663_u64) | ((bytes[36] & 4398046511103_u64) << 4)).to_i64
    values[51] = (((bytes[36] >> 42) & 70368744177663_u64) | ((bytes[37] & 16777215_u64) << 22)).to_i64
    values[52] = (((bytes[37] >> 24) & 70368744177663_u64) | ((bytes[38] & 63_u64) << 40)).to_i64
    values[53] = (((bytes[38] >> 6) & 70368744177663_u64)).to_i64
    values[54] = (((bytes[38] >> 52) & 70368744177663_u64) | ((bytes[39] & 17179869183_u64) << 12)).to_i64
    values[55] = (((bytes[39] >> 34) & 70368744177663_u64) | ((bytes[40] & 65535_u64) << 30)).to_i64
    values[56] = (((bytes[40] >> 16) & 70368744177663_u64)).to_i64
    values[57] = (((bytes[40] >> 62) & 70368744177663_u64) | ((bytes[41] & 17592186044415_u64) << 2)).to_i64
    values[58] = (((bytes[41] >> 44) & 70368744177663_u64) | ((bytes[42] & 67108863_u64) << 20)).to_i64
    values[59] = (((bytes[42] >> 26) & 70368744177663_u64) | ((bytes[43] & 255_u64) << 38)).to_i64
    values[60] = (((bytes[43] >> 8) & 70368744177663_u64)).to_i64
    values[61] = (((bytes[43] >> 54) & 70368744177663_u64) | ((bytes[44] & 68719476735_u64) << 10)).to_i64
    values[62] = (((bytes[44] >> 36) & 70368744177663_u64) | ((bytes[45] & 262143_u64) << 28)).to_i64
    values[63] = (((bytes[45] >> 18) & 70368744177663_u64)).to_i64
    values
  end

  def self.pack47(values)
    bytes = Slice(UInt64).new(47, 0_u64)
    bytes[0] = (((values[0] & 140737488355327_u64) << 0) |
                ((values[1] & 140737488355327_u64) << 47)).to_u64
    bytes[1] = (((values[1] & 140737488355327_u64) >> 17) |
                ((values[2] & 140737488355327_u64) << 30)).to_u64
    bytes[2] = (((values[2] & 140737488355327_u64) >> 34) |
                ((values[3] & 140737488355327_u64) << 13) |
                ((values[4] & 140737488355327_u64) << 60)).to_u64
    bytes[3] = (((values[4] & 140737488355327_u64) >> 4) |
                ((values[5] & 140737488355327_u64) << 43)).to_u64
    bytes[4] = (((values[5] & 140737488355327_u64) >> 21) |
                ((values[6] & 140737488355327_u64) << 26)).to_u64
    bytes[5] = (((values[6] & 140737488355327_u64) >> 38) |
                ((values[7] & 140737488355327_u64) << 9) |
                ((values[8] & 140737488355327_u64) << 56)).to_u64
    bytes[6] = (((values[8] & 140737488355327_u64) >> 8) |
                ((values[9] & 140737488355327_u64) << 39)).to_u64
    bytes[7] = (((values[9] & 140737488355327_u64) >> 25) |
                ((values[10] & 140737488355327_u64) << 22)).to_u64
    bytes[8] = (((values[10] & 140737488355327_u64) >> 42) |
                ((values[11] & 140737488355327_u64) << 5) |
                ((values[12] & 140737488355327_u64) << 52)).to_u64
    bytes[9] = (((values[12] & 140737488355327_u64) >> 12) |
                ((values[13] & 140737488355327_u64) << 35)).to_u64
    bytes[10] = (((values[13] & 140737488355327_u64) >> 29) |
                 ((values[14] & 140737488355327_u64) << 18)).to_u64
    bytes[11] = (((values[14] & 140737488355327_u64) >> 46) |
                 ((values[15] & 140737488355327_u64) << 1) |
                 ((values[16] & 140737488355327_u64) << 48)).to_u64
    bytes[12] = (((values[16] & 140737488355327_u64) >> 16) |
                 ((values[17] & 140737488355327_u64) << 31)).to_u64
    bytes[13] = (((values[17] & 140737488355327_u64) >> 33) |
                 ((values[18] & 140737488355327_u64) << 14) |
                 ((values[19] & 140737488355327_u64) << 61)).to_u64
    bytes[14] = (((values[19] & 140737488355327_u64) >> 3) |
                 ((values[20] & 140737488355327_u64) << 44)).to_u64
    bytes[15] = (((values[20] & 140737488355327_u64) >> 20) |
                 ((values[21] & 140737488355327_u64) << 27)).to_u64
    bytes[16] = (((values[21] & 140737488355327_u64) >> 37) |
                 ((values[22] & 140737488355327_u64) << 10) |
                 ((values[23] & 140737488355327_u64) << 57)).to_u64
    bytes[17] = (((values[23] & 140737488355327_u64) >> 7) |
                 ((values[24] & 140737488355327_u64) << 40)).to_u64
    bytes[18] = (((values[24] & 140737488355327_u64) >> 24) |
                 ((values[25] & 140737488355327_u64) << 23)).to_u64
    bytes[19] = (((values[25] & 140737488355327_u64) >> 41) |
                 ((values[26] & 140737488355327_u64) << 6) |
                 ((values[27] & 140737488355327_u64) << 53)).to_u64
    bytes[20] = (((values[27] & 140737488355327_u64) >> 11) |
                 ((values[28] & 140737488355327_u64) << 36)).to_u64
    bytes[21] = (((values[28] & 140737488355327_u64) >> 28) |
                 ((values[29] & 140737488355327_u64) << 19)).to_u64
    bytes[22] = (((values[29] & 140737488355327_u64) >> 45) |
                 ((values[30] & 140737488355327_u64) << 2) |
                 ((values[31] & 140737488355327_u64) << 49)).to_u64
    bytes[23] = (((values[31] & 140737488355327_u64) >> 15) |
                 ((values[32] & 140737488355327_u64) << 32)).to_u64
    bytes[24] = (((values[32] & 140737488355327_u64) >> 32) |
                 ((values[33] & 140737488355327_u64) << 15) |
                 ((values[34] & 140737488355327_u64) << 62)).to_u64
    bytes[25] = (((values[34] & 140737488355327_u64) >> 2) |
                 ((values[35] & 140737488355327_u64) << 45)).to_u64
    bytes[26] = (((values[35] & 140737488355327_u64) >> 19) |
                 ((values[36] & 140737488355327_u64) << 28)).to_u64
    bytes[27] = (((values[36] & 140737488355327_u64) >> 36) |
                 ((values[37] & 140737488355327_u64) << 11) |
                 ((values[38] & 140737488355327_u64) << 58)).to_u64
    bytes[28] = (((values[38] & 140737488355327_u64) >> 6) |
                 ((values[39] & 140737488355327_u64) << 41)).to_u64
    bytes[29] = (((values[39] & 140737488355327_u64) >> 23) |
                 ((values[40] & 140737488355327_u64) << 24)).to_u64
    bytes[30] = (((values[40] & 140737488355327_u64) >> 40) |
                 ((values[41] & 140737488355327_u64) << 7) |
                 ((values[42] & 140737488355327_u64) << 54)).to_u64
    bytes[31] = (((values[42] & 140737488355327_u64) >> 10) |
                 ((values[43] & 140737488355327_u64) << 37)).to_u64
    bytes[32] = (((values[43] & 140737488355327_u64) >> 27) |
                 ((values[44] & 140737488355327_u64) << 20)).to_u64
    bytes[33] = (((values[44] & 140737488355327_u64) >> 44) |
                 ((values[45] & 140737488355327_u64) << 3) |
                 ((values[46] & 140737488355327_u64) << 50)).to_u64
    bytes[34] = (((values[46] & 140737488355327_u64) >> 14) |
                 ((values[47] & 140737488355327_u64) << 33)).to_u64
    bytes[35] = (((values[47] & 140737488355327_u64) >> 31) |
                 ((values[48] & 140737488355327_u64) << 16) |
                 ((values[49] & 140737488355327_u64) << 63)).to_u64
    bytes[36] = (((values[49] & 140737488355327_u64) >> 1) |
                 ((values[50] & 140737488355327_u64) << 46)).to_u64
    bytes[37] = (((values[50] & 140737488355327_u64) >> 18) |
                 ((values[51] & 140737488355327_u64) << 29)).to_u64
    bytes[38] = (((values[51] & 140737488355327_u64) >> 35) |
                 ((values[52] & 140737488355327_u64) << 12) |
                 ((values[53] & 140737488355327_u64) << 59)).to_u64
    bytes[39] = (((values[53] & 140737488355327_u64) >> 5) |
                 ((values[54] & 140737488355327_u64) << 42)).to_u64
    bytes[40] = (((values[54] & 140737488355327_u64) >> 22) |
                 ((values[55] & 140737488355327_u64) << 25)).to_u64
    bytes[41] = (((values[55] & 140737488355327_u64) >> 39) |
                 ((values[56] & 140737488355327_u64) << 8) |
                 ((values[57] & 140737488355327_u64) << 55)).to_u64
    bytes[42] = (((values[57] & 140737488355327_u64) >> 9) |
                 ((values[58] & 140737488355327_u64) << 38)).to_u64
    bytes[43] = (((values[58] & 140737488355327_u64) >> 26) |
                 ((values[59] & 140737488355327_u64) << 21)).to_u64
    bytes[44] = (((values[59] & 140737488355327_u64) >> 43) |
                 ((values[60] & 140737488355327_u64) << 4) |
                 ((values[61] & 140737488355327_u64) << 51)).to_u64
    bytes[45] = (((values[61] & 140737488355327_u64) >> 13) |
                 ((values[62] & 140737488355327_u64) << 34)).to_u64
    bytes[46] = (((values[62] & 140737488355327_u64) >> 30) |
                 ((values[63] & 140737488355327_u64) << 17)).to_u64
    bytes
  end

  def self.unpack47(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 140737488355327_u64)).to_i64
    values[1] = (((bytes[0] >> 47) & 140737488355327_u64) | ((bytes[1] & 1073741823_u64) << 17)).to_i64
    values[2] = (((bytes[1] >> 30) & 140737488355327_u64) | ((bytes[2] & 8191_u64) << 34)).to_i64
    values[3] = (((bytes[2] >> 13) & 140737488355327_u64)).to_i64
    values[4] = (((bytes[2] >> 60) & 140737488355327_u64) | ((bytes[3] & 8796093022207_u64) << 4)).to_i64
    values[5] = (((bytes[3] >> 43) & 140737488355327_u64) | ((bytes[4] & 67108863_u64) << 21)).to_i64
    values[6] = (((bytes[4] >> 26) & 140737488355327_u64) | ((bytes[5] & 511_u64) << 38)).to_i64
    values[7] = (((bytes[5] >> 9) & 140737488355327_u64)).to_i64
    values[8] = (((bytes[5] >> 56) & 140737488355327_u64) | ((bytes[6] & 549755813887_u64) << 8)).to_i64
    values[9] = (((bytes[6] >> 39) & 140737488355327_u64) | ((bytes[7] & 4194303_u64) << 25)).to_i64
    values[10] = (((bytes[7] >> 22) & 140737488355327_u64) | ((bytes[8] & 31_u64) << 42)).to_i64
    values[11] = (((bytes[8] >> 5) & 140737488355327_u64)).to_i64
    values[12] = (((bytes[8] >> 52) & 140737488355327_u64) | ((bytes[9] & 34359738367_u64) << 12)).to_i64
    values[13] = (((bytes[9] >> 35) & 140737488355327_u64) | ((bytes[10] & 262143_u64) << 29)).to_i64
    values[14] = (((bytes[10] >> 18) & 140737488355327_u64) | ((bytes[11] & 1_u64) << 46)).to_i64
    values[15] = (((bytes[11] >> 1) & 140737488355327_u64)).to_i64
    values[16] = (((bytes[11] >> 48) & 140737488355327_u64) | ((bytes[12] & 2147483647_u64) << 16)).to_i64
    values[17] = (((bytes[12] >> 31) & 140737488355327_u64) | ((bytes[13] & 16383_u64) << 33)).to_i64
    values[18] = (((bytes[13] >> 14) & 140737488355327_u64)).to_i64
    values[19] = (((bytes[13] >> 61) & 140737488355327_u64) | ((bytes[14] & 17592186044415_u64) << 3)).to_i64
    values[20] = (((bytes[14] >> 44) & 140737488355327_u64) | ((bytes[15] & 134217727_u64) << 20)).to_i64
    values[21] = (((bytes[15] >> 27) & 140737488355327_u64) | ((bytes[16] & 1023_u64) << 37)).to_i64
    values[22] = (((bytes[16] >> 10) & 140737488355327_u64)).to_i64
    values[23] = (((bytes[16] >> 57) & 140737488355327_u64) | ((bytes[17] & 1099511627775_u64) << 7)).to_i64
    values[24] = (((bytes[17] >> 40) & 140737488355327_u64) | ((bytes[18] & 8388607_u64) << 24)).to_i64
    values[25] = (((bytes[18] >> 23) & 140737488355327_u64) | ((bytes[19] & 63_u64) << 41)).to_i64
    values[26] = (((bytes[19] >> 6) & 140737488355327_u64)).to_i64
    values[27] = (((bytes[19] >> 53) & 140737488355327_u64) | ((bytes[20] & 68719476735_u64) << 11)).to_i64
    values[28] = (((bytes[20] >> 36) & 140737488355327_u64) | ((bytes[21] & 524287_u64) << 28)).to_i64
    values[29] = (((bytes[21] >> 19) & 140737488355327_u64) | ((bytes[22] & 3_u64) << 45)).to_i64
    values[30] = (((bytes[22] >> 2) & 140737488355327_u64)).to_i64
    values[31] = (((bytes[22] >> 49) & 140737488355327_u64) | ((bytes[23] & 4294967295_u64) << 15)).to_i64
    values[32] = (((bytes[23] >> 32) & 140737488355327_u64) | ((bytes[24] & 32767_u64) << 32)).to_i64
    values[33] = (((bytes[24] >> 15) & 140737488355327_u64)).to_i64
    values[34] = (((bytes[24] >> 62) & 140737488355327_u64) | ((bytes[25] & 35184372088831_u64) << 2)).to_i64
    values[35] = (((bytes[25] >> 45) & 140737488355327_u64) | ((bytes[26] & 268435455_u64) << 19)).to_i64
    values[36] = (((bytes[26] >> 28) & 140737488355327_u64) | ((bytes[27] & 2047_u64) << 36)).to_i64
    values[37] = (((bytes[27] >> 11) & 140737488355327_u64)).to_i64
    values[38] = (((bytes[27] >> 58) & 140737488355327_u64) | ((bytes[28] & 2199023255551_u64) << 6)).to_i64
    values[39] = (((bytes[28] >> 41) & 140737488355327_u64) | ((bytes[29] & 16777215_u64) << 23)).to_i64
    values[40] = (((bytes[29] >> 24) & 140737488355327_u64) | ((bytes[30] & 127_u64) << 40)).to_i64
    values[41] = (((bytes[30] >> 7) & 140737488355327_u64)).to_i64
    values[42] = (((bytes[30] >> 54) & 140737488355327_u64) | ((bytes[31] & 137438953471_u64) << 10)).to_i64
    values[43] = (((bytes[31] >> 37) & 140737488355327_u64) | ((bytes[32] & 1048575_u64) << 27)).to_i64
    values[44] = (((bytes[32] >> 20) & 140737488355327_u64) | ((bytes[33] & 7_u64) << 44)).to_i64
    values[45] = (((bytes[33] >> 3) & 140737488355327_u64)).to_i64
    values[46] = (((bytes[33] >> 50) & 140737488355327_u64) | ((bytes[34] & 8589934591_u64) << 14)).to_i64
    values[47] = (((bytes[34] >> 33) & 140737488355327_u64) | ((bytes[35] & 65535_u64) << 31)).to_i64
    values[48] = (((bytes[35] >> 16) & 140737488355327_u64)).to_i64
    values[49] = (((bytes[35] >> 63) & 140737488355327_u64) | ((bytes[36] & 70368744177663_u64) << 1)).to_i64
    values[50] = (((bytes[36] >> 46) & 140737488355327_u64) | ((bytes[37] & 536870911_u64) << 18)).to_i64
    values[51] = (((bytes[37] >> 29) & 140737488355327_u64) | ((bytes[38] & 4095_u64) << 35)).to_i64
    values[52] = (((bytes[38] >> 12) & 140737488355327_u64)).to_i64
    values[53] = (((bytes[38] >> 59) & 140737488355327_u64) | ((bytes[39] & 4398046511103_u64) << 5)).to_i64
    values[54] = (((bytes[39] >> 42) & 140737488355327_u64) | ((bytes[40] & 33554431_u64) << 22)).to_i64
    values[55] = (((bytes[40] >> 25) & 140737488355327_u64) | ((bytes[41] & 255_u64) << 39)).to_i64
    values[56] = (((bytes[41] >> 8) & 140737488355327_u64)).to_i64
    values[57] = (((bytes[41] >> 55) & 140737488355327_u64) | ((bytes[42] & 274877906943_u64) << 9)).to_i64
    values[58] = (((bytes[42] >> 38) & 140737488355327_u64) | ((bytes[43] & 2097151_u64) << 26)).to_i64
    values[59] = (((bytes[43] >> 21) & 140737488355327_u64) | ((bytes[44] & 15_u64) << 43)).to_i64
    values[60] = (((bytes[44] >> 4) & 140737488355327_u64)).to_i64
    values[61] = (((bytes[44] >> 51) & 140737488355327_u64) | ((bytes[45] & 17179869183_u64) << 13)).to_i64
    values[62] = (((bytes[45] >> 34) & 140737488355327_u64) | ((bytes[46] & 131071_u64) << 30)).to_i64
    values[63] = (((bytes[46] >> 17) & 140737488355327_u64)).to_i64
    values
  end

  def self.pack48(values)
    bytes = Slice(UInt64).new(48, 0_u64)
    bytes[0] = (((values[0] & 281474976710655_u64) << 0) |
                ((values[1] & 281474976710655_u64) << 48)).to_u64
    bytes[1] = (((values[1] & 281474976710655_u64) >> 16) |
                ((values[2] & 281474976710655_u64) << 32)).to_u64
    bytes[2] = (((values[2] & 281474976710655_u64) >> 32) |
                ((values[3] & 281474976710655_u64) << 16)).to_u64
    bytes[3] = (((values[4] & 281474976710655_u64) << 0) |
                ((values[5] & 281474976710655_u64) << 48)).to_u64
    bytes[4] = (((values[5] & 281474976710655_u64) >> 16) |
                ((values[6] & 281474976710655_u64) << 32)).to_u64
    bytes[5] = (((values[6] & 281474976710655_u64) >> 32) |
                ((values[7] & 281474976710655_u64) << 16)).to_u64
    bytes[6] = (((values[8] & 281474976710655_u64) << 0) |
                ((values[9] & 281474976710655_u64) << 48)).to_u64
    bytes[7] = (((values[9] & 281474976710655_u64) >> 16) |
                ((values[10] & 281474976710655_u64) << 32)).to_u64
    bytes[8] = (((values[10] & 281474976710655_u64) >> 32) |
                ((values[11] & 281474976710655_u64) << 16)).to_u64
    bytes[9] = (((values[12] & 281474976710655_u64) << 0) |
                ((values[13] & 281474976710655_u64) << 48)).to_u64
    bytes[10] = (((values[13] & 281474976710655_u64) >> 16) |
                 ((values[14] & 281474976710655_u64) << 32)).to_u64
    bytes[11] = (((values[14] & 281474976710655_u64) >> 32) |
                 ((values[15] & 281474976710655_u64) << 16)).to_u64
    bytes[12] = (((values[16] & 281474976710655_u64) << 0) |
                 ((values[17] & 281474976710655_u64) << 48)).to_u64
    bytes[13] = (((values[17] & 281474976710655_u64) >> 16) |
                 ((values[18] & 281474976710655_u64) << 32)).to_u64
    bytes[14] = (((values[18] & 281474976710655_u64) >> 32) |
                 ((values[19] & 281474976710655_u64) << 16)).to_u64
    bytes[15] = (((values[20] & 281474976710655_u64) << 0) |
                 ((values[21] & 281474976710655_u64) << 48)).to_u64
    bytes[16] = (((values[21] & 281474976710655_u64) >> 16) |
                 ((values[22] & 281474976710655_u64) << 32)).to_u64
    bytes[17] = (((values[22] & 281474976710655_u64) >> 32) |
                 ((values[23] & 281474976710655_u64) << 16)).to_u64
    bytes[18] = (((values[24] & 281474976710655_u64) << 0) |
                 ((values[25] & 281474976710655_u64) << 48)).to_u64
    bytes[19] = (((values[25] & 281474976710655_u64) >> 16) |
                 ((values[26] & 281474976710655_u64) << 32)).to_u64
    bytes[20] = (((values[26] & 281474976710655_u64) >> 32) |
                 ((values[27] & 281474976710655_u64) << 16)).to_u64
    bytes[21] = (((values[28] & 281474976710655_u64) << 0) |
                 ((values[29] & 281474976710655_u64) << 48)).to_u64
    bytes[22] = (((values[29] & 281474976710655_u64) >> 16) |
                 ((values[30] & 281474976710655_u64) << 32)).to_u64
    bytes[23] = (((values[30] & 281474976710655_u64) >> 32) |
                 ((values[31] & 281474976710655_u64) << 16)).to_u64
    bytes[24] = (((values[32] & 281474976710655_u64) << 0) |
                 ((values[33] & 281474976710655_u64) << 48)).to_u64
    bytes[25] = (((values[33] & 281474976710655_u64) >> 16) |
                 ((values[34] & 281474976710655_u64) << 32)).to_u64
    bytes[26] = (((values[34] & 281474976710655_u64) >> 32) |
                 ((values[35] & 281474976710655_u64) << 16)).to_u64
    bytes[27] = (((values[36] & 281474976710655_u64) << 0) |
                 ((values[37] & 281474976710655_u64) << 48)).to_u64
    bytes[28] = (((values[37] & 281474976710655_u64) >> 16) |
                 ((values[38] & 281474976710655_u64) << 32)).to_u64
    bytes[29] = (((values[38] & 281474976710655_u64) >> 32) |
                 ((values[39] & 281474976710655_u64) << 16)).to_u64
    bytes[30] = (((values[40] & 281474976710655_u64) << 0) |
                 ((values[41] & 281474976710655_u64) << 48)).to_u64
    bytes[31] = (((values[41] & 281474976710655_u64) >> 16) |
                 ((values[42] & 281474976710655_u64) << 32)).to_u64
    bytes[32] = (((values[42] & 281474976710655_u64) >> 32) |
                 ((values[43] & 281474976710655_u64) << 16)).to_u64
    bytes[33] = (((values[44] & 281474976710655_u64) << 0) |
                 ((values[45] & 281474976710655_u64) << 48)).to_u64
    bytes[34] = (((values[45] & 281474976710655_u64) >> 16) |
                 ((values[46] & 281474976710655_u64) << 32)).to_u64
    bytes[35] = (((values[46] & 281474976710655_u64) >> 32) |
                 ((values[47] & 281474976710655_u64) << 16)).to_u64
    bytes[36] = (((values[48] & 281474976710655_u64) << 0) |
                 ((values[49] & 281474976710655_u64) << 48)).to_u64
    bytes[37] = (((values[49] & 281474976710655_u64) >> 16) |
                 ((values[50] & 281474976710655_u64) << 32)).to_u64
    bytes[38] = (((values[50] & 281474976710655_u64) >> 32) |
                 ((values[51] & 281474976710655_u64) << 16)).to_u64
    bytes[39] = (((values[52] & 281474976710655_u64) << 0) |
                 ((values[53] & 281474976710655_u64) << 48)).to_u64
    bytes[40] = (((values[53] & 281474976710655_u64) >> 16) |
                 ((values[54] & 281474976710655_u64) << 32)).to_u64
    bytes[41] = (((values[54] & 281474976710655_u64) >> 32) |
                 ((values[55] & 281474976710655_u64) << 16)).to_u64
    bytes[42] = (((values[56] & 281474976710655_u64) << 0) |
                 ((values[57] & 281474976710655_u64) << 48)).to_u64
    bytes[43] = (((values[57] & 281474976710655_u64) >> 16) |
                 ((values[58] & 281474976710655_u64) << 32)).to_u64
    bytes[44] = (((values[58] & 281474976710655_u64) >> 32) |
                 ((values[59] & 281474976710655_u64) << 16)).to_u64
    bytes[45] = (((values[60] & 281474976710655_u64) << 0) |
                 ((values[61] & 281474976710655_u64) << 48)).to_u64
    bytes[46] = (((values[61] & 281474976710655_u64) >> 16) |
                 ((values[62] & 281474976710655_u64) << 32)).to_u64
    bytes[47] = (((values[62] & 281474976710655_u64) >> 32) |
                 ((values[63] & 281474976710655_u64) << 16)).to_u64
    bytes
  end

  def self.unpack48(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 281474976710655_u64)).to_i64
    values[1] = (((bytes[0] >> 48) & 281474976710655_u64) | ((bytes[1] & 4294967295_u64) << 16)).to_i64
    values[2] = (((bytes[1] >> 32) & 281474976710655_u64) | ((bytes[2] & 65535_u64) << 32)).to_i64
    values[3] = (((bytes[2] >> 16) & 281474976710655_u64)).to_i64
    values[4] = (((bytes[3] >> 0) & 281474976710655_u64)).to_i64
    values[5] = (((bytes[3] >> 48) & 281474976710655_u64) | ((bytes[4] & 4294967295_u64) << 16)).to_i64
    values[6] = (((bytes[4] >> 32) & 281474976710655_u64) | ((bytes[5] & 65535_u64) << 32)).to_i64
    values[7] = (((bytes[5] >> 16) & 281474976710655_u64)).to_i64
    values[8] = (((bytes[6] >> 0) & 281474976710655_u64)).to_i64
    values[9] = (((bytes[6] >> 48) & 281474976710655_u64) | ((bytes[7] & 4294967295_u64) << 16)).to_i64
    values[10] = (((bytes[7] >> 32) & 281474976710655_u64) | ((bytes[8] & 65535_u64) << 32)).to_i64
    values[11] = (((bytes[8] >> 16) & 281474976710655_u64)).to_i64
    values[12] = (((bytes[9] >> 0) & 281474976710655_u64)).to_i64
    values[13] = (((bytes[9] >> 48) & 281474976710655_u64) | ((bytes[10] & 4294967295_u64) << 16)).to_i64
    values[14] = (((bytes[10] >> 32) & 281474976710655_u64) | ((bytes[11] & 65535_u64) << 32)).to_i64
    values[15] = (((bytes[11] >> 16) & 281474976710655_u64)).to_i64
    values[16] = (((bytes[12] >> 0) & 281474976710655_u64)).to_i64
    values[17] = (((bytes[12] >> 48) & 281474976710655_u64) | ((bytes[13] & 4294967295_u64) << 16)).to_i64
    values[18] = (((bytes[13] >> 32) & 281474976710655_u64) | ((bytes[14] & 65535_u64) << 32)).to_i64
    values[19] = (((bytes[14] >> 16) & 281474976710655_u64)).to_i64
    values[20] = (((bytes[15] >> 0) & 281474976710655_u64)).to_i64
    values[21] = (((bytes[15] >> 48) & 281474976710655_u64) | ((bytes[16] & 4294967295_u64) << 16)).to_i64
    values[22] = (((bytes[16] >> 32) & 281474976710655_u64) | ((bytes[17] & 65535_u64) << 32)).to_i64
    values[23] = (((bytes[17] >> 16) & 281474976710655_u64)).to_i64
    values[24] = (((bytes[18] >> 0) & 281474976710655_u64)).to_i64
    values[25] = (((bytes[18] >> 48) & 281474976710655_u64) | ((bytes[19] & 4294967295_u64) << 16)).to_i64
    values[26] = (((bytes[19] >> 32) & 281474976710655_u64) | ((bytes[20] & 65535_u64) << 32)).to_i64
    values[27] = (((bytes[20] >> 16) & 281474976710655_u64)).to_i64
    values[28] = (((bytes[21] >> 0) & 281474976710655_u64)).to_i64
    values[29] = (((bytes[21] >> 48) & 281474976710655_u64) | ((bytes[22] & 4294967295_u64) << 16)).to_i64
    values[30] = (((bytes[22] >> 32) & 281474976710655_u64) | ((bytes[23] & 65535_u64) << 32)).to_i64
    values[31] = (((bytes[23] >> 16) & 281474976710655_u64)).to_i64
    values[32] = (((bytes[24] >> 0) & 281474976710655_u64)).to_i64
    values[33] = (((bytes[24] >> 48) & 281474976710655_u64) | ((bytes[25] & 4294967295_u64) << 16)).to_i64
    values[34] = (((bytes[25] >> 32) & 281474976710655_u64) | ((bytes[26] & 65535_u64) << 32)).to_i64
    values[35] = (((bytes[26] >> 16) & 281474976710655_u64)).to_i64
    values[36] = (((bytes[27] >> 0) & 281474976710655_u64)).to_i64
    values[37] = (((bytes[27] >> 48) & 281474976710655_u64) | ((bytes[28] & 4294967295_u64) << 16)).to_i64
    values[38] = (((bytes[28] >> 32) & 281474976710655_u64) | ((bytes[29] & 65535_u64) << 32)).to_i64
    values[39] = (((bytes[29] >> 16) & 281474976710655_u64)).to_i64
    values[40] = (((bytes[30] >> 0) & 281474976710655_u64)).to_i64
    values[41] = (((bytes[30] >> 48) & 281474976710655_u64) | ((bytes[31] & 4294967295_u64) << 16)).to_i64
    values[42] = (((bytes[31] >> 32) & 281474976710655_u64) | ((bytes[32] & 65535_u64) << 32)).to_i64
    values[43] = (((bytes[32] >> 16) & 281474976710655_u64)).to_i64
    values[44] = (((bytes[33] >> 0) & 281474976710655_u64)).to_i64
    values[45] = (((bytes[33] >> 48) & 281474976710655_u64) | ((bytes[34] & 4294967295_u64) << 16)).to_i64
    values[46] = (((bytes[34] >> 32) & 281474976710655_u64) | ((bytes[35] & 65535_u64) << 32)).to_i64
    values[47] = (((bytes[35] >> 16) & 281474976710655_u64)).to_i64
    values[48] = (((bytes[36] >> 0) & 281474976710655_u64)).to_i64
    values[49] = (((bytes[36] >> 48) & 281474976710655_u64) | ((bytes[37] & 4294967295_u64) << 16)).to_i64
    values[50] = (((bytes[37] >> 32) & 281474976710655_u64) | ((bytes[38] & 65535_u64) << 32)).to_i64
    values[51] = (((bytes[38] >> 16) & 281474976710655_u64)).to_i64
    values[52] = (((bytes[39] >> 0) & 281474976710655_u64)).to_i64
    values[53] = (((bytes[39] >> 48) & 281474976710655_u64) | ((bytes[40] & 4294967295_u64) << 16)).to_i64
    values[54] = (((bytes[40] >> 32) & 281474976710655_u64) | ((bytes[41] & 65535_u64) << 32)).to_i64
    values[55] = (((bytes[41] >> 16) & 281474976710655_u64)).to_i64
    values[56] = (((bytes[42] >> 0) & 281474976710655_u64)).to_i64
    values[57] = (((bytes[42] >> 48) & 281474976710655_u64) | ((bytes[43] & 4294967295_u64) << 16)).to_i64
    values[58] = (((bytes[43] >> 32) & 281474976710655_u64) | ((bytes[44] & 65535_u64) << 32)).to_i64
    values[59] = (((bytes[44] >> 16) & 281474976710655_u64)).to_i64
    values[60] = (((bytes[45] >> 0) & 281474976710655_u64)).to_i64
    values[61] = (((bytes[45] >> 48) & 281474976710655_u64) | ((bytes[46] & 4294967295_u64) << 16)).to_i64
    values[62] = (((bytes[46] >> 32) & 281474976710655_u64) | ((bytes[47] & 65535_u64) << 32)).to_i64
    values[63] = (((bytes[47] >> 16) & 281474976710655_u64)).to_i64
    values
  end

  def self.pack49(values)
    bytes = Slice(UInt64).new(49, 0_u64)
    bytes[0] = (((values[0] & 562949953421311_u64) << 0) |
                ((values[1] & 562949953421311_u64) << 49)).to_u64
    bytes[1] = (((values[1] & 562949953421311_u64) >> 15) |
                ((values[2] & 562949953421311_u64) << 34)).to_u64
    bytes[2] = (((values[2] & 562949953421311_u64) >> 30) |
                ((values[3] & 562949953421311_u64) << 19)).to_u64
    bytes[3] = (((values[3] & 562949953421311_u64) >> 45) |
                ((values[4] & 562949953421311_u64) << 4) |
                ((values[5] & 562949953421311_u64) << 53)).to_u64
    bytes[4] = (((values[5] & 562949953421311_u64) >> 11) |
                ((values[6] & 562949953421311_u64) << 38)).to_u64
    bytes[5] = (((values[6] & 562949953421311_u64) >> 26) |
                ((values[7] & 562949953421311_u64) << 23)).to_u64
    bytes[6] = (((values[7] & 562949953421311_u64) >> 41) |
                ((values[8] & 562949953421311_u64) << 8) |
                ((values[9] & 562949953421311_u64) << 57)).to_u64
    bytes[7] = (((values[9] & 562949953421311_u64) >> 7) |
                ((values[10] & 562949953421311_u64) << 42)).to_u64
    bytes[8] = (((values[10] & 562949953421311_u64) >> 22) |
                ((values[11] & 562949953421311_u64) << 27)).to_u64
    bytes[9] = (((values[11] & 562949953421311_u64) >> 37) |
                ((values[12] & 562949953421311_u64) << 12) |
                ((values[13] & 562949953421311_u64) << 61)).to_u64
    bytes[10] = (((values[13] & 562949953421311_u64) >> 3) |
                 ((values[14] & 562949953421311_u64) << 46)).to_u64
    bytes[11] = (((values[14] & 562949953421311_u64) >> 18) |
                 ((values[15] & 562949953421311_u64) << 31)).to_u64
    bytes[12] = (((values[15] & 562949953421311_u64) >> 33) |
                 ((values[16] & 562949953421311_u64) << 16)).to_u64
    bytes[13] = (((values[16] & 562949953421311_u64) >> 48) |
                 ((values[17] & 562949953421311_u64) << 1) |
                 ((values[18] & 562949953421311_u64) << 50)).to_u64
    bytes[14] = (((values[18] & 562949953421311_u64) >> 14) |
                 ((values[19] & 562949953421311_u64) << 35)).to_u64
    bytes[15] = (((values[19] & 562949953421311_u64) >> 29) |
                 ((values[20] & 562949953421311_u64) << 20)).to_u64
    bytes[16] = (((values[20] & 562949953421311_u64) >> 44) |
                 ((values[21] & 562949953421311_u64) << 5) |
                 ((values[22] & 562949953421311_u64) << 54)).to_u64
    bytes[17] = (((values[22] & 562949953421311_u64) >> 10) |
                 ((values[23] & 562949953421311_u64) << 39)).to_u64
    bytes[18] = (((values[23] & 562949953421311_u64) >> 25) |
                 ((values[24] & 562949953421311_u64) << 24)).to_u64
    bytes[19] = (((values[24] & 562949953421311_u64) >> 40) |
                 ((values[25] & 562949953421311_u64) << 9) |
                 ((values[26] & 562949953421311_u64) << 58)).to_u64
    bytes[20] = (((values[26] & 562949953421311_u64) >> 6) |
                 ((values[27] & 562949953421311_u64) << 43)).to_u64
    bytes[21] = (((values[27] & 562949953421311_u64) >> 21) |
                 ((values[28] & 562949953421311_u64) << 28)).to_u64
    bytes[22] = (((values[28] & 562949953421311_u64) >> 36) |
                 ((values[29] & 562949953421311_u64) << 13) |
                 ((values[30] & 562949953421311_u64) << 62)).to_u64
    bytes[23] = (((values[30] & 562949953421311_u64) >> 2) |
                 ((values[31] & 562949953421311_u64) << 47)).to_u64
    bytes[24] = (((values[31] & 562949953421311_u64) >> 17) |
                 ((values[32] & 562949953421311_u64) << 32)).to_u64
    bytes[25] = (((values[32] & 562949953421311_u64) >> 32) |
                 ((values[33] & 562949953421311_u64) << 17)).to_u64
    bytes[26] = (((values[33] & 562949953421311_u64) >> 47) |
                 ((values[34] & 562949953421311_u64) << 2) |
                 ((values[35] & 562949953421311_u64) << 51)).to_u64
    bytes[27] = (((values[35] & 562949953421311_u64) >> 13) |
                 ((values[36] & 562949953421311_u64) << 36)).to_u64
    bytes[28] = (((values[36] & 562949953421311_u64) >> 28) |
                 ((values[37] & 562949953421311_u64) << 21)).to_u64
    bytes[29] = (((values[37] & 562949953421311_u64) >> 43) |
                 ((values[38] & 562949953421311_u64) << 6) |
                 ((values[39] & 562949953421311_u64) << 55)).to_u64
    bytes[30] = (((values[39] & 562949953421311_u64) >> 9) |
                 ((values[40] & 562949953421311_u64) << 40)).to_u64
    bytes[31] = (((values[40] & 562949953421311_u64) >> 24) |
                 ((values[41] & 562949953421311_u64) << 25)).to_u64
    bytes[32] = (((values[41] & 562949953421311_u64) >> 39) |
                 ((values[42] & 562949953421311_u64) << 10) |
                 ((values[43] & 562949953421311_u64) << 59)).to_u64
    bytes[33] = (((values[43] & 562949953421311_u64) >> 5) |
                 ((values[44] & 562949953421311_u64) << 44)).to_u64
    bytes[34] = (((values[44] & 562949953421311_u64) >> 20) |
                 ((values[45] & 562949953421311_u64) << 29)).to_u64
    bytes[35] = (((values[45] & 562949953421311_u64) >> 35) |
                 ((values[46] & 562949953421311_u64) << 14) |
                 ((values[47] & 562949953421311_u64) << 63)).to_u64
    bytes[36] = (((values[47] & 562949953421311_u64) >> 1) |
                 ((values[48] & 562949953421311_u64) << 48)).to_u64
    bytes[37] = (((values[48] & 562949953421311_u64) >> 16) |
                 ((values[49] & 562949953421311_u64) << 33)).to_u64
    bytes[38] = (((values[49] & 562949953421311_u64) >> 31) |
                 ((values[50] & 562949953421311_u64) << 18)).to_u64
    bytes[39] = (((values[50] & 562949953421311_u64) >> 46) |
                 ((values[51] & 562949953421311_u64) << 3) |
                 ((values[52] & 562949953421311_u64) << 52)).to_u64
    bytes[40] = (((values[52] & 562949953421311_u64) >> 12) |
                 ((values[53] & 562949953421311_u64) << 37)).to_u64
    bytes[41] = (((values[53] & 562949953421311_u64) >> 27) |
                 ((values[54] & 562949953421311_u64) << 22)).to_u64
    bytes[42] = (((values[54] & 562949953421311_u64) >> 42) |
                 ((values[55] & 562949953421311_u64) << 7) |
                 ((values[56] & 562949953421311_u64) << 56)).to_u64
    bytes[43] = (((values[56] & 562949953421311_u64) >> 8) |
                 ((values[57] & 562949953421311_u64) << 41)).to_u64
    bytes[44] = (((values[57] & 562949953421311_u64) >> 23) |
                 ((values[58] & 562949953421311_u64) << 26)).to_u64
    bytes[45] = (((values[58] & 562949953421311_u64) >> 38) |
                 ((values[59] & 562949953421311_u64) << 11) |
                 ((values[60] & 562949953421311_u64) << 60)).to_u64
    bytes[46] = (((values[60] & 562949953421311_u64) >> 4) |
                 ((values[61] & 562949953421311_u64) << 45)).to_u64
    bytes[47] = (((values[61] & 562949953421311_u64) >> 19) |
                 ((values[62] & 562949953421311_u64) << 30)).to_u64
    bytes[48] = (((values[62] & 562949953421311_u64) >> 34) |
                 ((values[63] & 562949953421311_u64) << 15)).to_u64
    bytes
  end

  def self.unpack49(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 562949953421311_u64)).to_i64
    values[1] = (((bytes[0] >> 49) & 562949953421311_u64) | ((bytes[1] & 17179869183_u64) << 15)).to_i64
    values[2] = (((bytes[1] >> 34) & 562949953421311_u64) | ((bytes[2] & 524287_u64) << 30)).to_i64
    values[3] = (((bytes[2] >> 19) & 562949953421311_u64) | ((bytes[3] & 15_u64) << 45)).to_i64
    values[4] = (((bytes[3] >> 4) & 562949953421311_u64)).to_i64
    values[5] = (((bytes[3] >> 53) & 562949953421311_u64) | ((bytes[4] & 274877906943_u64) << 11)).to_i64
    values[6] = (((bytes[4] >> 38) & 562949953421311_u64) | ((bytes[5] & 8388607_u64) << 26)).to_i64
    values[7] = (((bytes[5] >> 23) & 562949953421311_u64) | ((bytes[6] & 255_u64) << 41)).to_i64
    values[8] = (((bytes[6] >> 8) & 562949953421311_u64)).to_i64
    values[9] = (((bytes[6] >> 57) & 562949953421311_u64) | ((bytes[7] & 4398046511103_u64) << 7)).to_i64
    values[10] = (((bytes[7] >> 42) & 562949953421311_u64) | ((bytes[8] & 134217727_u64) << 22)).to_i64
    values[11] = (((bytes[8] >> 27) & 562949953421311_u64) | ((bytes[9] & 4095_u64) << 37)).to_i64
    values[12] = (((bytes[9] >> 12) & 562949953421311_u64)).to_i64
    values[13] = (((bytes[9] >> 61) & 562949953421311_u64) | ((bytes[10] & 70368744177663_u64) << 3)).to_i64
    values[14] = (((bytes[10] >> 46) & 562949953421311_u64) | ((bytes[11] & 2147483647_u64) << 18)).to_i64
    values[15] = (((bytes[11] >> 31) & 562949953421311_u64) | ((bytes[12] & 65535_u64) << 33)).to_i64
    values[16] = (((bytes[12] >> 16) & 562949953421311_u64) | ((bytes[13] & 1_u64) << 48)).to_i64
    values[17] = (((bytes[13] >> 1) & 562949953421311_u64)).to_i64
    values[18] = (((bytes[13] >> 50) & 562949953421311_u64) | ((bytes[14] & 34359738367_u64) << 14)).to_i64
    values[19] = (((bytes[14] >> 35) & 562949953421311_u64) | ((bytes[15] & 1048575_u64) << 29)).to_i64
    values[20] = (((bytes[15] >> 20) & 562949953421311_u64) | ((bytes[16] & 31_u64) << 44)).to_i64
    values[21] = (((bytes[16] >> 5) & 562949953421311_u64)).to_i64
    values[22] = (((bytes[16] >> 54) & 562949953421311_u64) | ((bytes[17] & 549755813887_u64) << 10)).to_i64
    values[23] = (((bytes[17] >> 39) & 562949953421311_u64) | ((bytes[18] & 16777215_u64) << 25)).to_i64
    values[24] = (((bytes[18] >> 24) & 562949953421311_u64) | ((bytes[19] & 511_u64) << 40)).to_i64
    values[25] = (((bytes[19] >> 9) & 562949953421311_u64)).to_i64
    values[26] = (((bytes[19] >> 58) & 562949953421311_u64) | ((bytes[20] & 8796093022207_u64) << 6)).to_i64
    values[27] = (((bytes[20] >> 43) & 562949953421311_u64) | ((bytes[21] & 268435455_u64) << 21)).to_i64
    values[28] = (((bytes[21] >> 28) & 562949953421311_u64) | ((bytes[22] & 8191_u64) << 36)).to_i64
    values[29] = (((bytes[22] >> 13) & 562949953421311_u64)).to_i64
    values[30] = (((bytes[22] >> 62) & 562949953421311_u64) | ((bytes[23] & 140737488355327_u64) << 2)).to_i64
    values[31] = (((bytes[23] >> 47) & 562949953421311_u64) | ((bytes[24] & 4294967295_u64) << 17)).to_i64
    values[32] = (((bytes[24] >> 32) & 562949953421311_u64) | ((bytes[25] & 131071_u64) << 32)).to_i64
    values[33] = (((bytes[25] >> 17) & 562949953421311_u64) | ((bytes[26] & 3_u64) << 47)).to_i64
    values[34] = (((bytes[26] >> 2) & 562949953421311_u64)).to_i64
    values[35] = (((bytes[26] >> 51) & 562949953421311_u64) | ((bytes[27] & 68719476735_u64) << 13)).to_i64
    values[36] = (((bytes[27] >> 36) & 562949953421311_u64) | ((bytes[28] & 2097151_u64) << 28)).to_i64
    values[37] = (((bytes[28] >> 21) & 562949953421311_u64) | ((bytes[29] & 63_u64) << 43)).to_i64
    values[38] = (((bytes[29] >> 6) & 562949953421311_u64)).to_i64
    values[39] = (((bytes[29] >> 55) & 562949953421311_u64) | ((bytes[30] & 1099511627775_u64) << 9)).to_i64
    values[40] = (((bytes[30] >> 40) & 562949953421311_u64) | ((bytes[31] & 33554431_u64) << 24)).to_i64
    values[41] = (((bytes[31] >> 25) & 562949953421311_u64) | ((bytes[32] & 1023_u64) << 39)).to_i64
    values[42] = (((bytes[32] >> 10) & 562949953421311_u64)).to_i64
    values[43] = (((bytes[32] >> 59) & 562949953421311_u64) | ((bytes[33] & 17592186044415_u64) << 5)).to_i64
    values[44] = (((bytes[33] >> 44) & 562949953421311_u64) | ((bytes[34] & 536870911_u64) << 20)).to_i64
    values[45] = (((bytes[34] >> 29) & 562949953421311_u64) | ((bytes[35] & 16383_u64) << 35)).to_i64
    values[46] = (((bytes[35] >> 14) & 562949953421311_u64)).to_i64
    values[47] = (((bytes[35] >> 63) & 562949953421311_u64) | ((bytes[36] & 281474976710655_u64) << 1)).to_i64
    values[48] = (((bytes[36] >> 48) & 562949953421311_u64) | ((bytes[37] & 8589934591_u64) << 16)).to_i64
    values[49] = (((bytes[37] >> 33) & 562949953421311_u64) | ((bytes[38] & 262143_u64) << 31)).to_i64
    values[50] = (((bytes[38] >> 18) & 562949953421311_u64) | ((bytes[39] & 7_u64) << 46)).to_i64
    values[51] = (((bytes[39] >> 3) & 562949953421311_u64)).to_i64
    values[52] = (((bytes[39] >> 52) & 562949953421311_u64) | ((bytes[40] & 137438953471_u64) << 12)).to_i64
    values[53] = (((bytes[40] >> 37) & 562949953421311_u64) | ((bytes[41] & 4194303_u64) << 27)).to_i64
    values[54] = (((bytes[41] >> 22) & 562949953421311_u64) | ((bytes[42] & 127_u64) << 42)).to_i64
    values[55] = (((bytes[42] >> 7) & 562949953421311_u64)).to_i64
    values[56] = (((bytes[42] >> 56) & 562949953421311_u64) | ((bytes[43] & 2199023255551_u64) << 8)).to_i64
    values[57] = (((bytes[43] >> 41) & 562949953421311_u64) | ((bytes[44] & 67108863_u64) << 23)).to_i64
    values[58] = (((bytes[44] >> 26) & 562949953421311_u64) | ((bytes[45] & 2047_u64) << 38)).to_i64
    values[59] = (((bytes[45] >> 11) & 562949953421311_u64)).to_i64
    values[60] = (((bytes[45] >> 60) & 562949953421311_u64) | ((bytes[46] & 35184372088831_u64) << 4)).to_i64
    values[61] = (((bytes[46] >> 45) & 562949953421311_u64) | ((bytes[47] & 1073741823_u64) << 19)).to_i64
    values[62] = (((bytes[47] >> 30) & 562949953421311_u64) | ((bytes[48] & 32767_u64) << 34)).to_i64
    values[63] = (((bytes[48] >> 15) & 562949953421311_u64)).to_i64
    values
  end

  def self.pack50(values)
    bytes = Slice(UInt64).new(50, 0_u64)
    bytes[0] = (((values[0] & 1125899906842623_u64) << 0) |
                ((values[1] & 1125899906842623_u64) << 50)).to_u64
    bytes[1] = (((values[1] & 1125899906842623_u64) >> 14) |
                ((values[2] & 1125899906842623_u64) << 36)).to_u64
    bytes[2] = (((values[2] & 1125899906842623_u64) >> 28) |
                ((values[3] & 1125899906842623_u64) << 22)).to_u64
    bytes[3] = (((values[3] & 1125899906842623_u64) >> 42) |
                ((values[4] & 1125899906842623_u64) << 8) |
                ((values[5] & 1125899906842623_u64) << 58)).to_u64
    bytes[4] = (((values[5] & 1125899906842623_u64) >> 6) |
                ((values[6] & 1125899906842623_u64) << 44)).to_u64
    bytes[5] = (((values[6] & 1125899906842623_u64) >> 20) |
                ((values[7] & 1125899906842623_u64) << 30)).to_u64
    bytes[6] = (((values[7] & 1125899906842623_u64) >> 34) |
                ((values[8] & 1125899906842623_u64) << 16)).to_u64
    bytes[7] = (((values[8] & 1125899906842623_u64) >> 48) |
                ((values[9] & 1125899906842623_u64) << 2) |
                ((values[10] & 1125899906842623_u64) << 52)).to_u64
    bytes[8] = (((values[10] & 1125899906842623_u64) >> 12) |
                ((values[11] & 1125899906842623_u64) << 38)).to_u64
    bytes[9] = (((values[11] & 1125899906842623_u64) >> 26) |
                ((values[12] & 1125899906842623_u64) << 24)).to_u64
    bytes[10] = (((values[12] & 1125899906842623_u64) >> 40) |
                 ((values[13] & 1125899906842623_u64) << 10) |
                 ((values[14] & 1125899906842623_u64) << 60)).to_u64
    bytes[11] = (((values[14] & 1125899906842623_u64) >> 4) |
                 ((values[15] & 1125899906842623_u64) << 46)).to_u64
    bytes[12] = (((values[15] & 1125899906842623_u64) >> 18) |
                 ((values[16] & 1125899906842623_u64) << 32)).to_u64
    bytes[13] = (((values[16] & 1125899906842623_u64) >> 32) |
                 ((values[17] & 1125899906842623_u64) << 18)).to_u64
    bytes[14] = (((values[17] & 1125899906842623_u64) >> 46) |
                 ((values[18] & 1125899906842623_u64) << 4) |
                 ((values[19] & 1125899906842623_u64) << 54)).to_u64
    bytes[15] = (((values[19] & 1125899906842623_u64) >> 10) |
                 ((values[20] & 1125899906842623_u64) << 40)).to_u64
    bytes[16] = (((values[20] & 1125899906842623_u64) >> 24) |
                 ((values[21] & 1125899906842623_u64) << 26)).to_u64
    bytes[17] = (((values[21] & 1125899906842623_u64) >> 38) |
                 ((values[22] & 1125899906842623_u64) << 12) |
                 ((values[23] & 1125899906842623_u64) << 62)).to_u64
    bytes[18] = (((values[23] & 1125899906842623_u64) >> 2) |
                 ((values[24] & 1125899906842623_u64) << 48)).to_u64
    bytes[19] = (((values[24] & 1125899906842623_u64) >> 16) |
                 ((values[25] & 1125899906842623_u64) << 34)).to_u64
    bytes[20] = (((values[25] & 1125899906842623_u64) >> 30) |
                 ((values[26] & 1125899906842623_u64) << 20)).to_u64
    bytes[21] = (((values[26] & 1125899906842623_u64) >> 44) |
                 ((values[27] & 1125899906842623_u64) << 6) |
                 ((values[28] & 1125899906842623_u64) << 56)).to_u64
    bytes[22] = (((values[28] & 1125899906842623_u64) >> 8) |
                 ((values[29] & 1125899906842623_u64) << 42)).to_u64
    bytes[23] = (((values[29] & 1125899906842623_u64) >> 22) |
                 ((values[30] & 1125899906842623_u64) << 28)).to_u64
    bytes[24] = (((values[30] & 1125899906842623_u64) >> 36) |
                 ((values[31] & 1125899906842623_u64) << 14)).to_u64
    bytes[25] = (((values[32] & 1125899906842623_u64) << 0) |
                 ((values[33] & 1125899906842623_u64) << 50)).to_u64
    bytes[26] = (((values[33] & 1125899906842623_u64) >> 14) |
                 ((values[34] & 1125899906842623_u64) << 36)).to_u64
    bytes[27] = (((values[34] & 1125899906842623_u64) >> 28) |
                 ((values[35] & 1125899906842623_u64) << 22)).to_u64
    bytes[28] = (((values[35] & 1125899906842623_u64) >> 42) |
                 ((values[36] & 1125899906842623_u64) << 8) |
                 ((values[37] & 1125899906842623_u64) << 58)).to_u64
    bytes[29] = (((values[37] & 1125899906842623_u64) >> 6) |
                 ((values[38] & 1125899906842623_u64) << 44)).to_u64
    bytes[30] = (((values[38] & 1125899906842623_u64) >> 20) |
                 ((values[39] & 1125899906842623_u64) << 30)).to_u64
    bytes[31] = (((values[39] & 1125899906842623_u64) >> 34) |
                 ((values[40] & 1125899906842623_u64) << 16)).to_u64
    bytes[32] = (((values[40] & 1125899906842623_u64) >> 48) |
                 ((values[41] & 1125899906842623_u64) << 2) |
                 ((values[42] & 1125899906842623_u64) << 52)).to_u64
    bytes[33] = (((values[42] & 1125899906842623_u64) >> 12) |
                 ((values[43] & 1125899906842623_u64) << 38)).to_u64
    bytes[34] = (((values[43] & 1125899906842623_u64) >> 26) |
                 ((values[44] & 1125899906842623_u64) << 24)).to_u64
    bytes[35] = (((values[44] & 1125899906842623_u64) >> 40) |
                 ((values[45] & 1125899906842623_u64) << 10) |
                 ((values[46] & 1125899906842623_u64) << 60)).to_u64
    bytes[36] = (((values[46] & 1125899906842623_u64) >> 4) |
                 ((values[47] & 1125899906842623_u64) << 46)).to_u64
    bytes[37] = (((values[47] & 1125899906842623_u64) >> 18) |
                 ((values[48] & 1125899906842623_u64) << 32)).to_u64
    bytes[38] = (((values[48] & 1125899906842623_u64) >> 32) |
                 ((values[49] & 1125899906842623_u64) << 18)).to_u64
    bytes[39] = (((values[49] & 1125899906842623_u64) >> 46) |
                 ((values[50] & 1125899906842623_u64) << 4) |
                 ((values[51] & 1125899906842623_u64) << 54)).to_u64
    bytes[40] = (((values[51] & 1125899906842623_u64) >> 10) |
                 ((values[52] & 1125899906842623_u64) << 40)).to_u64
    bytes[41] = (((values[52] & 1125899906842623_u64) >> 24) |
                 ((values[53] & 1125899906842623_u64) << 26)).to_u64
    bytes[42] = (((values[53] & 1125899906842623_u64) >> 38) |
                 ((values[54] & 1125899906842623_u64) << 12) |
                 ((values[55] & 1125899906842623_u64) << 62)).to_u64
    bytes[43] = (((values[55] & 1125899906842623_u64) >> 2) |
                 ((values[56] & 1125899906842623_u64) << 48)).to_u64
    bytes[44] = (((values[56] & 1125899906842623_u64) >> 16) |
                 ((values[57] & 1125899906842623_u64) << 34)).to_u64
    bytes[45] = (((values[57] & 1125899906842623_u64) >> 30) |
                 ((values[58] & 1125899906842623_u64) << 20)).to_u64
    bytes[46] = (((values[58] & 1125899906842623_u64) >> 44) |
                 ((values[59] & 1125899906842623_u64) << 6) |
                 ((values[60] & 1125899906842623_u64) << 56)).to_u64
    bytes[47] = (((values[60] & 1125899906842623_u64) >> 8) |
                 ((values[61] & 1125899906842623_u64) << 42)).to_u64
    bytes[48] = (((values[61] & 1125899906842623_u64) >> 22) |
                 ((values[62] & 1125899906842623_u64) << 28)).to_u64
    bytes[49] = (((values[62] & 1125899906842623_u64) >> 36) |
                 ((values[63] & 1125899906842623_u64) << 14)).to_u64
    bytes
  end

  def self.unpack50(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1125899906842623_u64)).to_i64
    values[1] = (((bytes[0] >> 50) & 1125899906842623_u64) | ((bytes[1] & 68719476735_u64) << 14)).to_i64
    values[2] = (((bytes[1] >> 36) & 1125899906842623_u64) | ((bytes[2] & 4194303_u64) << 28)).to_i64
    values[3] = (((bytes[2] >> 22) & 1125899906842623_u64) | ((bytes[3] & 255_u64) << 42)).to_i64
    values[4] = (((bytes[3] >> 8) & 1125899906842623_u64)).to_i64
    values[5] = (((bytes[3] >> 58) & 1125899906842623_u64) | ((bytes[4] & 17592186044415_u64) << 6)).to_i64
    values[6] = (((bytes[4] >> 44) & 1125899906842623_u64) | ((bytes[5] & 1073741823_u64) << 20)).to_i64
    values[7] = (((bytes[5] >> 30) & 1125899906842623_u64) | ((bytes[6] & 65535_u64) << 34)).to_i64
    values[8] = (((bytes[6] >> 16) & 1125899906842623_u64) | ((bytes[7] & 3_u64) << 48)).to_i64
    values[9] = (((bytes[7] >> 2) & 1125899906842623_u64)).to_i64
    values[10] = (((bytes[7] >> 52) & 1125899906842623_u64) | ((bytes[8] & 274877906943_u64) << 12)).to_i64
    values[11] = (((bytes[8] >> 38) & 1125899906842623_u64) | ((bytes[9] & 16777215_u64) << 26)).to_i64
    values[12] = (((bytes[9] >> 24) & 1125899906842623_u64) | ((bytes[10] & 1023_u64) << 40)).to_i64
    values[13] = (((bytes[10] >> 10) & 1125899906842623_u64)).to_i64
    values[14] = (((bytes[10] >> 60) & 1125899906842623_u64) | ((bytes[11] & 70368744177663_u64) << 4)).to_i64
    values[15] = (((bytes[11] >> 46) & 1125899906842623_u64) | ((bytes[12] & 4294967295_u64) << 18)).to_i64
    values[16] = (((bytes[12] >> 32) & 1125899906842623_u64) | ((bytes[13] & 262143_u64) << 32)).to_i64
    values[17] = (((bytes[13] >> 18) & 1125899906842623_u64) | ((bytes[14] & 15_u64) << 46)).to_i64
    values[18] = (((bytes[14] >> 4) & 1125899906842623_u64)).to_i64
    values[19] = (((bytes[14] >> 54) & 1125899906842623_u64) | ((bytes[15] & 1099511627775_u64) << 10)).to_i64
    values[20] = (((bytes[15] >> 40) & 1125899906842623_u64) | ((bytes[16] & 67108863_u64) << 24)).to_i64
    values[21] = (((bytes[16] >> 26) & 1125899906842623_u64) | ((bytes[17] & 4095_u64) << 38)).to_i64
    values[22] = (((bytes[17] >> 12) & 1125899906842623_u64)).to_i64
    values[23] = (((bytes[17] >> 62) & 1125899906842623_u64) | ((bytes[18] & 281474976710655_u64) << 2)).to_i64
    values[24] = (((bytes[18] >> 48) & 1125899906842623_u64) | ((bytes[19] & 17179869183_u64) << 16)).to_i64
    values[25] = (((bytes[19] >> 34) & 1125899906842623_u64) | ((bytes[20] & 1048575_u64) << 30)).to_i64
    values[26] = (((bytes[20] >> 20) & 1125899906842623_u64) | ((bytes[21] & 63_u64) << 44)).to_i64
    values[27] = (((bytes[21] >> 6) & 1125899906842623_u64)).to_i64
    values[28] = (((bytes[21] >> 56) & 1125899906842623_u64) | ((bytes[22] & 4398046511103_u64) << 8)).to_i64
    values[29] = (((bytes[22] >> 42) & 1125899906842623_u64) | ((bytes[23] & 268435455_u64) << 22)).to_i64
    values[30] = (((bytes[23] >> 28) & 1125899906842623_u64) | ((bytes[24] & 16383_u64) << 36)).to_i64
    values[31] = (((bytes[24] >> 14) & 1125899906842623_u64)).to_i64
    values[32] = (((bytes[25] >> 0) & 1125899906842623_u64)).to_i64
    values[33] = (((bytes[25] >> 50) & 1125899906842623_u64) | ((bytes[26] & 68719476735_u64) << 14)).to_i64
    values[34] = (((bytes[26] >> 36) & 1125899906842623_u64) | ((bytes[27] & 4194303_u64) << 28)).to_i64
    values[35] = (((bytes[27] >> 22) & 1125899906842623_u64) | ((bytes[28] & 255_u64) << 42)).to_i64
    values[36] = (((bytes[28] >> 8) & 1125899906842623_u64)).to_i64
    values[37] = (((bytes[28] >> 58) & 1125899906842623_u64) | ((bytes[29] & 17592186044415_u64) << 6)).to_i64
    values[38] = (((bytes[29] >> 44) & 1125899906842623_u64) | ((bytes[30] & 1073741823_u64) << 20)).to_i64
    values[39] = (((bytes[30] >> 30) & 1125899906842623_u64) | ((bytes[31] & 65535_u64) << 34)).to_i64
    values[40] = (((bytes[31] >> 16) & 1125899906842623_u64) | ((bytes[32] & 3_u64) << 48)).to_i64
    values[41] = (((bytes[32] >> 2) & 1125899906842623_u64)).to_i64
    values[42] = (((bytes[32] >> 52) & 1125899906842623_u64) | ((bytes[33] & 274877906943_u64) << 12)).to_i64
    values[43] = (((bytes[33] >> 38) & 1125899906842623_u64) | ((bytes[34] & 16777215_u64) << 26)).to_i64
    values[44] = (((bytes[34] >> 24) & 1125899906842623_u64) | ((bytes[35] & 1023_u64) << 40)).to_i64
    values[45] = (((bytes[35] >> 10) & 1125899906842623_u64)).to_i64
    values[46] = (((bytes[35] >> 60) & 1125899906842623_u64) | ((bytes[36] & 70368744177663_u64) << 4)).to_i64
    values[47] = (((bytes[36] >> 46) & 1125899906842623_u64) | ((bytes[37] & 4294967295_u64) << 18)).to_i64
    values[48] = (((bytes[37] >> 32) & 1125899906842623_u64) | ((bytes[38] & 262143_u64) << 32)).to_i64
    values[49] = (((bytes[38] >> 18) & 1125899906842623_u64) | ((bytes[39] & 15_u64) << 46)).to_i64
    values[50] = (((bytes[39] >> 4) & 1125899906842623_u64)).to_i64
    values[51] = (((bytes[39] >> 54) & 1125899906842623_u64) | ((bytes[40] & 1099511627775_u64) << 10)).to_i64
    values[52] = (((bytes[40] >> 40) & 1125899906842623_u64) | ((bytes[41] & 67108863_u64) << 24)).to_i64
    values[53] = (((bytes[41] >> 26) & 1125899906842623_u64) | ((bytes[42] & 4095_u64) << 38)).to_i64
    values[54] = (((bytes[42] >> 12) & 1125899906842623_u64)).to_i64
    values[55] = (((bytes[42] >> 62) & 1125899906842623_u64) | ((bytes[43] & 281474976710655_u64) << 2)).to_i64
    values[56] = (((bytes[43] >> 48) & 1125899906842623_u64) | ((bytes[44] & 17179869183_u64) << 16)).to_i64
    values[57] = (((bytes[44] >> 34) & 1125899906842623_u64) | ((bytes[45] & 1048575_u64) << 30)).to_i64
    values[58] = (((bytes[45] >> 20) & 1125899906842623_u64) | ((bytes[46] & 63_u64) << 44)).to_i64
    values[59] = (((bytes[46] >> 6) & 1125899906842623_u64)).to_i64
    values[60] = (((bytes[46] >> 56) & 1125899906842623_u64) | ((bytes[47] & 4398046511103_u64) << 8)).to_i64
    values[61] = (((bytes[47] >> 42) & 1125899906842623_u64) | ((bytes[48] & 268435455_u64) << 22)).to_i64
    values[62] = (((bytes[48] >> 28) & 1125899906842623_u64) | ((bytes[49] & 16383_u64) << 36)).to_i64
    values[63] = (((bytes[49] >> 14) & 1125899906842623_u64)).to_i64
    values
  end

  def self.pack51(values)
    bytes = Slice(UInt64).new(51, 0_u64)
    bytes[0] = (((values[0] & 2251799813685247_u64) << 0) |
                ((values[1] & 2251799813685247_u64) << 51)).to_u64
    bytes[1] = (((values[1] & 2251799813685247_u64) >> 13) |
                ((values[2] & 2251799813685247_u64) << 38)).to_u64
    bytes[2] = (((values[2] & 2251799813685247_u64) >> 26) |
                ((values[3] & 2251799813685247_u64) << 25)).to_u64
    bytes[3] = (((values[3] & 2251799813685247_u64) >> 39) |
                ((values[4] & 2251799813685247_u64) << 12) |
                ((values[5] & 2251799813685247_u64) << 63)).to_u64
    bytes[4] = (((values[5] & 2251799813685247_u64) >> 1) |
                ((values[6] & 2251799813685247_u64) << 50)).to_u64
    bytes[5] = (((values[6] & 2251799813685247_u64) >> 14) |
                ((values[7] & 2251799813685247_u64) << 37)).to_u64
    bytes[6] = (((values[7] & 2251799813685247_u64) >> 27) |
                ((values[8] & 2251799813685247_u64) << 24)).to_u64
    bytes[7] = (((values[8] & 2251799813685247_u64) >> 40) |
                ((values[9] & 2251799813685247_u64) << 11) |
                ((values[10] & 2251799813685247_u64) << 62)).to_u64
    bytes[8] = (((values[10] & 2251799813685247_u64) >> 2) |
                ((values[11] & 2251799813685247_u64) << 49)).to_u64
    bytes[9] = (((values[11] & 2251799813685247_u64) >> 15) |
                ((values[12] & 2251799813685247_u64) << 36)).to_u64
    bytes[10] = (((values[12] & 2251799813685247_u64) >> 28) |
                 ((values[13] & 2251799813685247_u64) << 23)).to_u64
    bytes[11] = (((values[13] & 2251799813685247_u64) >> 41) |
                 ((values[14] & 2251799813685247_u64) << 10) |
                 ((values[15] & 2251799813685247_u64) << 61)).to_u64
    bytes[12] = (((values[15] & 2251799813685247_u64) >> 3) |
                 ((values[16] & 2251799813685247_u64) << 48)).to_u64
    bytes[13] = (((values[16] & 2251799813685247_u64) >> 16) |
                 ((values[17] & 2251799813685247_u64) << 35)).to_u64
    bytes[14] = (((values[17] & 2251799813685247_u64) >> 29) |
                 ((values[18] & 2251799813685247_u64) << 22)).to_u64
    bytes[15] = (((values[18] & 2251799813685247_u64) >> 42) |
                 ((values[19] & 2251799813685247_u64) << 9) |
                 ((values[20] & 2251799813685247_u64) << 60)).to_u64
    bytes[16] = (((values[20] & 2251799813685247_u64) >> 4) |
                 ((values[21] & 2251799813685247_u64) << 47)).to_u64
    bytes[17] = (((values[21] & 2251799813685247_u64) >> 17) |
                 ((values[22] & 2251799813685247_u64) << 34)).to_u64
    bytes[18] = (((values[22] & 2251799813685247_u64) >> 30) |
                 ((values[23] & 2251799813685247_u64) << 21)).to_u64
    bytes[19] = (((values[23] & 2251799813685247_u64) >> 43) |
                 ((values[24] & 2251799813685247_u64) << 8) |
                 ((values[25] & 2251799813685247_u64) << 59)).to_u64
    bytes[20] = (((values[25] & 2251799813685247_u64) >> 5) |
                 ((values[26] & 2251799813685247_u64) << 46)).to_u64
    bytes[21] = (((values[26] & 2251799813685247_u64) >> 18) |
                 ((values[27] & 2251799813685247_u64) << 33)).to_u64
    bytes[22] = (((values[27] & 2251799813685247_u64) >> 31) |
                 ((values[28] & 2251799813685247_u64) << 20)).to_u64
    bytes[23] = (((values[28] & 2251799813685247_u64) >> 44) |
                 ((values[29] & 2251799813685247_u64) << 7) |
                 ((values[30] & 2251799813685247_u64) << 58)).to_u64
    bytes[24] = (((values[30] & 2251799813685247_u64) >> 6) |
                 ((values[31] & 2251799813685247_u64) << 45)).to_u64
    bytes[25] = (((values[31] & 2251799813685247_u64) >> 19) |
                 ((values[32] & 2251799813685247_u64) << 32)).to_u64
    bytes[26] = (((values[32] & 2251799813685247_u64) >> 32) |
                 ((values[33] & 2251799813685247_u64) << 19)).to_u64
    bytes[27] = (((values[33] & 2251799813685247_u64) >> 45) |
                 ((values[34] & 2251799813685247_u64) << 6) |
                 ((values[35] & 2251799813685247_u64) << 57)).to_u64
    bytes[28] = (((values[35] & 2251799813685247_u64) >> 7) |
                 ((values[36] & 2251799813685247_u64) << 44)).to_u64
    bytes[29] = (((values[36] & 2251799813685247_u64) >> 20) |
                 ((values[37] & 2251799813685247_u64) << 31)).to_u64
    bytes[30] = (((values[37] & 2251799813685247_u64) >> 33) |
                 ((values[38] & 2251799813685247_u64) << 18)).to_u64
    bytes[31] = (((values[38] & 2251799813685247_u64) >> 46) |
                 ((values[39] & 2251799813685247_u64) << 5) |
                 ((values[40] & 2251799813685247_u64) << 56)).to_u64
    bytes[32] = (((values[40] & 2251799813685247_u64) >> 8) |
                 ((values[41] & 2251799813685247_u64) << 43)).to_u64
    bytes[33] = (((values[41] & 2251799813685247_u64) >> 21) |
                 ((values[42] & 2251799813685247_u64) << 30)).to_u64
    bytes[34] = (((values[42] & 2251799813685247_u64) >> 34) |
                 ((values[43] & 2251799813685247_u64) << 17)).to_u64
    bytes[35] = (((values[43] & 2251799813685247_u64) >> 47) |
                 ((values[44] & 2251799813685247_u64) << 4) |
                 ((values[45] & 2251799813685247_u64) << 55)).to_u64
    bytes[36] = (((values[45] & 2251799813685247_u64) >> 9) |
                 ((values[46] & 2251799813685247_u64) << 42)).to_u64
    bytes[37] = (((values[46] & 2251799813685247_u64) >> 22) |
                 ((values[47] & 2251799813685247_u64) << 29)).to_u64
    bytes[38] = (((values[47] & 2251799813685247_u64) >> 35) |
                 ((values[48] & 2251799813685247_u64) << 16)).to_u64
    bytes[39] = (((values[48] & 2251799813685247_u64) >> 48) |
                 ((values[49] & 2251799813685247_u64) << 3) |
                 ((values[50] & 2251799813685247_u64) << 54)).to_u64
    bytes[40] = (((values[50] & 2251799813685247_u64) >> 10) |
                 ((values[51] & 2251799813685247_u64) << 41)).to_u64
    bytes[41] = (((values[51] & 2251799813685247_u64) >> 23) |
                 ((values[52] & 2251799813685247_u64) << 28)).to_u64
    bytes[42] = (((values[52] & 2251799813685247_u64) >> 36) |
                 ((values[53] & 2251799813685247_u64) << 15)).to_u64
    bytes[43] = (((values[53] & 2251799813685247_u64) >> 49) |
                 ((values[54] & 2251799813685247_u64) << 2) |
                 ((values[55] & 2251799813685247_u64) << 53)).to_u64
    bytes[44] = (((values[55] & 2251799813685247_u64) >> 11) |
                 ((values[56] & 2251799813685247_u64) << 40)).to_u64
    bytes[45] = (((values[56] & 2251799813685247_u64) >> 24) |
                 ((values[57] & 2251799813685247_u64) << 27)).to_u64
    bytes[46] = (((values[57] & 2251799813685247_u64) >> 37) |
                 ((values[58] & 2251799813685247_u64) << 14)).to_u64
    bytes[47] = (((values[58] & 2251799813685247_u64) >> 50) |
                 ((values[59] & 2251799813685247_u64) << 1) |
                 ((values[60] & 2251799813685247_u64) << 52)).to_u64
    bytes[48] = (((values[60] & 2251799813685247_u64) >> 12) |
                 ((values[61] & 2251799813685247_u64) << 39)).to_u64
    bytes[49] = (((values[61] & 2251799813685247_u64) >> 25) |
                 ((values[62] & 2251799813685247_u64) << 26)).to_u64
    bytes[50] = (((values[62] & 2251799813685247_u64) >> 38) |
                 ((values[63] & 2251799813685247_u64) << 13)).to_u64
    bytes
  end

  def self.unpack51(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2251799813685247_u64)).to_i64
    values[1] = (((bytes[0] >> 51) & 2251799813685247_u64) | ((bytes[1] & 274877906943_u64) << 13)).to_i64
    values[2] = (((bytes[1] >> 38) & 2251799813685247_u64) | ((bytes[2] & 33554431_u64) << 26)).to_i64
    values[3] = (((bytes[2] >> 25) & 2251799813685247_u64) | ((bytes[3] & 4095_u64) << 39)).to_i64
    values[4] = (((bytes[3] >> 12) & 2251799813685247_u64)).to_i64
    values[5] = (((bytes[3] >> 63) & 2251799813685247_u64) | ((bytes[4] & 1125899906842623_u64) << 1)).to_i64
    values[6] = (((bytes[4] >> 50) & 2251799813685247_u64) | ((bytes[5] & 137438953471_u64) << 14)).to_i64
    values[7] = (((bytes[5] >> 37) & 2251799813685247_u64) | ((bytes[6] & 16777215_u64) << 27)).to_i64
    values[8] = (((bytes[6] >> 24) & 2251799813685247_u64) | ((bytes[7] & 2047_u64) << 40)).to_i64
    values[9] = (((bytes[7] >> 11) & 2251799813685247_u64)).to_i64
    values[10] = (((bytes[7] >> 62) & 2251799813685247_u64) | ((bytes[8] & 562949953421311_u64) << 2)).to_i64
    values[11] = (((bytes[8] >> 49) & 2251799813685247_u64) | ((bytes[9] & 68719476735_u64) << 15)).to_i64
    values[12] = (((bytes[9] >> 36) & 2251799813685247_u64) | ((bytes[10] & 8388607_u64) << 28)).to_i64
    values[13] = (((bytes[10] >> 23) & 2251799813685247_u64) | ((bytes[11] & 1023_u64) << 41)).to_i64
    values[14] = (((bytes[11] >> 10) & 2251799813685247_u64)).to_i64
    values[15] = (((bytes[11] >> 61) & 2251799813685247_u64) | ((bytes[12] & 281474976710655_u64) << 3)).to_i64
    values[16] = (((bytes[12] >> 48) & 2251799813685247_u64) | ((bytes[13] & 34359738367_u64) << 16)).to_i64
    values[17] = (((bytes[13] >> 35) & 2251799813685247_u64) | ((bytes[14] & 4194303_u64) << 29)).to_i64
    values[18] = (((bytes[14] >> 22) & 2251799813685247_u64) | ((bytes[15] & 511_u64) << 42)).to_i64
    values[19] = (((bytes[15] >> 9) & 2251799813685247_u64)).to_i64
    values[20] = (((bytes[15] >> 60) & 2251799813685247_u64) | ((bytes[16] & 140737488355327_u64) << 4)).to_i64
    values[21] = (((bytes[16] >> 47) & 2251799813685247_u64) | ((bytes[17] & 17179869183_u64) << 17)).to_i64
    values[22] = (((bytes[17] >> 34) & 2251799813685247_u64) | ((bytes[18] & 2097151_u64) << 30)).to_i64
    values[23] = (((bytes[18] >> 21) & 2251799813685247_u64) | ((bytes[19] & 255_u64) << 43)).to_i64
    values[24] = (((bytes[19] >> 8) & 2251799813685247_u64)).to_i64
    values[25] = (((bytes[19] >> 59) & 2251799813685247_u64) | ((bytes[20] & 70368744177663_u64) << 5)).to_i64
    values[26] = (((bytes[20] >> 46) & 2251799813685247_u64) | ((bytes[21] & 8589934591_u64) << 18)).to_i64
    values[27] = (((bytes[21] >> 33) & 2251799813685247_u64) | ((bytes[22] & 1048575_u64) << 31)).to_i64
    values[28] = (((bytes[22] >> 20) & 2251799813685247_u64) | ((bytes[23] & 127_u64) << 44)).to_i64
    values[29] = (((bytes[23] >> 7) & 2251799813685247_u64)).to_i64
    values[30] = (((bytes[23] >> 58) & 2251799813685247_u64) | ((bytes[24] & 35184372088831_u64) << 6)).to_i64
    values[31] = (((bytes[24] >> 45) & 2251799813685247_u64) | ((bytes[25] & 4294967295_u64) << 19)).to_i64
    values[32] = (((bytes[25] >> 32) & 2251799813685247_u64) | ((bytes[26] & 524287_u64) << 32)).to_i64
    values[33] = (((bytes[26] >> 19) & 2251799813685247_u64) | ((bytes[27] & 63_u64) << 45)).to_i64
    values[34] = (((bytes[27] >> 6) & 2251799813685247_u64)).to_i64
    values[35] = (((bytes[27] >> 57) & 2251799813685247_u64) | ((bytes[28] & 17592186044415_u64) << 7)).to_i64
    values[36] = (((bytes[28] >> 44) & 2251799813685247_u64) | ((bytes[29] & 2147483647_u64) << 20)).to_i64
    values[37] = (((bytes[29] >> 31) & 2251799813685247_u64) | ((bytes[30] & 262143_u64) << 33)).to_i64
    values[38] = (((bytes[30] >> 18) & 2251799813685247_u64) | ((bytes[31] & 31_u64) << 46)).to_i64
    values[39] = (((bytes[31] >> 5) & 2251799813685247_u64)).to_i64
    values[40] = (((bytes[31] >> 56) & 2251799813685247_u64) | ((bytes[32] & 8796093022207_u64) << 8)).to_i64
    values[41] = (((bytes[32] >> 43) & 2251799813685247_u64) | ((bytes[33] & 1073741823_u64) << 21)).to_i64
    values[42] = (((bytes[33] >> 30) & 2251799813685247_u64) | ((bytes[34] & 131071_u64) << 34)).to_i64
    values[43] = (((bytes[34] >> 17) & 2251799813685247_u64) | ((bytes[35] & 15_u64) << 47)).to_i64
    values[44] = (((bytes[35] >> 4) & 2251799813685247_u64)).to_i64
    values[45] = (((bytes[35] >> 55) & 2251799813685247_u64) | ((bytes[36] & 4398046511103_u64) << 9)).to_i64
    values[46] = (((bytes[36] >> 42) & 2251799813685247_u64) | ((bytes[37] & 536870911_u64) << 22)).to_i64
    values[47] = (((bytes[37] >> 29) & 2251799813685247_u64) | ((bytes[38] & 65535_u64) << 35)).to_i64
    values[48] = (((bytes[38] >> 16) & 2251799813685247_u64) | ((bytes[39] & 7_u64) << 48)).to_i64
    values[49] = (((bytes[39] >> 3) & 2251799813685247_u64)).to_i64
    values[50] = (((bytes[39] >> 54) & 2251799813685247_u64) | ((bytes[40] & 2199023255551_u64) << 10)).to_i64
    values[51] = (((bytes[40] >> 41) & 2251799813685247_u64) | ((bytes[41] & 268435455_u64) << 23)).to_i64
    values[52] = (((bytes[41] >> 28) & 2251799813685247_u64) | ((bytes[42] & 32767_u64) << 36)).to_i64
    values[53] = (((bytes[42] >> 15) & 2251799813685247_u64) | ((bytes[43] & 3_u64) << 49)).to_i64
    values[54] = (((bytes[43] >> 2) & 2251799813685247_u64)).to_i64
    values[55] = (((bytes[43] >> 53) & 2251799813685247_u64) | ((bytes[44] & 1099511627775_u64) << 11)).to_i64
    values[56] = (((bytes[44] >> 40) & 2251799813685247_u64) | ((bytes[45] & 134217727_u64) << 24)).to_i64
    values[57] = (((bytes[45] >> 27) & 2251799813685247_u64) | ((bytes[46] & 16383_u64) << 37)).to_i64
    values[58] = (((bytes[46] >> 14) & 2251799813685247_u64) | ((bytes[47] & 1_u64) << 50)).to_i64
    values[59] = (((bytes[47] >> 1) & 2251799813685247_u64)).to_i64
    values[60] = (((bytes[47] >> 52) & 2251799813685247_u64) | ((bytes[48] & 549755813887_u64) << 12)).to_i64
    values[61] = (((bytes[48] >> 39) & 2251799813685247_u64) | ((bytes[49] & 67108863_u64) << 25)).to_i64
    values[62] = (((bytes[49] >> 26) & 2251799813685247_u64) | ((bytes[50] & 8191_u64) << 38)).to_i64
    values[63] = (((bytes[50] >> 13) & 2251799813685247_u64)).to_i64
    values
  end

  def self.pack52(values)
    bytes = Slice(UInt64).new(52, 0_u64)
    bytes[0] = (((values[0] & 4503599627370495_u64) << 0) |
                ((values[1] & 4503599627370495_u64) << 52)).to_u64
    bytes[1] = (((values[1] & 4503599627370495_u64) >> 12) |
                ((values[2] & 4503599627370495_u64) << 40)).to_u64
    bytes[2] = (((values[2] & 4503599627370495_u64) >> 24) |
                ((values[3] & 4503599627370495_u64) << 28)).to_u64
    bytes[3] = (((values[3] & 4503599627370495_u64) >> 36) |
                ((values[4] & 4503599627370495_u64) << 16)).to_u64
    bytes[4] = (((values[4] & 4503599627370495_u64) >> 48) |
                ((values[5] & 4503599627370495_u64) << 4) |
                ((values[6] & 4503599627370495_u64) << 56)).to_u64
    bytes[5] = (((values[6] & 4503599627370495_u64) >> 8) |
                ((values[7] & 4503599627370495_u64) << 44)).to_u64
    bytes[6] = (((values[7] & 4503599627370495_u64) >> 20) |
                ((values[8] & 4503599627370495_u64) << 32)).to_u64
    bytes[7] = (((values[8] & 4503599627370495_u64) >> 32) |
                ((values[9] & 4503599627370495_u64) << 20)).to_u64
    bytes[8] = (((values[9] & 4503599627370495_u64) >> 44) |
                ((values[10] & 4503599627370495_u64) << 8) |
                ((values[11] & 4503599627370495_u64) << 60)).to_u64
    bytes[9] = (((values[11] & 4503599627370495_u64) >> 4) |
                ((values[12] & 4503599627370495_u64) << 48)).to_u64
    bytes[10] = (((values[12] & 4503599627370495_u64) >> 16) |
                 ((values[13] & 4503599627370495_u64) << 36)).to_u64
    bytes[11] = (((values[13] & 4503599627370495_u64) >> 28) |
                 ((values[14] & 4503599627370495_u64) << 24)).to_u64
    bytes[12] = (((values[14] & 4503599627370495_u64) >> 40) |
                 ((values[15] & 4503599627370495_u64) << 12)).to_u64
    bytes[13] = (((values[16] & 4503599627370495_u64) << 0) |
                 ((values[17] & 4503599627370495_u64) << 52)).to_u64
    bytes[14] = (((values[17] & 4503599627370495_u64) >> 12) |
                 ((values[18] & 4503599627370495_u64) << 40)).to_u64
    bytes[15] = (((values[18] & 4503599627370495_u64) >> 24) |
                 ((values[19] & 4503599627370495_u64) << 28)).to_u64
    bytes[16] = (((values[19] & 4503599627370495_u64) >> 36) |
                 ((values[20] & 4503599627370495_u64) << 16)).to_u64
    bytes[17] = (((values[20] & 4503599627370495_u64) >> 48) |
                 ((values[21] & 4503599627370495_u64) << 4) |
                 ((values[22] & 4503599627370495_u64) << 56)).to_u64
    bytes[18] = (((values[22] & 4503599627370495_u64) >> 8) |
                 ((values[23] & 4503599627370495_u64) << 44)).to_u64
    bytes[19] = (((values[23] & 4503599627370495_u64) >> 20) |
                 ((values[24] & 4503599627370495_u64) << 32)).to_u64
    bytes[20] = (((values[24] & 4503599627370495_u64) >> 32) |
                 ((values[25] & 4503599627370495_u64) << 20)).to_u64
    bytes[21] = (((values[25] & 4503599627370495_u64) >> 44) |
                 ((values[26] & 4503599627370495_u64) << 8) |
                 ((values[27] & 4503599627370495_u64) << 60)).to_u64
    bytes[22] = (((values[27] & 4503599627370495_u64) >> 4) |
                 ((values[28] & 4503599627370495_u64) << 48)).to_u64
    bytes[23] = (((values[28] & 4503599627370495_u64) >> 16) |
                 ((values[29] & 4503599627370495_u64) << 36)).to_u64
    bytes[24] = (((values[29] & 4503599627370495_u64) >> 28) |
                 ((values[30] & 4503599627370495_u64) << 24)).to_u64
    bytes[25] = (((values[30] & 4503599627370495_u64) >> 40) |
                 ((values[31] & 4503599627370495_u64) << 12)).to_u64
    bytes[26] = (((values[32] & 4503599627370495_u64) << 0) |
                 ((values[33] & 4503599627370495_u64) << 52)).to_u64
    bytes[27] = (((values[33] & 4503599627370495_u64) >> 12) |
                 ((values[34] & 4503599627370495_u64) << 40)).to_u64
    bytes[28] = (((values[34] & 4503599627370495_u64) >> 24) |
                 ((values[35] & 4503599627370495_u64) << 28)).to_u64
    bytes[29] = (((values[35] & 4503599627370495_u64) >> 36) |
                 ((values[36] & 4503599627370495_u64) << 16)).to_u64
    bytes[30] = (((values[36] & 4503599627370495_u64) >> 48) |
                 ((values[37] & 4503599627370495_u64) << 4) |
                 ((values[38] & 4503599627370495_u64) << 56)).to_u64
    bytes[31] = (((values[38] & 4503599627370495_u64) >> 8) |
                 ((values[39] & 4503599627370495_u64) << 44)).to_u64
    bytes[32] = (((values[39] & 4503599627370495_u64) >> 20) |
                 ((values[40] & 4503599627370495_u64) << 32)).to_u64
    bytes[33] = (((values[40] & 4503599627370495_u64) >> 32) |
                 ((values[41] & 4503599627370495_u64) << 20)).to_u64
    bytes[34] = (((values[41] & 4503599627370495_u64) >> 44) |
                 ((values[42] & 4503599627370495_u64) << 8) |
                 ((values[43] & 4503599627370495_u64) << 60)).to_u64
    bytes[35] = (((values[43] & 4503599627370495_u64) >> 4) |
                 ((values[44] & 4503599627370495_u64) << 48)).to_u64
    bytes[36] = (((values[44] & 4503599627370495_u64) >> 16) |
                 ((values[45] & 4503599627370495_u64) << 36)).to_u64
    bytes[37] = (((values[45] & 4503599627370495_u64) >> 28) |
                 ((values[46] & 4503599627370495_u64) << 24)).to_u64
    bytes[38] = (((values[46] & 4503599627370495_u64) >> 40) |
                 ((values[47] & 4503599627370495_u64) << 12)).to_u64
    bytes[39] = (((values[48] & 4503599627370495_u64) << 0) |
                 ((values[49] & 4503599627370495_u64) << 52)).to_u64
    bytes[40] = (((values[49] & 4503599627370495_u64) >> 12) |
                 ((values[50] & 4503599627370495_u64) << 40)).to_u64
    bytes[41] = (((values[50] & 4503599627370495_u64) >> 24) |
                 ((values[51] & 4503599627370495_u64) << 28)).to_u64
    bytes[42] = (((values[51] & 4503599627370495_u64) >> 36) |
                 ((values[52] & 4503599627370495_u64) << 16)).to_u64
    bytes[43] = (((values[52] & 4503599627370495_u64) >> 48) |
                 ((values[53] & 4503599627370495_u64) << 4) |
                 ((values[54] & 4503599627370495_u64) << 56)).to_u64
    bytes[44] = (((values[54] & 4503599627370495_u64) >> 8) |
                 ((values[55] & 4503599627370495_u64) << 44)).to_u64
    bytes[45] = (((values[55] & 4503599627370495_u64) >> 20) |
                 ((values[56] & 4503599627370495_u64) << 32)).to_u64
    bytes[46] = (((values[56] & 4503599627370495_u64) >> 32) |
                 ((values[57] & 4503599627370495_u64) << 20)).to_u64
    bytes[47] = (((values[57] & 4503599627370495_u64) >> 44) |
                 ((values[58] & 4503599627370495_u64) << 8) |
                 ((values[59] & 4503599627370495_u64) << 60)).to_u64
    bytes[48] = (((values[59] & 4503599627370495_u64) >> 4) |
                 ((values[60] & 4503599627370495_u64) << 48)).to_u64
    bytes[49] = (((values[60] & 4503599627370495_u64) >> 16) |
                 ((values[61] & 4503599627370495_u64) << 36)).to_u64
    bytes[50] = (((values[61] & 4503599627370495_u64) >> 28) |
                 ((values[62] & 4503599627370495_u64) << 24)).to_u64
    bytes[51] = (((values[62] & 4503599627370495_u64) >> 40) |
                 ((values[63] & 4503599627370495_u64) << 12)).to_u64
    bytes
  end

  def self.unpack52(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4503599627370495_u64)).to_i64
    values[1] = (((bytes[0] >> 52) & 4503599627370495_u64) | ((bytes[1] & 1099511627775_u64) << 12)).to_i64
    values[2] = (((bytes[1] >> 40) & 4503599627370495_u64) | ((bytes[2] & 268435455_u64) << 24)).to_i64
    values[3] = (((bytes[2] >> 28) & 4503599627370495_u64) | ((bytes[3] & 65535_u64) << 36)).to_i64
    values[4] = (((bytes[3] >> 16) & 4503599627370495_u64) | ((bytes[4] & 15_u64) << 48)).to_i64
    values[5] = (((bytes[4] >> 4) & 4503599627370495_u64)).to_i64
    values[6] = (((bytes[4] >> 56) & 4503599627370495_u64) | ((bytes[5] & 17592186044415_u64) << 8)).to_i64
    values[7] = (((bytes[5] >> 44) & 4503599627370495_u64) | ((bytes[6] & 4294967295_u64) << 20)).to_i64
    values[8] = (((bytes[6] >> 32) & 4503599627370495_u64) | ((bytes[7] & 1048575_u64) << 32)).to_i64
    values[9] = (((bytes[7] >> 20) & 4503599627370495_u64) | ((bytes[8] & 255_u64) << 44)).to_i64
    values[10] = (((bytes[8] >> 8) & 4503599627370495_u64)).to_i64
    values[11] = (((bytes[8] >> 60) & 4503599627370495_u64) | ((bytes[9] & 281474976710655_u64) << 4)).to_i64
    values[12] = (((bytes[9] >> 48) & 4503599627370495_u64) | ((bytes[10] & 68719476735_u64) << 16)).to_i64
    values[13] = (((bytes[10] >> 36) & 4503599627370495_u64) | ((bytes[11] & 16777215_u64) << 28)).to_i64
    values[14] = (((bytes[11] >> 24) & 4503599627370495_u64) | ((bytes[12] & 4095_u64) << 40)).to_i64
    values[15] = (((bytes[12] >> 12) & 4503599627370495_u64)).to_i64
    values[16] = (((bytes[13] >> 0) & 4503599627370495_u64)).to_i64
    values[17] = (((bytes[13] >> 52) & 4503599627370495_u64) | ((bytes[14] & 1099511627775_u64) << 12)).to_i64
    values[18] = (((bytes[14] >> 40) & 4503599627370495_u64) | ((bytes[15] & 268435455_u64) << 24)).to_i64
    values[19] = (((bytes[15] >> 28) & 4503599627370495_u64) | ((bytes[16] & 65535_u64) << 36)).to_i64
    values[20] = (((bytes[16] >> 16) & 4503599627370495_u64) | ((bytes[17] & 15_u64) << 48)).to_i64
    values[21] = (((bytes[17] >> 4) & 4503599627370495_u64)).to_i64
    values[22] = (((bytes[17] >> 56) & 4503599627370495_u64) | ((bytes[18] & 17592186044415_u64) << 8)).to_i64
    values[23] = (((bytes[18] >> 44) & 4503599627370495_u64) | ((bytes[19] & 4294967295_u64) << 20)).to_i64
    values[24] = (((bytes[19] >> 32) & 4503599627370495_u64) | ((bytes[20] & 1048575_u64) << 32)).to_i64
    values[25] = (((bytes[20] >> 20) & 4503599627370495_u64) | ((bytes[21] & 255_u64) << 44)).to_i64
    values[26] = (((bytes[21] >> 8) & 4503599627370495_u64)).to_i64
    values[27] = (((bytes[21] >> 60) & 4503599627370495_u64) | ((bytes[22] & 281474976710655_u64) << 4)).to_i64
    values[28] = (((bytes[22] >> 48) & 4503599627370495_u64) | ((bytes[23] & 68719476735_u64) << 16)).to_i64
    values[29] = (((bytes[23] >> 36) & 4503599627370495_u64) | ((bytes[24] & 16777215_u64) << 28)).to_i64
    values[30] = (((bytes[24] >> 24) & 4503599627370495_u64) | ((bytes[25] & 4095_u64) << 40)).to_i64
    values[31] = (((bytes[25] >> 12) & 4503599627370495_u64)).to_i64
    values[32] = (((bytes[26] >> 0) & 4503599627370495_u64)).to_i64
    values[33] = (((bytes[26] >> 52) & 4503599627370495_u64) | ((bytes[27] & 1099511627775_u64) << 12)).to_i64
    values[34] = (((bytes[27] >> 40) & 4503599627370495_u64) | ((bytes[28] & 268435455_u64) << 24)).to_i64
    values[35] = (((bytes[28] >> 28) & 4503599627370495_u64) | ((bytes[29] & 65535_u64) << 36)).to_i64
    values[36] = (((bytes[29] >> 16) & 4503599627370495_u64) | ((bytes[30] & 15_u64) << 48)).to_i64
    values[37] = (((bytes[30] >> 4) & 4503599627370495_u64)).to_i64
    values[38] = (((bytes[30] >> 56) & 4503599627370495_u64) | ((bytes[31] & 17592186044415_u64) << 8)).to_i64
    values[39] = (((bytes[31] >> 44) & 4503599627370495_u64) | ((bytes[32] & 4294967295_u64) << 20)).to_i64
    values[40] = (((bytes[32] >> 32) & 4503599627370495_u64) | ((bytes[33] & 1048575_u64) << 32)).to_i64
    values[41] = (((bytes[33] >> 20) & 4503599627370495_u64) | ((bytes[34] & 255_u64) << 44)).to_i64
    values[42] = (((bytes[34] >> 8) & 4503599627370495_u64)).to_i64
    values[43] = (((bytes[34] >> 60) & 4503599627370495_u64) | ((bytes[35] & 281474976710655_u64) << 4)).to_i64
    values[44] = (((bytes[35] >> 48) & 4503599627370495_u64) | ((bytes[36] & 68719476735_u64) << 16)).to_i64
    values[45] = (((bytes[36] >> 36) & 4503599627370495_u64) | ((bytes[37] & 16777215_u64) << 28)).to_i64
    values[46] = (((bytes[37] >> 24) & 4503599627370495_u64) | ((bytes[38] & 4095_u64) << 40)).to_i64
    values[47] = (((bytes[38] >> 12) & 4503599627370495_u64)).to_i64
    values[48] = (((bytes[39] >> 0) & 4503599627370495_u64)).to_i64
    values[49] = (((bytes[39] >> 52) & 4503599627370495_u64) | ((bytes[40] & 1099511627775_u64) << 12)).to_i64
    values[50] = (((bytes[40] >> 40) & 4503599627370495_u64) | ((bytes[41] & 268435455_u64) << 24)).to_i64
    values[51] = (((bytes[41] >> 28) & 4503599627370495_u64) | ((bytes[42] & 65535_u64) << 36)).to_i64
    values[52] = (((bytes[42] >> 16) & 4503599627370495_u64) | ((bytes[43] & 15_u64) << 48)).to_i64
    values[53] = (((bytes[43] >> 4) & 4503599627370495_u64)).to_i64
    values[54] = (((bytes[43] >> 56) & 4503599627370495_u64) | ((bytes[44] & 17592186044415_u64) << 8)).to_i64
    values[55] = (((bytes[44] >> 44) & 4503599627370495_u64) | ((bytes[45] & 4294967295_u64) << 20)).to_i64
    values[56] = (((bytes[45] >> 32) & 4503599627370495_u64) | ((bytes[46] & 1048575_u64) << 32)).to_i64
    values[57] = (((bytes[46] >> 20) & 4503599627370495_u64) | ((bytes[47] & 255_u64) << 44)).to_i64
    values[58] = (((bytes[47] >> 8) & 4503599627370495_u64)).to_i64
    values[59] = (((bytes[47] >> 60) & 4503599627370495_u64) | ((bytes[48] & 281474976710655_u64) << 4)).to_i64
    values[60] = (((bytes[48] >> 48) & 4503599627370495_u64) | ((bytes[49] & 68719476735_u64) << 16)).to_i64
    values[61] = (((bytes[49] >> 36) & 4503599627370495_u64) | ((bytes[50] & 16777215_u64) << 28)).to_i64
    values[62] = (((bytes[50] >> 24) & 4503599627370495_u64) | ((bytes[51] & 4095_u64) << 40)).to_i64
    values[63] = (((bytes[51] >> 12) & 4503599627370495_u64)).to_i64
    values
  end

  def self.pack53(values)
    bytes = Slice(UInt64).new(53, 0_u64)
    bytes[0] = (((values[0] & 9007199254740991_u64) << 0) |
                ((values[1] & 9007199254740991_u64) << 53)).to_u64
    bytes[1] = (((values[1] & 9007199254740991_u64) >> 11) |
                ((values[2] & 9007199254740991_u64) << 42)).to_u64
    bytes[2] = (((values[2] & 9007199254740991_u64) >> 22) |
                ((values[3] & 9007199254740991_u64) << 31)).to_u64
    bytes[3] = (((values[3] & 9007199254740991_u64) >> 33) |
                ((values[4] & 9007199254740991_u64) << 20)).to_u64
    bytes[4] = (((values[4] & 9007199254740991_u64) >> 44) |
                ((values[5] & 9007199254740991_u64) << 9) |
                ((values[6] & 9007199254740991_u64) << 62)).to_u64
    bytes[5] = (((values[6] & 9007199254740991_u64) >> 2) |
                ((values[7] & 9007199254740991_u64) << 51)).to_u64
    bytes[6] = (((values[7] & 9007199254740991_u64) >> 13) |
                ((values[8] & 9007199254740991_u64) << 40)).to_u64
    bytes[7] = (((values[8] & 9007199254740991_u64) >> 24) |
                ((values[9] & 9007199254740991_u64) << 29)).to_u64
    bytes[8] = (((values[9] & 9007199254740991_u64) >> 35) |
                ((values[10] & 9007199254740991_u64) << 18)).to_u64
    bytes[9] = (((values[10] & 9007199254740991_u64) >> 46) |
                ((values[11] & 9007199254740991_u64) << 7) |
                ((values[12] & 9007199254740991_u64) << 60)).to_u64
    bytes[10] = (((values[12] & 9007199254740991_u64) >> 4) |
                 ((values[13] & 9007199254740991_u64) << 49)).to_u64
    bytes[11] = (((values[13] & 9007199254740991_u64) >> 15) |
                 ((values[14] & 9007199254740991_u64) << 38)).to_u64
    bytes[12] = (((values[14] & 9007199254740991_u64) >> 26) |
                 ((values[15] & 9007199254740991_u64) << 27)).to_u64
    bytes[13] = (((values[15] & 9007199254740991_u64) >> 37) |
                 ((values[16] & 9007199254740991_u64) << 16)).to_u64
    bytes[14] = (((values[16] & 9007199254740991_u64) >> 48) |
                 ((values[17] & 9007199254740991_u64) << 5) |
                 ((values[18] & 9007199254740991_u64) << 58)).to_u64
    bytes[15] = (((values[18] & 9007199254740991_u64) >> 6) |
                 ((values[19] & 9007199254740991_u64) << 47)).to_u64
    bytes[16] = (((values[19] & 9007199254740991_u64) >> 17) |
                 ((values[20] & 9007199254740991_u64) << 36)).to_u64
    bytes[17] = (((values[20] & 9007199254740991_u64) >> 28) |
                 ((values[21] & 9007199254740991_u64) << 25)).to_u64
    bytes[18] = (((values[21] & 9007199254740991_u64) >> 39) |
                 ((values[22] & 9007199254740991_u64) << 14)).to_u64
    bytes[19] = (((values[22] & 9007199254740991_u64) >> 50) |
                 ((values[23] & 9007199254740991_u64) << 3) |
                 ((values[24] & 9007199254740991_u64) << 56)).to_u64
    bytes[20] = (((values[24] & 9007199254740991_u64) >> 8) |
                 ((values[25] & 9007199254740991_u64) << 45)).to_u64
    bytes[21] = (((values[25] & 9007199254740991_u64) >> 19) |
                 ((values[26] & 9007199254740991_u64) << 34)).to_u64
    bytes[22] = (((values[26] & 9007199254740991_u64) >> 30) |
                 ((values[27] & 9007199254740991_u64) << 23)).to_u64
    bytes[23] = (((values[27] & 9007199254740991_u64) >> 41) |
                 ((values[28] & 9007199254740991_u64) << 12)).to_u64
    bytes[24] = (((values[28] & 9007199254740991_u64) >> 52) |
                 ((values[29] & 9007199254740991_u64) << 1) |
                 ((values[30] & 9007199254740991_u64) << 54)).to_u64
    bytes[25] = (((values[30] & 9007199254740991_u64) >> 10) |
                 ((values[31] & 9007199254740991_u64) << 43)).to_u64
    bytes[26] = (((values[31] & 9007199254740991_u64) >> 21) |
                 ((values[32] & 9007199254740991_u64) << 32)).to_u64
    bytes[27] = (((values[32] & 9007199254740991_u64) >> 32) |
                 ((values[33] & 9007199254740991_u64) << 21)).to_u64
    bytes[28] = (((values[33] & 9007199254740991_u64) >> 43) |
                 ((values[34] & 9007199254740991_u64) << 10) |
                 ((values[35] & 9007199254740991_u64) << 63)).to_u64
    bytes[29] = (((values[35] & 9007199254740991_u64) >> 1) |
                 ((values[36] & 9007199254740991_u64) << 52)).to_u64
    bytes[30] = (((values[36] & 9007199254740991_u64) >> 12) |
                 ((values[37] & 9007199254740991_u64) << 41)).to_u64
    bytes[31] = (((values[37] & 9007199254740991_u64) >> 23) |
                 ((values[38] & 9007199254740991_u64) << 30)).to_u64
    bytes[32] = (((values[38] & 9007199254740991_u64) >> 34) |
                 ((values[39] & 9007199254740991_u64) << 19)).to_u64
    bytes[33] = (((values[39] & 9007199254740991_u64) >> 45) |
                 ((values[40] & 9007199254740991_u64) << 8) |
                 ((values[41] & 9007199254740991_u64) << 61)).to_u64
    bytes[34] = (((values[41] & 9007199254740991_u64) >> 3) |
                 ((values[42] & 9007199254740991_u64) << 50)).to_u64
    bytes[35] = (((values[42] & 9007199254740991_u64) >> 14) |
                 ((values[43] & 9007199254740991_u64) << 39)).to_u64
    bytes[36] = (((values[43] & 9007199254740991_u64) >> 25) |
                 ((values[44] & 9007199254740991_u64) << 28)).to_u64
    bytes[37] = (((values[44] & 9007199254740991_u64) >> 36) |
                 ((values[45] & 9007199254740991_u64) << 17)).to_u64
    bytes[38] = (((values[45] & 9007199254740991_u64) >> 47) |
                 ((values[46] & 9007199254740991_u64) << 6) |
                 ((values[47] & 9007199254740991_u64) << 59)).to_u64
    bytes[39] = (((values[47] & 9007199254740991_u64) >> 5) |
                 ((values[48] & 9007199254740991_u64) << 48)).to_u64
    bytes[40] = (((values[48] & 9007199254740991_u64) >> 16) |
                 ((values[49] & 9007199254740991_u64) << 37)).to_u64
    bytes[41] = (((values[49] & 9007199254740991_u64) >> 27) |
                 ((values[50] & 9007199254740991_u64) << 26)).to_u64
    bytes[42] = (((values[50] & 9007199254740991_u64) >> 38) |
                 ((values[51] & 9007199254740991_u64) << 15)).to_u64
    bytes[43] = (((values[51] & 9007199254740991_u64) >> 49) |
                 ((values[52] & 9007199254740991_u64) << 4) |
                 ((values[53] & 9007199254740991_u64) << 57)).to_u64
    bytes[44] = (((values[53] & 9007199254740991_u64) >> 7) |
                 ((values[54] & 9007199254740991_u64) << 46)).to_u64
    bytes[45] = (((values[54] & 9007199254740991_u64) >> 18) |
                 ((values[55] & 9007199254740991_u64) << 35)).to_u64
    bytes[46] = (((values[55] & 9007199254740991_u64) >> 29) |
                 ((values[56] & 9007199254740991_u64) << 24)).to_u64
    bytes[47] = (((values[56] & 9007199254740991_u64) >> 40) |
                 ((values[57] & 9007199254740991_u64) << 13)).to_u64
    bytes[48] = (((values[57] & 9007199254740991_u64) >> 51) |
                 ((values[58] & 9007199254740991_u64) << 2) |
                 ((values[59] & 9007199254740991_u64) << 55)).to_u64
    bytes[49] = (((values[59] & 9007199254740991_u64) >> 9) |
                 ((values[60] & 9007199254740991_u64) << 44)).to_u64
    bytes[50] = (((values[60] & 9007199254740991_u64) >> 20) |
                 ((values[61] & 9007199254740991_u64) << 33)).to_u64
    bytes[51] = (((values[61] & 9007199254740991_u64) >> 31) |
                 ((values[62] & 9007199254740991_u64) << 22)).to_u64
    bytes[52] = (((values[62] & 9007199254740991_u64) >> 42) |
                 ((values[63] & 9007199254740991_u64) << 11)).to_u64
    bytes
  end

  def self.unpack53(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 9007199254740991_u64)).to_i64
    values[1] = (((bytes[0] >> 53) & 9007199254740991_u64) | ((bytes[1] & 4398046511103_u64) << 11)).to_i64
    values[2] = (((bytes[1] >> 42) & 9007199254740991_u64) | ((bytes[2] & 2147483647_u64) << 22)).to_i64
    values[3] = (((bytes[2] >> 31) & 9007199254740991_u64) | ((bytes[3] & 1048575_u64) << 33)).to_i64
    values[4] = (((bytes[3] >> 20) & 9007199254740991_u64) | ((bytes[4] & 511_u64) << 44)).to_i64
    values[5] = (((bytes[4] >> 9) & 9007199254740991_u64)).to_i64
    values[6] = (((bytes[4] >> 62) & 9007199254740991_u64) | ((bytes[5] & 2251799813685247_u64) << 2)).to_i64
    values[7] = (((bytes[5] >> 51) & 9007199254740991_u64) | ((bytes[6] & 1099511627775_u64) << 13)).to_i64
    values[8] = (((bytes[6] >> 40) & 9007199254740991_u64) | ((bytes[7] & 536870911_u64) << 24)).to_i64
    values[9] = (((bytes[7] >> 29) & 9007199254740991_u64) | ((bytes[8] & 262143_u64) << 35)).to_i64
    values[10] = (((bytes[8] >> 18) & 9007199254740991_u64) | ((bytes[9] & 127_u64) << 46)).to_i64
    values[11] = (((bytes[9] >> 7) & 9007199254740991_u64)).to_i64
    values[12] = (((bytes[9] >> 60) & 9007199254740991_u64) | ((bytes[10] & 562949953421311_u64) << 4)).to_i64
    values[13] = (((bytes[10] >> 49) & 9007199254740991_u64) | ((bytes[11] & 274877906943_u64) << 15)).to_i64
    values[14] = (((bytes[11] >> 38) & 9007199254740991_u64) | ((bytes[12] & 134217727_u64) << 26)).to_i64
    values[15] = (((bytes[12] >> 27) & 9007199254740991_u64) | ((bytes[13] & 65535_u64) << 37)).to_i64
    values[16] = (((bytes[13] >> 16) & 9007199254740991_u64) | ((bytes[14] & 31_u64) << 48)).to_i64
    values[17] = (((bytes[14] >> 5) & 9007199254740991_u64)).to_i64
    values[18] = (((bytes[14] >> 58) & 9007199254740991_u64) | ((bytes[15] & 140737488355327_u64) << 6)).to_i64
    values[19] = (((bytes[15] >> 47) & 9007199254740991_u64) | ((bytes[16] & 68719476735_u64) << 17)).to_i64
    values[20] = (((bytes[16] >> 36) & 9007199254740991_u64) | ((bytes[17] & 33554431_u64) << 28)).to_i64
    values[21] = (((bytes[17] >> 25) & 9007199254740991_u64) | ((bytes[18] & 16383_u64) << 39)).to_i64
    values[22] = (((bytes[18] >> 14) & 9007199254740991_u64) | ((bytes[19] & 7_u64) << 50)).to_i64
    values[23] = (((bytes[19] >> 3) & 9007199254740991_u64)).to_i64
    values[24] = (((bytes[19] >> 56) & 9007199254740991_u64) | ((bytes[20] & 35184372088831_u64) << 8)).to_i64
    values[25] = (((bytes[20] >> 45) & 9007199254740991_u64) | ((bytes[21] & 17179869183_u64) << 19)).to_i64
    values[26] = (((bytes[21] >> 34) & 9007199254740991_u64) | ((bytes[22] & 8388607_u64) << 30)).to_i64
    values[27] = (((bytes[22] >> 23) & 9007199254740991_u64) | ((bytes[23] & 4095_u64) << 41)).to_i64
    values[28] = (((bytes[23] >> 12) & 9007199254740991_u64) | ((bytes[24] & 1_u64) << 52)).to_i64
    values[29] = (((bytes[24] >> 1) & 9007199254740991_u64)).to_i64
    values[30] = (((bytes[24] >> 54) & 9007199254740991_u64) | ((bytes[25] & 8796093022207_u64) << 10)).to_i64
    values[31] = (((bytes[25] >> 43) & 9007199254740991_u64) | ((bytes[26] & 4294967295_u64) << 21)).to_i64
    values[32] = (((bytes[26] >> 32) & 9007199254740991_u64) | ((bytes[27] & 2097151_u64) << 32)).to_i64
    values[33] = (((bytes[27] >> 21) & 9007199254740991_u64) | ((bytes[28] & 1023_u64) << 43)).to_i64
    values[34] = (((bytes[28] >> 10) & 9007199254740991_u64)).to_i64
    values[35] = (((bytes[28] >> 63) & 9007199254740991_u64) | ((bytes[29] & 4503599627370495_u64) << 1)).to_i64
    values[36] = (((bytes[29] >> 52) & 9007199254740991_u64) | ((bytes[30] & 2199023255551_u64) << 12)).to_i64
    values[37] = (((bytes[30] >> 41) & 9007199254740991_u64) | ((bytes[31] & 1073741823_u64) << 23)).to_i64
    values[38] = (((bytes[31] >> 30) & 9007199254740991_u64) | ((bytes[32] & 524287_u64) << 34)).to_i64
    values[39] = (((bytes[32] >> 19) & 9007199254740991_u64) | ((bytes[33] & 255_u64) << 45)).to_i64
    values[40] = (((bytes[33] >> 8) & 9007199254740991_u64)).to_i64
    values[41] = (((bytes[33] >> 61) & 9007199254740991_u64) | ((bytes[34] & 1125899906842623_u64) << 3)).to_i64
    values[42] = (((bytes[34] >> 50) & 9007199254740991_u64) | ((bytes[35] & 549755813887_u64) << 14)).to_i64
    values[43] = (((bytes[35] >> 39) & 9007199254740991_u64) | ((bytes[36] & 268435455_u64) << 25)).to_i64
    values[44] = (((bytes[36] >> 28) & 9007199254740991_u64) | ((bytes[37] & 131071_u64) << 36)).to_i64
    values[45] = (((bytes[37] >> 17) & 9007199254740991_u64) | ((bytes[38] & 63_u64) << 47)).to_i64
    values[46] = (((bytes[38] >> 6) & 9007199254740991_u64)).to_i64
    values[47] = (((bytes[38] >> 59) & 9007199254740991_u64) | ((bytes[39] & 281474976710655_u64) << 5)).to_i64
    values[48] = (((bytes[39] >> 48) & 9007199254740991_u64) | ((bytes[40] & 137438953471_u64) << 16)).to_i64
    values[49] = (((bytes[40] >> 37) & 9007199254740991_u64) | ((bytes[41] & 67108863_u64) << 27)).to_i64
    values[50] = (((bytes[41] >> 26) & 9007199254740991_u64) | ((bytes[42] & 32767_u64) << 38)).to_i64
    values[51] = (((bytes[42] >> 15) & 9007199254740991_u64) | ((bytes[43] & 15_u64) << 49)).to_i64
    values[52] = (((bytes[43] >> 4) & 9007199254740991_u64)).to_i64
    values[53] = (((bytes[43] >> 57) & 9007199254740991_u64) | ((bytes[44] & 70368744177663_u64) << 7)).to_i64
    values[54] = (((bytes[44] >> 46) & 9007199254740991_u64) | ((bytes[45] & 34359738367_u64) << 18)).to_i64
    values[55] = (((bytes[45] >> 35) & 9007199254740991_u64) | ((bytes[46] & 16777215_u64) << 29)).to_i64
    values[56] = (((bytes[46] >> 24) & 9007199254740991_u64) | ((bytes[47] & 8191_u64) << 40)).to_i64
    values[57] = (((bytes[47] >> 13) & 9007199254740991_u64) | ((bytes[48] & 3_u64) << 51)).to_i64
    values[58] = (((bytes[48] >> 2) & 9007199254740991_u64)).to_i64
    values[59] = (((bytes[48] >> 55) & 9007199254740991_u64) | ((bytes[49] & 17592186044415_u64) << 9)).to_i64
    values[60] = (((bytes[49] >> 44) & 9007199254740991_u64) | ((bytes[50] & 8589934591_u64) << 20)).to_i64
    values[61] = (((bytes[50] >> 33) & 9007199254740991_u64) | ((bytes[51] & 4194303_u64) << 31)).to_i64
    values[62] = (((bytes[51] >> 22) & 9007199254740991_u64) | ((bytes[52] & 2047_u64) << 42)).to_i64
    values[63] = (((bytes[52] >> 11) & 9007199254740991_u64)).to_i64
    values
  end

  def self.pack54(values)
    bytes = Slice(UInt64).new(54, 0_u64)
    bytes[0] = (((values[0] & 18014398509481983_u64) << 0) |
                ((values[1] & 18014398509481983_u64) << 54)).to_u64
    bytes[1] = (((values[1] & 18014398509481983_u64) >> 10) |
                ((values[2] & 18014398509481983_u64) << 44)).to_u64
    bytes[2] = (((values[2] & 18014398509481983_u64) >> 20) |
                ((values[3] & 18014398509481983_u64) << 34)).to_u64
    bytes[3] = (((values[3] & 18014398509481983_u64) >> 30) |
                ((values[4] & 18014398509481983_u64) << 24)).to_u64
    bytes[4] = (((values[4] & 18014398509481983_u64) >> 40) |
                ((values[5] & 18014398509481983_u64) << 14)).to_u64
    bytes[5] = (((values[5] & 18014398509481983_u64) >> 50) |
                ((values[6] & 18014398509481983_u64) << 4) |
                ((values[7] & 18014398509481983_u64) << 58)).to_u64
    bytes[6] = (((values[7] & 18014398509481983_u64) >> 6) |
                ((values[8] & 18014398509481983_u64) << 48)).to_u64
    bytes[7] = (((values[8] & 18014398509481983_u64) >> 16) |
                ((values[9] & 18014398509481983_u64) << 38)).to_u64
    bytes[8] = (((values[9] & 18014398509481983_u64) >> 26) |
                ((values[10] & 18014398509481983_u64) << 28)).to_u64
    bytes[9] = (((values[10] & 18014398509481983_u64) >> 36) |
                ((values[11] & 18014398509481983_u64) << 18)).to_u64
    bytes[10] = (((values[11] & 18014398509481983_u64) >> 46) |
                 ((values[12] & 18014398509481983_u64) << 8) |
                 ((values[13] & 18014398509481983_u64) << 62)).to_u64
    bytes[11] = (((values[13] & 18014398509481983_u64) >> 2) |
                 ((values[14] & 18014398509481983_u64) << 52)).to_u64
    bytes[12] = (((values[14] & 18014398509481983_u64) >> 12) |
                 ((values[15] & 18014398509481983_u64) << 42)).to_u64
    bytes[13] = (((values[15] & 18014398509481983_u64) >> 22) |
                 ((values[16] & 18014398509481983_u64) << 32)).to_u64
    bytes[14] = (((values[16] & 18014398509481983_u64) >> 32) |
                 ((values[17] & 18014398509481983_u64) << 22)).to_u64
    bytes[15] = (((values[17] & 18014398509481983_u64) >> 42) |
                 ((values[18] & 18014398509481983_u64) << 12)).to_u64
    bytes[16] = (((values[18] & 18014398509481983_u64) >> 52) |
                 ((values[19] & 18014398509481983_u64) << 2) |
                 ((values[20] & 18014398509481983_u64) << 56)).to_u64
    bytes[17] = (((values[20] & 18014398509481983_u64) >> 8) |
                 ((values[21] & 18014398509481983_u64) << 46)).to_u64
    bytes[18] = (((values[21] & 18014398509481983_u64) >> 18) |
                 ((values[22] & 18014398509481983_u64) << 36)).to_u64
    bytes[19] = (((values[22] & 18014398509481983_u64) >> 28) |
                 ((values[23] & 18014398509481983_u64) << 26)).to_u64
    bytes[20] = (((values[23] & 18014398509481983_u64) >> 38) |
                 ((values[24] & 18014398509481983_u64) << 16)).to_u64
    bytes[21] = (((values[24] & 18014398509481983_u64) >> 48) |
                 ((values[25] & 18014398509481983_u64) << 6) |
                 ((values[26] & 18014398509481983_u64) << 60)).to_u64
    bytes[22] = (((values[26] & 18014398509481983_u64) >> 4) |
                 ((values[27] & 18014398509481983_u64) << 50)).to_u64
    bytes[23] = (((values[27] & 18014398509481983_u64) >> 14) |
                 ((values[28] & 18014398509481983_u64) << 40)).to_u64
    bytes[24] = (((values[28] & 18014398509481983_u64) >> 24) |
                 ((values[29] & 18014398509481983_u64) << 30)).to_u64
    bytes[25] = (((values[29] & 18014398509481983_u64) >> 34) |
                 ((values[30] & 18014398509481983_u64) << 20)).to_u64
    bytes[26] = (((values[30] & 18014398509481983_u64) >> 44) |
                 ((values[31] & 18014398509481983_u64) << 10)).to_u64
    bytes[27] = (((values[32] & 18014398509481983_u64) << 0) |
                 ((values[33] & 18014398509481983_u64) << 54)).to_u64
    bytes[28] = (((values[33] & 18014398509481983_u64) >> 10) |
                 ((values[34] & 18014398509481983_u64) << 44)).to_u64
    bytes[29] = (((values[34] & 18014398509481983_u64) >> 20) |
                 ((values[35] & 18014398509481983_u64) << 34)).to_u64
    bytes[30] = (((values[35] & 18014398509481983_u64) >> 30) |
                 ((values[36] & 18014398509481983_u64) << 24)).to_u64
    bytes[31] = (((values[36] & 18014398509481983_u64) >> 40) |
                 ((values[37] & 18014398509481983_u64) << 14)).to_u64
    bytes[32] = (((values[37] & 18014398509481983_u64) >> 50) |
                 ((values[38] & 18014398509481983_u64) << 4) |
                 ((values[39] & 18014398509481983_u64) << 58)).to_u64
    bytes[33] = (((values[39] & 18014398509481983_u64) >> 6) |
                 ((values[40] & 18014398509481983_u64) << 48)).to_u64
    bytes[34] = (((values[40] & 18014398509481983_u64) >> 16) |
                 ((values[41] & 18014398509481983_u64) << 38)).to_u64
    bytes[35] = (((values[41] & 18014398509481983_u64) >> 26) |
                 ((values[42] & 18014398509481983_u64) << 28)).to_u64
    bytes[36] = (((values[42] & 18014398509481983_u64) >> 36) |
                 ((values[43] & 18014398509481983_u64) << 18)).to_u64
    bytes[37] = (((values[43] & 18014398509481983_u64) >> 46) |
                 ((values[44] & 18014398509481983_u64) << 8) |
                 ((values[45] & 18014398509481983_u64) << 62)).to_u64
    bytes[38] = (((values[45] & 18014398509481983_u64) >> 2) |
                 ((values[46] & 18014398509481983_u64) << 52)).to_u64
    bytes[39] = (((values[46] & 18014398509481983_u64) >> 12) |
                 ((values[47] & 18014398509481983_u64) << 42)).to_u64
    bytes[40] = (((values[47] & 18014398509481983_u64) >> 22) |
                 ((values[48] & 18014398509481983_u64) << 32)).to_u64
    bytes[41] = (((values[48] & 18014398509481983_u64) >> 32) |
                 ((values[49] & 18014398509481983_u64) << 22)).to_u64
    bytes[42] = (((values[49] & 18014398509481983_u64) >> 42) |
                 ((values[50] & 18014398509481983_u64) << 12)).to_u64
    bytes[43] = (((values[50] & 18014398509481983_u64) >> 52) |
                 ((values[51] & 18014398509481983_u64) << 2) |
                 ((values[52] & 18014398509481983_u64) << 56)).to_u64
    bytes[44] = (((values[52] & 18014398509481983_u64) >> 8) |
                 ((values[53] & 18014398509481983_u64) << 46)).to_u64
    bytes[45] = (((values[53] & 18014398509481983_u64) >> 18) |
                 ((values[54] & 18014398509481983_u64) << 36)).to_u64
    bytes[46] = (((values[54] & 18014398509481983_u64) >> 28) |
                 ((values[55] & 18014398509481983_u64) << 26)).to_u64
    bytes[47] = (((values[55] & 18014398509481983_u64) >> 38) |
                 ((values[56] & 18014398509481983_u64) << 16)).to_u64
    bytes[48] = (((values[56] & 18014398509481983_u64) >> 48) |
                 ((values[57] & 18014398509481983_u64) << 6) |
                 ((values[58] & 18014398509481983_u64) << 60)).to_u64
    bytes[49] = (((values[58] & 18014398509481983_u64) >> 4) |
                 ((values[59] & 18014398509481983_u64) << 50)).to_u64
    bytes[50] = (((values[59] & 18014398509481983_u64) >> 14) |
                 ((values[60] & 18014398509481983_u64) << 40)).to_u64
    bytes[51] = (((values[60] & 18014398509481983_u64) >> 24) |
                 ((values[61] & 18014398509481983_u64) << 30)).to_u64
    bytes[52] = (((values[61] & 18014398509481983_u64) >> 34) |
                 ((values[62] & 18014398509481983_u64) << 20)).to_u64
    bytes[53] = (((values[62] & 18014398509481983_u64) >> 44) |
                 ((values[63] & 18014398509481983_u64) << 10)).to_u64
    bytes
  end

  def self.unpack54(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 18014398509481983_u64)).to_i64
    values[1] = (((bytes[0] >> 54) & 18014398509481983_u64) | ((bytes[1] & 17592186044415_u64) << 10)).to_i64
    values[2] = (((bytes[1] >> 44) & 18014398509481983_u64) | ((bytes[2] & 17179869183_u64) << 20)).to_i64
    values[3] = (((bytes[2] >> 34) & 18014398509481983_u64) | ((bytes[3] & 16777215_u64) << 30)).to_i64
    values[4] = (((bytes[3] >> 24) & 18014398509481983_u64) | ((bytes[4] & 16383_u64) << 40)).to_i64
    values[5] = (((bytes[4] >> 14) & 18014398509481983_u64) | ((bytes[5] & 15_u64) << 50)).to_i64
    values[6] = (((bytes[5] >> 4) & 18014398509481983_u64)).to_i64
    values[7] = (((bytes[5] >> 58) & 18014398509481983_u64) | ((bytes[6] & 281474976710655_u64) << 6)).to_i64
    values[8] = (((bytes[6] >> 48) & 18014398509481983_u64) | ((bytes[7] & 274877906943_u64) << 16)).to_i64
    values[9] = (((bytes[7] >> 38) & 18014398509481983_u64) | ((bytes[8] & 268435455_u64) << 26)).to_i64
    values[10] = (((bytes[8] >> 28) & 18014398509481983_u64) | ((bytes[9] & 262143_u64) << 36)).to_i64
    values[11] = (((bytes[9] >> 18) & 18014398509481983_u64) | ((bytes[10] & 255_u64) << 46)).to_i64
    values[12] = (((bytes[10] >> 8) & 18014398509481983_u64)).to_i64
    values[13] = (((bytes[10] >> 62) & 18014398509481983_u64) | ((bytes[11] & 4503599627370495_u64) << 2)).to_i64
    values[14] = (((bytes[11] >> 52) & 18014398509481983_u64) | ((bytes[12] & 4398046511103_u64) << 12)).to_i64
    values[15] = (((bytes[12] >> 42) & 18014398509481983_u64) | ((bytes[13] & 4294967295_u64) << 22)).to_i64
    values[16] = (((bytes[13] >> 32) & 18014398509481983_u64) | ((bytes[14] & 4194303_u64) << 32)).to_i64
    values[17] = (((bytes[14] >> 22) & 18014398509481983_u64) | ((bytes[15] & 4095_u64) << 42)).to_i64
    values[18] = (((bytes[15] >> 12) & 18014398509481983_u64) | ((bytes[16] & 3_u64) << 52)).to_i64
    values[19] = (((bytes[16] >> 2) & 18014398509481983_u64)).to_i64
    values[20] = (((bytes[16] >> 56) & 18014398509481983_u64) | ((bytes[17] & 70368744177663_u64) << 8)).to_i64
    values[21] = (((bytes[17] >> 46) & 18014398509481983_u64) | ((bytes[18] & 68719476735_u64) << 18)).to_i64
    values[22] = (((bytes[18] >> 36) & 18014398509481983_u64) | ((bytes[19] & 67108863_u64) << 28)).to_i64
    values[23] = (((bytes[19] >> 26) & 18014398509481983_u64) | ((bytes[20] & 65535_u64) << 38)).to_i64
    values[24] = (((bytes[20] >> 16) & 18014398509481983_u64) | ((bytes[21] & 63_u64) << 48)).to_i64
    values[25] = (((bytes[21] >> 6) & 18014398509481983_u64)).to_i64
    values[26] = (((bytes[21] >> 60) & 18014398509481983_u64) | ((bytes[22] & 1125899906842623_u64) << 4)).to_i64
    values[27] = (((bytes[22] >> 50) & 18014398509481983_u64) | ((bytes[23] & 1099511627775_u64) << 14)).to_i64
    values[28] = (((bytes[23] >> 40) & 18014398509481983_u64) | ((bytes[24] & 1073741823_u64) << 24)).to_i64
    values[29] = (((bytes[24] >> 30) & 18014398509481983_u64) | ((bytes[25] & 1048575_u64) << 34)).to_i64
    values[30] = (((bytes[25] >> 20) & 18014398509481983_u64) | ((bytes[26] & 1023_u64) << 44)).to_i64
    values[31] = (((bytes[26] >> 10) & 18014398509481983_u64)).to_i64
    values[32] = (((bytes[27] >> 0) & 18014398509481983_u64)).to_i64
    values[33] = (((bytes[27] >> 54) & 18014398509481983_u64) | ((bytes[28] & 17592186044415_u64) << 10)).to_i64
    values[34] = (((bytes[28] >> 44) & 18014398509481983_u64) | ((bytes[29] & 17179869183_u64) << 20)).to_i64
    values[35] = (((bytes[29] >> 34) & 18014398509481983_u64) | ((bytes[30] & 16777215_u64) << 30)).to_i64
    values[36] = (((bytes[30] >> 24) & 18014398509481983_u64) | ((bytes[31] & 16383_u64) << 40)).to_i64
    values[37] = (((bytes[31] >> 14) & 18014398509481983_u64) | ((bytes[32] & 15_u64) << 50)).to_i64
    values[38] = (((bytes[32] >> 4) & 18014398509481983_u64)).to_i64
    values[39] = (((bytes[32] >> 58) & 18014398509481983_u64) | ((bytes[33] & 281474976710655_u64) << 6)).to_i64
    values[40] = (((bytes[33] >> 48) & 18014398509481983_u64) | ((bytes[34] & 274877906943_u64) << 16)).to_i64
    values[41] = (((bytes[34] >> 38) & 18014398509481983_u64) | ((bytes[35] & 268435455_u64) << 26)).to_i64
    values[42] = (((bytes[35] >> 28) & 18014398509481983_u64) | ((bytes[36] & 262143_u64) << 36)).to_i64
    values[43] = (((bytes[36] >> 18) & 18014398509481983_u64) | ((bytes[37] & 255_u64) << 46)).to_i64
    values[44] = (((bytes[37] >> 8) & 18014398509481983_u64)).to_i64
    values[45] = (((bytes[37] >> 62) & 18014398509481983_u64) | ((bytes[38] & 4503599627370495_u64) << 2)).to_i64
    values[46] = (((bytes[38] >> 52) & 18014398509481983_u64) | ((bytes[39] & 4398046511103_u64) << 12)).to_i64
    values[47] = (((bytes[39] >> 42) & 18014398509481983_u64) | ((bytes[40] & 4294967295_u64) << 22)).to_i64
    values[48] = (((bytes[40] >> 32) & 18014398509481983_u64) | ((bytes[41] & 4194303_u64) << 32)).to_i64
    values[49] = (((bytes[41] >> 22) & 18014398509481983_u64) | ((bytes[42] & 4095_u64) << 42)).to_i64
    values[50] = (((bytes[42] >> 12) & 18014398509481983_u64) | ((bytes[43] & 3_u64) << 52)).to_i64
    values[51] = (((bytes[43] >> 2) & 18014398509481983_u64)).to_i64
    values[52] = (((bytes[43] >> 56) & 18014398509481983_u64) | ((bytes[44] & 70368744177663_u64) << 8)).to_i64
    values[53] = (((bytes[44] >> 46) & 18014398509481983_u64) | ((bytes[45] & 68719476735_u64) << 18)).to_i64
    values[54] = (((bytes[45] >> 36) & 18014398509481983_u64) | ((bytes[46] & 67108863_u64) << 28)).to_i64
    values[55] = (((bytes[46] >> 26) & 18014398509481983_u64) | ((bytes[47] & 65535_u64) << 38)).to_i64
    values[56] = (((bytes[47] >> 16) & 18014398509481983_u64) | ((bytes[48] & 63_u64) << 48)).to_i64
    values[57] = (((bytes[48] >> 6) & 18014398509481983_u64)).to_i64
    values[58] = (((bytes[48] >> 60) & 18014398509481983_u64) | ((bytes[49] & 1125899906842623_u64) << 4)).to_i64
    values[59] = (((bytes[49] >> 50) & 18014398509481983_u64) | ((bytes[50] & 1099511627775_u64) << 14)).to_i64
    values[60] = (((bytes[50] >> 40) & 18014398509481983_u64) | ((bytes[51] & 1073741823_u64) << 24)).to_i64
    values[61] = (((bytes[51] >> 30) & 18014398509481983_u64) | ((bytes[52] & 1048575_u64) << 34)).to_i64
    values[62] = (((bytes[52] >> 20) & 18014398509481983_u64) | ((bytes[53] & 1023_u64) << 44)).to_i64
    values[63] = (((bytes[53] >> 10) & 18014398509481983_u64)).to_i64
    values
  end

  def self.pack55(values)
    bytes = Slice(UInt64).new(55, 0_u64)
    bytes[0] = (((values[0] & 36028797018963967_u64) << 0) |
                ((values[1] & 36028797018963967_u64) << 55)).to_u64
    bytes[1] = (((values[1] & 36028797018963967_u64) >> 9) |
                ((values[2] & 36028797018963967_u64) << 46)).to_u64
    bytes[2] = (((values[2] & 36028797018963967_u64) >> 18) |
                ((values[3] & 36028797018963967_u64) << 37)).to_u64
    bytes[3] = (((values[3] & 36028797018963967_u64) >> 27) |
                ((values[4] & 36028797018963967_u64) << 28)).to_u64
    bytes[4] = (((values[4] & 36028797018963967_u64) >> 36) |
                ((values[5] & 36028797018963967_u64) << 19)).to_u64
    bytes[5] = (((values[5] & 36028797018963967_u64) >> 45) |
                ((values[6] & 36028797018963967_u64) << 10)).to_u64
    bytes[6] = (((values[6] & 36028797018963967_u64) >> 54) |
                ((values[7] & 36028797018963967_u64) << 1) |
                ((values[8] & 36028797018963967_u64) << 56)).to_u64
    bytes[7] = (((values[8] & 36028797018963967_u64) >> 8) |
                ((values[9] & 36028797018963967_u64) << 47)).to_u64
    bytes[8] = (((values[9] & 36028797018963967_u64) >> 17) |
                ((values[10] & 36028797018963967_u64) << 38)).to_u64
    bytes[9] = (((values[10] & 36028797018963967_u64) >> 26) |
                ((values[11] & 36028797018963967_u64) << 29)).to_u64
    bytes[10] = (((values[11] & 36028797018963967_u64) >> 35) |
                 ((values[12] & 36028797018963967_u64) << 20)).to_u64
    bytes[11] = (((values[12] & 36028797018963967_u64) >> 44) |
                 ((values[13] & 36028797018963967_u64) << 11)).to_u64
    bytes[12] = (((values[13] & 36028797018963967_u64) >> 53) |
                 ((values[14] & 36028797018963967_u64) << 2) |
                 ((values[15] & 36028797018963967_u64) << 57)).to_u64
    bytes[13] = (((values[15] & 36028797018963967_u64) >> 7) |
                 ((values[16] & 36028797018963967_u64) << 48)).to_u64
    bytes[14] = (((values[16] & 36028797018963967_u64) >> 16) |
                 ((values[17] & 36028797018963967_u64) << 39)).to_u64
    bytes[15] = (((values[17] & 36028797018963967_u64) >> 25) |
                 ((values[18] & 36028797018963967_u64) << 30)).to_u64
    bytes[16] = (((values[18] & 36028797018963967_u64) >> 34) |
                 ((values[19] & 36028797018963967_u64) << 21)).to_u64
    bytes[17] = (((values[19] & 36028797018963967_u64) >> 43) |
                 ((values[20] & 36028797018963967_u64) << 12)).to_u64
    bytes[18] = (((values[20] & 36028797018963967_u64) >> 52) |
                 ((values[21] & 36028797018963967_u64) << 3) |
                 ((values[22] & 36028797018963967_u64) << 58)).to_u64
    bytes[19] = (((values[22] & 36028797018963967_u64) >> 6) |
                 ((values[23] & 36028797018963967_u64) << 49)).to_u64
    bytes[20] = (((values[23] & 36028797018963967_u64) >> 15) |
                 ((values[24] & 36028797018963967_u64) << 40)).to_u64
    bytes[21] = (((values[24] & 36028797018963967_u64) >> 24) |
                 ((values[25] & 36028797018963967_u64) << 31)).to_u64
    bytes[22] = (((values[25] & 36028797018963967_u64) >> 33) |
                 ((values[26] & 36028797018963967_u64) << 22)).to_u64
    bytes[23] = (((values[26] & 36028797018963967_u64) >> 42) |
                 ((values[27] & 36028797018963967_u64) << 13)).to_u64
    bytes[24] = (((values[27] & 36028797018963967_u64) >> 51) |
                 ((values[28] & 36028797018963967_u64) << 4) |
                 ((values[29] & 36028797018963967_u64) << 59)).to_u64
    bytes[25] = (((values[29] & 36028797018963967_u64) >> 5) |
                 ((values[30] & 36028797018963967_u64) << 50)).to_u64
    bytes[26] = (((values[30] & 36028797018963967_u64) >> 14) |
                 ((values[31] & 36028797018963967_u64) << 41)).to_u64
    bytes[27] = (((values[31] & 36028797018963967_u64) >> 23) |
                 ((values[32] & 36028797018963967_u64) << 32)).to_u64
    bytes[28] = (((values[32] & 36028797018963967_u64) >> 32) |
                 ((values[33] & 36028797018963967_u64) << 23)).to_u64
    bytes[29] = (((values[33] & 36028797018963967_u64) >> 41) |
                 ((values[34] & 36028797018963967_u64) << 14)).to_u64
    bytes[30] = (((values[34] & 36028797018963967_u64) >> 50) |
                 ((values[35] & 36028797018963967_u64) << 5) |
                 ((values[36] & 36028797018963967_u64) << 60)).to_u64
    bytes[31] = (((values[36] & 36028797018963967_u64) >> 4) |
                 ((values[37] & 36028797018963967_u64) << 51)).to_u64
    bytes[32] = (((values[37] & 36028797018963967_u64) >> 13) |
                 ((values[38] & 36028797018963967_u64) << 42)).to_u64
    bytes[33] = (((values[38] & 36028797018963967_u64) >> 22) |
                 ((values[39] & 36028797018963967_u64) << 33)).to_u64
    bytes[34] = (((values[39] & 36028797018963967_u64) >> 31) |
                 ((values[40] & 36028797018963967_u64) << 24)).to_u64
    bytes[35] = (((values[40] & 36028797018963967_u64) >> 40) |
                 ((values[41] & 36028797018963967_u64) << 15)).to_u64
    bytes[36] = (((values[41] & 36028797018963967_u64) >> 49) |
                 ((values[42] & 36028797018963967_u64) << 6) |
                 ((values[43] & 36028797018963967_u64) << 61)).to_u64
    bytes[37] = (((values[43] & 36028797018963967_u64) >> 3) |
                 ((values[44] & 36028797018963967_u64) << 52)).to_u64
    bytes[38] = (((values[44] & 36028797018963967_u64) >> 12) |
                 ((values[45] & 36028797018963967_u64) << 43)).to_u64
    bytes[39] = (((values[45] & 36028797018963967_u64) >> 21) |
                 ((values[46] & 36028797018963967_u64) << 34)).to_u64
    bytes[40] = (((values[46] & 36028797018963967_u64) >> 30) |
                 ((values[47] & 36028797018963967_u64) << 25)).to_u64
    bytes[41] = (((values[47] & 36028797018963967_u64) >> 39) |
                 ((values[48] & 36028797018963967_u64) << 16)).to_u64
    bytes[42] = (((values[48] & 36028797018963967_u64) >> 48) |
                 ((values[49] & 36028797018963967_u64) << 7) |
                 ((values[50] & 36028797018963967_u64) << 62)).to_u64
    bytes[43] = (((values[50] & 36028797018963967_u64) >> 2) |
                 ((values[51] & 36028797018963967_u64) << 53)).to_u64
    bytes[44] = (((values[51] & 36028797018963967_u64) >> 11) |
                 ((values[52] & 36028797018963967_u64) << 44)).to_u64
    bytes[45] = (((values[52] & 36028797018963967_u64) >> 20) |
                 ((values[53] & 36028797018963967_u64) << 35)).to_u64
    bytes[46] = (((values[53] & 36028797018963967_u64) >> 29) |
                 ((values[54] & 36028797018963967_u64) << 26)).to_u64
    bytes[47] = (((values[54] & 36028797018963967_u64) >> 38) |
                 ((values[55] & 36028797018963967_u64) << 17)).to_u64
    bytes[48] = (((values[55] & 36028797018963967_u64) >> 47) |
                 ((values[56] & 36028797018963967_u64) << 8) |
                 ((values[57] & 36028797018963967_u64) << 63)).to_u64
    bytes[49] = (((values[57] & 36028797018963967_u64) >> 1) |
                 ((values[58] & 36028797018963967_u64) << 54)).to_u64
    bytes[50] = (((values[58] & 36028797018963967_u64) >> 10) |
                 ((values[59] & 36028797018963967_u64) << 45)).to_u64
    bytes[51] = (((values[59] & 36028797018963967_u64) >> 19) |
                 ((values[60] & 36028797018963967_u64) << 36)).to_u64
    bytes[52] = (((values[60] & 36028797018963967_u64) >> 28) |
                 ((values[61] & 36028797018963967_u64) << 27)).to_u64
    bytes[53] = (((values[61] & 36028797018963967_u64) >> 37) |
                 ((values[62] & 36028797018963967_u64) << 18)).to_u64
    bytes[54] = (((values[62] & 36028797018963967_u64) >> 46) |
                 ((values[63] & 36028797018963967_u64) << 9)).to_u64
    bytes
  end

  def self.unpack55(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 36028797018963967_u64)).to_i64
    values[1] = (((bytes[0] >> 55) & 36028797018963967_u64) | ((bytes[1] & 70368744177663_u64) << 9)).to_i64
    values[2] = (((bytes[1] >> 46) & 36028797018963967_u64) | ((bytes[2] & 137438953471_u64) << 18)).to_i64
    values[3] = (((bytes[2] >> 37) & 36028797018963967_u64) | ((bytes[3] & 268435455_u64) << 27)).to_i64
    values[4] = (((bytes[3] >> 28) & 36028797018963967_u64) | ((bytes[4] & 524287_u64) << 36)).to_i64
    values[5] = (((bytes[4] >> 19) & 36028797018963967_u64) | ((bytes[5] & 1023_u64) << 45)).to_i64
    values[6] = (((bytes[5] >> 10) & 36028797018963967_u64) | ((bytes[6] & 1_u64) << 54)).to_i64
    values[7] = (((bytes[6] >> 1) & 36028797018963967_u64)).to_i64
    values[8] = (((bytes[6] >> 56) & 36028797018963967_u64) | ((bytes[7] & 140737488355327_u64) << 8)).to_i64
    values[9] = (((bytes[7] >> 47) & 36028797018963967_u64) | ((bytes[8] & 274877906943_u64) << 17)).to_i64
    values[10] = (((bytes[8] >> 38) & 36028797018963967_u64) | ((bytes[9] & 536870911_u64) << 26)).to_i64
    values[11] = (((bytes[9] >> 29) & 36028797018963967_u64) | ((bytes[10] & 1048575_u64) << 35)).to_i64
    values[12] = (((bytes[10] >> 20) & 36028797018963967_u64) | ((bytes[11] & 2047_u64) << 44)).to_i64
    values[13] = (((bytes[11] >> 11) & 36028797018963967_u64) | ((bytes[12] & 3_u64) << 53)).to_i64
    values[14] = (((bytes[12] >> 2) & 36028797018963967_u64)).to_i64
    values[15] = (((bytes[12] >> 57) & 36028797018963967_u64) | ((bytes[13] & 281474976710655_u64) << 7)).to_i64
    values[16] = (((bytes[13] >> 48) & 36028797018963967_u64) | ((bytes[14] & 549755813887_u64) << 16)).to_i64
    values[17] = (((bytes[14] >> 39) & 36028797018963967_u64) | ((bytes[15] & 1073741823_u64) << 25)).to_i64
    values[18] = (((bytes[15] >> 30) & 36028797018963967_u64) | ((bytes[16] & 2097151_u64) << 34)).to_i64
    values[19] = (((bytes[16] >> 21) & 36028797018963967_u64) | ((bytes[17] & 4095_u64) << 43)).to_i64
    values[20] = (((bytes[17] >> 12) & 36028797018963967_u64) | ((bytes[18] & 7_u64) << 52)).to_i64
    values[21] = (((bytes[18] >> 3) & 36028797018963967_u64)).to_i64
    values[22] = (((bytes[18] >> 58) & 36028797018963967_u64) | ((bytes[19] & 562949953421311_u64) << 6)).to_i64
    values[23] = (((bytes[19] >> 49) & 36028797018963967_u64) | ((bytes[20] & 1099511627775_u64) << 15)).to_i64
    values[24] = (((bytes[20] >> 40) & 36028797018963967_u64) | ((bytes[21] & 2147483647_u64) << 24)).to_i64
    values[25] = (((bytes[21] >> 31) & 36028797018963967_u64) | ((bytes[22] & 4194303_u64) << 33)).to_i64
    values[26] = (((bytes[22] >> 22) & 36028797018963967_u64) | ((bytes[23] & 8191_u64) << 42)).to_i64
    values[27] = (((bytes[23] >> 13) & 36028797018963967_u64) | ((bytes[24] & 15_u64) << 51)).to_i64
    values[28] = (((bytes[24] >> 4) & 36028797018963967_u64)).to_i64
    values[29] = (((bytes[24] >> 59) & 36028797018963967_u64) | ((bytes[25] & 1125899906842623_u64) << 5)).to_i64
    values[30] = (((bytes[25] >> 50) & 36028797018963967_u64) | ((bytes[26] & 2199023255551_u64) << 14)).to_i64
    values[31] = (((bytes[26] >> 41) & 36028797018963967_u64) | ((bytes[27] & 4294967295_u64) << 23)).to_i64
    values[32] = (((bytes[27] >> 32) & 36028797018963967_u64) | ((bytes[28] & 8388607_u64) << 32)).to_i64
    values[33] = (((bytes[28] >> 23) & 36028797018963967_u64) | ((bytes[29] & 16383_u64) << 41)).to_i64
    values[34] = (((bytes[29] >> 14) & 36028797018963967_u64) | ((bytes[30] & 31_u64) << 50)).to_i64
    values[35] = (((bytes[30] >> 5) & 36028797018963967_u64)).to_i64
    values[36] = (((bytes[30] >> 60) & 36028797018963967_u64) | ((bytes[31] & 2251799813685247_u64) << 4)).to_i64
    values[37] = (((bytes[31] >> 51) & 36028797018963967_u64) | ((bytes[32] & 4398046511103_u64) << 13)).to_i64
    values[38] = (((bytes[32] >> 42) & 36028797018963967_u64) | ((bytes[33] & 8589934591_u64) << 22)).to_i64
    values[39] = (((bytes[33] >> 33) & 36028797018963967_u64) | ((bytes[34] & 16777215_u64) << 31)).to_i64
    values[40] = (((bytes[34] >> 24) & 36028797018963967_u64) | ((bytes[35] & 32767_u64) << 40)).to_i64
    values[41] = (((bytes[35] >> 15) & 36028797018963967_u64) | ((bytes[36] & 63_u64) << 49)).to_i64
    values[42] = (((bytes[36] >> 6) & 36028797018963967_u64)).to_i64
    values[43] = (((bytes[36] >> 61) & 36028797018963967_u64) | ((bytes[37] & 4503599627370495_u64) << 3)).to_i64
    values[44] = (((bytes[37] >> 52) & 36028797018963967_u64) | ((bytes[38] & 8796093022207_u64) << 12)).to_i64
    values[45] = (((bytes[38] >> 43) & 36028797018963967_u64) | ((bytes[39] & 17179869183_u64) << 21)).to_i64
    values[46] = (((bytes[39] >> 34) & 36028797018963967_u64) | ((bytes[40] & 33554431_u64) << 30)).to_i64
    values[47] = (((bytes[40] >> 25) & 36028797018963967_u64) | ((bytes[41] & 65535_u64) << 39)).to_i64
    values[48] = (((bytes[41] >> 16) & 36028797018963967_u64) | ((bytes[42] & 127_u64) << 48)).to_i64
    values[49] = (((bytes[42] >> 7) & 36028797018963967_u64)).to_i64
    values[50] = (((bytes[42] >> 62) & 36028797018963967_u64) | ((bytes[43] & 9007199254740991_u64) << 2)).to_i64
    values[51] = (((bytes[43] >> 53) & 36028797018963967_u64) | ((bytes[44] & 17592186044415_u64) << 11)).to_i64
    values[52] = (((bytes[44] >> 44) & 36028797018963967_u64) | ((bytes[45] & 34359738367_u64) << 20)).to_i64
    values[53] = (((bytes[45] >> 35) & 36028797018963967_u64) | ((bytes[46] & 67108863_u64) << 29)).to_i64
    values[54] = (((bytes[46] >> 26) & 36028797018963967_u64) | ((bytes[47] & 131071_u64) << 38)).to_i64
    values[55] = (((bytes[47] >> 17) & 36028797018963967_u64) | ((bytes[48] & 255_u64) << 47)).to_i64
    values[56] = (((bytes[48] >> 8) & 36028797018963967_u64)).to_i64
    values[57] = (((bytes[48] >> 63) & 36028797018963967_u64) | ((bytes[49] & 18014398509481983_u64) << 1)).to_i64
    values[58] = (((bytes[49] >> 54) & 36028797018963967_u64) | ((bytes[50] & 35184372088831_u64) << 10)).to_i64
    values[59] = (((bytes[50] >> 45) & 36028797018963967_u64) | ((bytes[51] & 68719476735_u64) << 19)).to_i64
    values[60] = (((bytes[51] >> 36) & 36028797018963967_u64) | ((bytes[52] & 134217727_u64) << 28)).to_i64
    values[61] = (((bytes[52] >> 27) & 36028797018963967_u64) | ((bytes[53] & 262143_u64) << 37)).to_i64
    values[62] = (((bytes[53] >> 18) & 36028797018963967_u64) | ((bytes[54] & 511_u64) << 46)).to_i64
    values[63] = (((bytes[54] >> 9) & 36028797018963967_u64)).to_i64
    values
  end

  def self.pack56(values)
    bytes = Slice(UInt64).new(56, 0_u64)
    bytes[0] = (((values[0] & 72057594037927935_u64) << 0) |
                ((values[1] & 72057594037927935_u64) << 56)).to_u64
    bytes[1] = (((values[1] & 72057594037927935_u64) >> 8) |
                ((values[2] & 72057594037927935_u64) << 48)).to_u64
    bytes[2] = (((values[2] & 72057594037927935_u64) >> 16) |
                ((values[3] & 72057594037927935_u64) << 40)).to_u64
    bytes[3] = (((values[3] & 72057594037927935_u64) >> 24) |
                ((values[4] & 72057594037927935_u64) << 32)).to_u64
    bytes[4] = (((values[4] & 72057594037927935_u64) >> 32) |
                ((values[5] & 72057594037927935_u64) << 24)).to_u64
    bytes[5] = (((values[5] & 72057594037927935_u64) >> 40) |
                ((values[6] & 72057594037927935_u64) << 16)).to_u64
    bytes[6] = (((values[6] & 72057594037927935_u64) >> 48) |
                ((values[7] & 72057594037927935_u64) << 8)).to_u64
    bytes[7] = (((values[8] & 72057594037927935_u64) << 0) |
                ((values[9] & 72057594037927935_u64) << 56)).to_u64
    bytes[8] = (((values[9] & 72057594037927935_u64) >> 8) |
                ((values[10] & 72057594037927935_u64) << 48)).to_u64
    bytes[9] = (((values[10] & 72057594037927935_u64) >> 16) |
                ((values[11] & 72057594037927935_u64) << 40)).to_u64
    bytes[10] = (((values[11] & 72057594037927935_u64) >> 24) |
                 ((values[12] & 72057594037927935_u64) << 32)).to_u64
    bytes[11] = (((values[12] & 72057594037927935_u64) >> 32) |
                 ((values[13] & 72057594037927935_u64) << 24)).to_u64
    bytes[12] = (((values[13] & 72057594037927935_u64) >> 40) |
                 ((values[14] & 72057594037927935_u64) << 16)).to_u64
    bytes[13] = (((values[14] & 72057594037927935_u64) >> 48) |
                 ((values[15] & 72057594037927935_u64) << 8)).to_u64
    bytes[14] = (((values[16] & 72057594037927935_u64) << 0) |
                 ((values[17] & 72057594037927935_u64) << 56)).to_u64
    bytes[15] = (((values[17] & 72057594037927935_u64) >> 8) |
                 ((values[18] & 72057594037927935_u64) << 48)).to_u64
    bytes[16] = (((values[18] & 72057594037927935_u64) >> 16) |
                 ((values[19] & 72057594037927935_u64) << 40)).to_u64
    bytes[17] = (((values[19] & 72057594037927935_u64) >> 24) |
                 ((values[20] & 72057594037927935_u64) << 32)).to_u64
    bytes[18] = (((values[20] & 72057594037927935_u64) >> 32) |
                 ((values[21] & 72057594037927935_u64) << 24)).to_u64
    bytes[19] = (((values[21] & 72057594037927935_u64) >> 40) |
                 ((values[22] & 72057594037927935_u64) << 16)).to_u64
    bytes[20] = (((values[22] & 72057594037927935_u64) >> 48) |
                 ((values[23] & 72057594037927935_u64) << 8)).to_u64
    bytes[21] = (((values[24] & 72057594037927935_u64) << 0) |
                 ((values[25] & 72057594037927935_u64) << 56)).to_u64
    bytes[22] = (((values[25] & 72057594037927935_u64) >> 8) |
                 ((values[26] & 72057594037927935_u64) << 48)).to_u64
    bytes[23] = (((values[26] & 72057594037927935_u64) >> 16) |
                 ((values[27] & 72057594037927935_u64) << 40)).to_u64
    bytes[24] = (((values[27] & 72057594037927935_u64) >> 24) |
                 ((values[28] & 72057594037927935_u64) << 32)).to_u64
    bytes[25] = (((values[28] & 72057594037927935_u64) >> 32) |
                 ((values[29] & 72057594037927935_u64) << 24)).to_u64
    bytes[26] = (((values[29] & 72057594037927935_u64) >> 40) |
                 ((values[30] & 72057594037927935_u64) << 16)).to_u64
    bytes[27] = (((values[30] & 72057594037927935_u64) >> 48) |
                 ((values[31] & 72057594037927935_u64) << 8)).to_u64
    bytes[28] = (((values[32] & 72057594037927935_u64) << 0) |
                 ((values[33] & 72057594037927935_u64) << 56)).to_u64
    bytes[29] = (((values[33] & 72057594037927935_u64) >> 8) |
                 ((values[34] & 72057594037927935_u64) << 48)).to_u64
    bytes[30] = (((values[34] & 72057594037927935_u64) >> 16) |
                 ((values[35] & 72057594037927935_u64) << 40)).to_u64
    bytes[31] = (((values[35] & 72057594037927935_u64) >> 24) |
                 ((values[36] & 72057594037927935_u64) << 32)).to_u64
    bytes[32] = (((values[36] & 72057594037927935_u64) >> 32) |
                 ((values[37] & 72057594037927935_u64) << 24)).to_u64
    bytes[33] = (((values[37] & 72057594037927935_u64) >> 40) |
                 ((values[38] & 72057594037927935_u64) << 16)).to_u64
    bytes[34] = (((values[38] & 72057594037927935_u64) >> 48) |
                 ((values[39] & 72057594037927935_u64) << 8)).to_u64
    bytes[35] = (((values[40] & 72057594037927935_u64) << 0) |
                 ((values[41] & 72057594037927935_u64) << 56)).to_u64
    bytes[36] = (((values[41] & 72057594037927935_u64) >> 8) |
                 ((values[42] & 72057594037927935_u64) << 48)).to_u64
    bytes[37] = (((values[42] & 72057594037927935_u64) >> 16) |
                 ((values[43] & 72057594037927935_u64) << 40)).to_u64
    bytes[38] = (((values[43] & 72057594037927935_u64) >> 24) |
                 ((values[44] & 72057594037927935_u64) << 32)).to_u64
    bytes[39] = (((values[44] & 72057594037927935_u64) >> 32) |
                 ((values[45] & 72057594037927935_u64) << 24)).to_u64
    bytes[40] = (((values[45] & 72057594037927935_u64) >> 40) |
                 ((values[46] & 72057594037927935_u64) << 16)).to_u64
    bytes[41] = (((values[46] & 72057594037927935_u64) >> 48) |
                 ((values[47] & 72057594037927935_u64) << 8)).to_u64
    bytes[42] = (((values[48] & 72057594037927935_u64) << 0) |
                 ((values[49] & 72057594037927935_u64) << 56)).to_u64
    bytes[43] = (((values[49] & 72057594037927935_u64) >> 8) |
                 ((values[50] & 72057594037927935_u64) << 48)).to_u64
    bytes[44] = (((values[50] & 72057594037927935_u64) >> 16) |
                 ((values[51] & 72057594037927935_u64) << 40)).to_u64
    bytes[45] = (((values[51] & 72057594037927935_u64) >> 24) |
                 ((values[52] & 72057594037927935_u64) << 32)).to_u64
    bytes[46] = (((values[52] & 72057594037927935_u64) >> 32) |
                 ((values[53] & 72057594037927935_u64) << 24)).to_u64
    bytes[47] = (((values[53] & 72057594037927935_u64) >> 40) |
                 ((values[54] & 72057594037927935_u64) << 16)).to_u64
    bytes[48] = (((values[54] & 72057594037927935_u64) >> 48) |
                 ((values[55] & 72057594037927935_u64) << 8)).to_u64
    bytes[49] = (((values[56] & 72057594037927935_u64) << 0) |
                 ((values[57] & 72057594037927935_u64) << 56)).to_u64
    bytes[50] = (((values[57] & 72057594037927935_u64) >> 8) |
                 ((values[58] & 72057594037927935_u64) << 48)).to_u64
    bytes[51] = (((values[58] & 72057594037927935_u64) >> 16) |
                 ((values[59] & 72057594037927935_u64) << 40)).to_u64
    bytes[52] = (((values[59] & 72057594037927935_u64) >> 24) |
                 ((values[60] & 72057594037927935_u64) << 32)).to_u64
    bytes[53] = (((values[60] & 72057594037927935_u64) >> 32) |
                 ((values[61] & 72057594037927935_u64) << 24)).to_u64
    bytes[54] = (((values[61] & 72057594037927935_u64) >> 40) |
                 ((values[62] & 72057594037927935_u64) << 16)).to_u64
    bytes[55] = (((values[62] & 72057594037927935_u64) >> 48) |
                 ((values[63] & 72057594037927935_u64) << 8)).to_u64
    bytes
  end

  def self.unpack56(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 72057594037927935_u64)).to_i64
    values[1] = (((bytes[0] >> 56) & 72057594037927935_u64) | ((bytes[1] & 281474976710655_u64) << 8)).to_i64
    values[2] = (((bytes[1] >> 48) & 72057594037927935_u64) | ((bytes[2] & 1099511627775_u64) << 16)).to_i64
    values[3] = (((bytes[2] >> 40) & 72057594037927935_u64) | ((bytes[3] & 4294967295_u64) << 24)).to_i64
    values[4] = (((bytes[3] >> 32) & 72057594037927935_u64) | ((bytes[4] & 16777215_u64) << 32)).to_i64
    values[5] = (((bytes[4] >> 24) & 72057594037927935_u64) | ((bytes[5] & 65535_u64) << 40)).to_i64
    values[6] = (((bytes[5] >> 16) & 72057594037927935_u64) | ((bytes[6] & 255_u64) << 48)).to_i64
    values[7] = (((bytes[6] >> 8) & 72057594037927935_u64)).to_i64
    values[8] = (((bytes[7] >> 0) & 72057594037927935_u64)).to_i64
    values[9] = (((bytes[7] >> 56) & 72057594037927935_u64) | ((bytes[8] & 281474976710655_u64) << 8)).to_i64
    values[10] = (((bytes[8] >> 48) & 72057594037927935_u64) | ((bytes[9] & 1099511627775_u64) << 16)).to_i64
    values[11] = (((bytes[9] >> 40) & 72057594037927935_u64) | ((bytes[10] & 4294967295_u64) << 24)).to_i64
    values[12] = (((bytes[10] >> 32) & 72057594037927935_u64) | ((bytes[11] & 16777215_u64) << 32)).to_i64
    values[13] = (((bytes[11] >> 24) & 72057594037927935_u64) | ((bytes[12] & 65535_u64) << 40)).to_i64
    values[14] = (((bytes[12] >> 16) & 72057594037927935_u64) | ((bytes[13] & 255_u64) << 48)).to_i64
    values[15] = (((bytes[13] >> 8) & 72057594037927935_u64)).to_i64
    values[16] = (((bytes[14] >> 0) & 72057594037927935_u64)).to_i64
    values[17] = (((bytes[14] >> 56) & 72057594037927935_u64) | ((bytes[15] & 281474976710655_u64) << 8)).to_i64
    values[18] = (((bytes[15] >> 48) & 72057594037927935_u64) | ((bytes[16] & 1099511627775_u64) << 16)).to_i64
    values[19] = (((bytes[16] >> 40) & 72057594037927935_u64) | ((bytes[17] & 4294967295_u64) << 24)).to_i64
    values[20] = (((bytes[17] >> 32) & 72057594037927935_u64) | ((bytes[18] & 16777215_u64) << 32)).to_i64
    values[21] = (((bytes[18] >> 24) & 72057594037927935_u64) | ((bytes[19] & 65535_u64) << 40)).to_i64
    values[22] = (((bytes[19] >> 16) & 72057594037927935_u64) | ((bytes[20] & 255_u64) << 48)).to_i64
    values[23] = (((bytes[20] >> 8) & 72057594037927935_u64)).to_i64
    values[24] = (((bytes[21] >> 0) & 72057594037927935_u64)).to_i64
    values[25] = (((bytes[21] >> 56) & 72057594037927935_u64) | ((bytes[22] & 281474976710655_u64) << 8)).to_i64
    values[26] = (((bytes[22] >> 48) & 72057594037927935_u64) | ((bytes[23] & 1099511627775_u64) << 16)).to_i64
    values[27] = (((bytes[23] >> 40) & 72057594037927935_u64) | ((bytes[24] & 4294967295_u64) << 24)).to_i64
    values[28] = (((bytes[24] >> 32) & 72057594037927935_u64) | ((bytes[25] & 16777215_u64) << 32)).to_i64
    values[29] = (((bytes[25] >> 24) & 72057594037927935_u64) | ((bytes[26] & 65535_u64) << 40)).to_i64
    values[30] = (((bytes[26] >> 16) & 72057594037927935_u64) | ((bytes[27] & 255_u64) << 48)).to_i64
    values[31] = (((bytes[27] >> 8) & 72057594037927935_u64)).to_i64
    values[32] = (((bytes[28] >> 0) & 72057594037927935_u64)).to_i64
    values[33] = (((bytes[28] >> 56) & 72057594037927935_u64) | ((bytes[29] & 281474976710655_u64) << 8)).to_i64
    values[34] = (((bytes[29] >> 48) & 72057594037927935_u64) | ((bytes[30] & 1099511627775_u64) << 16)).to_i64
    values[35] = (((bytes[30] >> 40) & 72057594037927935_u64) | ((bytes[31] & 4294967295_u64) << 24)).to_i64
    values[36] = (((bytes[31] >> 32) & 72057594037927935_u64) | ((bytes[32] & 16777215_u64) << 32)).to_i64
    values[37] = (((bytes[32] >> 24) & 72057594037927935_u64) | ((bytes[33] & 65535_u64) << 40)).to_i64
    values[38] = (((bytes[33] >> 16) & 72057594037927935_u64) | ((bytes[34] & 255_u64) << 48)).to_i64
    values[39] = (((bytes[34] >> 8) & 72057594037927935_u64)).to_i64
    values[40] = (((bytes[35] >> 0) & 72057594037927935_u64)).to_i64
    values[41] = (((bytes[35] >> 56) & 72057594037927935_u64) | ((bytes[36] & 281474976710655_u64) << 8)).to_i64
    values[42] = (((bytes[36] >> 48) & 72057594037927935_u64) | ((bytes[37] & 1099511627775_u64) << 16)).to_i64
    values[43] = (((bytes[37] >> 40) & 72057594037927935_u64) | ((bytes[38] & 4294967295_u64) << 24)).to_i64
    values[44] = (((bytes[38] >> 32) & 72057594037927935_u64) | ((bytes[39] & 16777215_u64) << 32)).to_i64
    values[45] = (((bytes[39] >> 24) & 72057594037927935_u64) | ((bytes[40] & 65535_u64) << 40)).to_i64
    values[46] = (((bytes[40] >> 16) & 72057594037927935_u64) | ((bytes[41] & 255_u64) << 48)).to_i64
    values[47] = (((bytes[41] >> 8) & 72057594037927935_u64)).to_i64
    values[48] = (((bytes[42] >> 0) & 72057594037927935_u64)).to_i64
    values[49] = (((bytes[42] >> 56) & 72057594037927935_u64) | ((bytes[43] & 281474976710655_u64) << 8)).to_i64
    values[50] = (((bytes[43] >> 48) & 72057594037927935_u64) | ((bytes[44] & 1099511627775_u64) << 16)).to_i64
    values[51] = (((bytes[44] >> 40) & 72057594037927935_u64) | ((bytes[45] & 4294967295_u64) << 24)).to_i64
    values[52] = (((bytes[45] >> 32) & 72057594037927935_u64) | ((bytes[46] & 16777215_u64) << 32)).to_i64
    values[53] = (((bytes[46] >> 24) & 72057594037927935_u64) | ((bytes[47] & 65535_u64) << 40)).to_i64
    values[54] = (((bytes[47] >> 16) & 72057594037927935_u64) | ((bytes[48] & 255_u64) << 48)).to_i64
    values[55] = (((bytes[48] >> 8) & 72057594037927935_u64)).to_i64
    values[56] = (((bytes[49] >> 0) & 72057594037927935_u64)).to_i64
    values[57] = (((bytes[49] >> 56) & 72057594037927935_u64) | ((bytes[50] & 281474976710655_u64) << 8)).to_i64
    values[58] = (((bytes[50] >> 48) & 72057594037927935_u64) | ((bytes[51] & 1099511627775_u64) << 16)).to_i64
    values[59] = (((bytes[51] >> 40) & 72057594037927935_u64) | ((bytes[52] & 4294967295_u64) << 24)).to_i64
    values[60] = (((bytes[52] >> 32) & 72057594037927935_u64) | ((bytes[53] & 16777215_u64) << 32)).to_i64
    values[61] = (((bytes[53] >> 24) & 72057594037927935_u64) | ((bytes[54] & 65535_u64) << 40)).to_i64
    values[62] = (((bytes[54] >> 16) & 72057594037927935_u64) | ((bytes[55] & 255_u64) << 48)).to_i64
    values[63] = (((bytes[55] >> 8) & 72057594037927935_u64)).to_i64
    values
  end

  def self.pack57(values)
    bytes = Slice(UInt64).new(57, 0_u64)
    bytes[0] = (((values[0] & 144115188075855871_u64) << 0) |
                ((values[1] & 144115188075855871_u64) << 57)).to_u64
    bytes[1] = (((values[1] & 144115188075855871_u64) >> 7) |
                ((values[2] & 144115188075855871_u64) << 50)).to_u64
    bytes[2] = (((values[2] & 144115188075855871_u64) >> 14) |
                ((values[3] & 144115188075855871_u64) << 43)).to_u64
    bytes[3] = (((values[3] & 144115188075855871_u64) >> 21) |
                ((values[4] & 144115188075855871_u64) << 36)).to_u64
    bytes[4] = (((values[4] & 144115188075855871_u64) >> 28) |
                ((values[5] & 144115188075855871_u64) << 29)).to_u64
    bytes[5] = (((values[5] & 144115188075855871_u64) >> 35) |
                ((values[6] & 144115188075855871_u64) << 22)).to_u64
    bytes[6] = (((values[6] & 144115188075855871_u64) >> 42) |
                ((values[7] & 144115188075855871_u64) << 15)).to_u64
    bytes[7] = (((values[7] & 144115188075855871_u64) >> 49) |
                ((values[8] & 144115188075855871_u64) << 8)).to_u64
    bytes[8] = (((values[8] & 144115188075855871_u64) >> 56) |
                ((values[9] & 144115188075855871_u64) << 1) |
                ((values[10] & 144115188075855871_u64) << 58)).to_u64
    bytes[9] = (((values[10] & 144115188075855871_u64) >> 6) |
                ((values[11] & 144115188075855871_u64) << 51)).to_u64
    bytes[10] = (((values[11] & 144115188075855871_u64) >> 13) |
                 ((values[12] & 144115188075855871_u64) << 44)).to_u64
    bytes[11] = (((values[12] & 144115188075855871_u64) >> 20) |
                 ((values[13] & 144115188075855871_u64) << 37)).to_u64
    bytes[12] = (((values[13] & 144115188075855871_u64) >> 27) |
                 ((values[14] & 144115188075855871_u64) << 30)).to_u64
    bytes[13] = (((values[14] & 144115188075855871_u64) >> 34) |
                 ((values[15] & 144115188075855871_u64) << 23)).to_u64
    bytes[14] = (((values[15] & 144115188075855871_u64) >> 41) |
                 ((values[16] & 144115188075855871_u64) << 16)).to_u64
    bytes[15] = (((values[16] & 144115188075855871_u64) >> 48) |
                 ((values[17] & 144115188075855871_u64) << 9)).to_u64
    bytes[16] = (((values[17] & 144115188075855871_u64) >> 55) |
                 ((values[18] & 144115188075855871_u64) << 2) |
                 ((values[19] & 144115188075855871_u64) << 59)).to_u64
    bytes[17] = (((values[19] & 144115188075855871_u64) >> 5) |
                 ((values[20] & 144115188075855871_u64) << 52)).to_u64
    bytes[18] = (((values[20] & 144115188075855871_u64) >> 12) |
                 ((values[21] & 144115188075855871_u64) << 45)).to_u64
    bytes[19] = (((values[21] & 144115188075855871_u64) >> 19) |
                 ((values[22] & 144115188075855871_u64) << 38)).to_u64
    bytes[20] = (((values[22] & 144115188075855871_u64) >> 26) |
                 ((values[23] & 144115188075855871_u64) << 31)).to_u64
    bytes[21] = (((values[23] & 144115188075855871_u64) >> 33) |
                 ((values[24] & 144115188075855871_u64) << 24)).to_u64
    bytes[22] = (((values[24] & 144115188075855871_u64) >> 40) |
                 ((values[25] & 144115188075855871_u64) << 17)).to_u64
    bytes[23] = (((values[25] & 144115188075855871_u64) >> 47) |
                 ((values[26] & 144115188075855871_u64) << 10)).to_u64
    bytes[24] = (((values[26] & 144115188075855871_u64) >> 54) |
                 ((values[27] & 144115188075855871_u64) << 3) |
                 ((values[28] & 144115188075855871_u64) << 60)).to_u64
    bytes[25] = (((values[28] & 144115188075855871_u64) >> 4) |
                 ((values[29] & 144115188075855871_u64) << 53)).to_u64
    bytes[26] = (((values[29] & 144115188075855871_u64) >> 11) |
                 ((values[30] & 144115188075855871_u64) << 46)).to_u64
    bytes[27] = (((values[30] & 144115188075855871_u64) >> 18) |
                 ((values[31] & 144115188075855871_u64) << 39)).to_u64
    bytes[28] = (((values[31] & 144115188075855871_u64) >> 25) |
                 ((values[32] & 144115188075855871_u64) << 32)).to_u64
    bytes[29] = (((values[32] & 144115188075855871_u64) >> 32) |
                 ((values[33] & 144115188075855871_u64) << 25)).to_u64
    bytes[30] = (((values[33] & 144115188075855871_u64) >> 39) |
                 ((values[34] & 144115188075855871_u64) << 18)).to_u64
    bytes[31] = (((values[34] & 144115188075855871_u64) >> 46) |
                 ((values[35] & 144115188075855871_u64) << 11)).to_u64
    bytes[32] = (((values[35] & 144115188075855871_u64) >> 53) |
                 ((values[36] & 144115188075855871_u64) << 4) |
                 ((values[37] & 144115188075855871_u64) << 61)).to_u64
    bytes[33] = (((values[37] & 144115188075855871_u64) >> 3) |
                 ((values[38] & 144115188075855871_u64) << 54)).to_u64
    bytes[34] = (((values[38] & 144115188075855871_u64) >> 10) |
                 ((values[39] & 144115188075855871_u64) << 47)).to_u64
    bytes[35] = (((values[39] & 144115188075855871_u64) >> 17) |
                 ((values[40] & 144115188075855871_u64) << 40)).to_u64
    bytes[36] = (((values[40] & 144115188075855871_u64) >> 24) |
                 ((values[41] & 144115188075855871_u64) << 33)).to_u64
    bytes[37] = (((values[41] & 144115188075855871_u64) >> 31) |
                 ((values[42] & 144115188075855871_u64) << 26)).to_u64
    bytes[38] = (((values[42] & 144115188075855871_u64) >> 38) |
                 ((values[43] & 144115188075855871_u64) << 19)).to_u64
    bytes[39] = (((values[43] & 144115188075855871_u64) >> 45) |
                 ((values[44] & 144115188075855871_u64) << 12)).to_u64
    bytes[40] = (((values[44] & 144115188075855871_u64) >> 52) |
                 ((values[45] & 144115188075855871_u64) << 5) |
                 ((values[46] & 144115188075855871_u64) << 62)).to_u64
    bytes[41] = (((values[46] & 144115188075855871_u64) >> 2) |
                 ((values[47] & 144115188075855871_u64) << 55)).to_u64
    bytes[42] = (((values[47] & 144115188075855871_u64) >> 9) |
                 ((values[48] & 144115188075855871_u64) << 48)).to_u64
    bytes[43] = (((values[48] & 144115188075855871_u64) >> 16) |
                 ((values[49] & 144115188075855871_u64) << 41)).to_u64
    bytes[44] = (((values[49] & 144115188075855871_u64) >> 23) |
                 ((values[50] & 144115188075855871_u64) << 34)).to_u64
    bytes[45] = (((values[50] & 144115188075855871_u64) >> 30) |
                 ((values[51] & 144115188075855871_u64) << 27)).to_u64
    bytes[46] = (((values[51] & 144115188075855871_u64) >> 37) |
                 ((values[52] & 144115188075855871_u64) << 20)).to_u64
    bytes[47] = (((values[52] & 144115188075855871_u64) >> 44) |
                 ((values[53] & 144115188075855871_u64) << 13)).to_u64
    bytes[48] = (((values[53] & 144115188075855871_u64) >> 51) |
                 ((values[54] & 144115188075855871_u64) << 6) |
                 ((values[55] & 144115188075855871_u64) << 63)).to_u64
    bytes[49] = (((values[55] & 144115188075855871_u64) >> 1) |
                 ((values[56] & 144115188075855871_u64) << 56)).to_u64
    bytes[50] = (((values[56] & 144115188075855871_u64) >> 8) |
                 ((values[57] & 144115188075855871_u64) << 49)).to_u64
    bytes[51] = (((values[57] & 144115188075855871_u64) >> 15) |
                 ((values[58] & 144115188075855871_u64) << 42)).to_u64
    bytes[52] = (((values[58] & 144115188075855871_u64) >> 22) |
                 ((values[59] & 144115188075855871_u64) << 35)).to_u64
    bytes[53] = (((values[59] & 144115188075855871_u64) >> 29) |
                 ((values[60] & 144115188075855871_u64) << 28)).to_u64
    bytes[54] = (((values[60] & 144115188075855871_u64) >> 36) |
                 ((values[61] & 144115188075855871_u64) << 21)).to_u64
    bytes[55] = (((values[61] & 144115188075855871_u64) >> 43) |
                 ((values[62] & 144115188075855871_u64) << 14)).to_u64
    bytes[56] = (((values[62] & 144115188075855871_u64) >> 50) |
                 ((values[63] & 144115188075855871_u64) << 7)).to_u64
    bytes
  end

  def self.unpack57(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 144115188075855871_u64)).to_i64
    values[1] = (((bytes[0] >> 57) & 144115188075855871_u64) | ((bytes[1] & 1125899906842623_u64) << 7)).to_i64
    values[2] = (((bytes[1] >> 50) & 144115188075855871_u64) | ((bytes[2] & 8796093022207_u64) << 14)).to_i64
    values[3] = (((bytes[2] >> 43) & 144115188075855871_u64) | ((bytes[3] & 68719476735_u64) << 21)).to_i64
    values[4] = (((bytes[3] >> 36) & 144115188075855871_u64) | ((bytes[4] & 536870911_u64) << 28)).to_i64
    values[5] = (((bytes[4] >> 29) & 144115188075855871_u64) | ((bytes[5] & 4194303_u64) << 35)).to_i64
    values[6] = (((bytes[5] >> 22) & 144115188075855871_u64) | ((bytes[6] & 32767_u64) << 42)).to_i64
    values[7] = (((bytes[6] >> 15) & 144115188075855871_u64) | ((bytes[7] & 255_u64) << 49)).to_i64
    values[8] = (((bytes[7] >> 8) & 144115188075855871_u64) | ((bytes[8] & 1_u64) << 56)).to_i64
    values[9] = (((bytes[8] >> 1) & 144115188075855871_u64)).to_i64
    values[10] = (((bytes[8] >> 58) & 144115188075855871_u64) | ((bytes[9] & 2251799813685247_u64) << 6)).to_i64
    values[11] = (((bytes[9] >> 51) & 144115188075855871_u64) | ((bytes[10] & 17592186044415_u64) << 13)).to_i64
    values[12] = (((bytes[10] >> 44) & 144115188075855871_u64) | ((bytes[11] & 137438953471_u64) << 20)).to_i64
    values[13] = (((bytes[11] >> 37) & 144115188075855871_u64) | ((bytes[12] & 1073741823_u64) << 27)).to_i64
    values[14] = (((bytes[12] >> 30) & 144115188075855871_u64) | ((bytes[13] & 8388607_u64) << 34)).to_i64
    values[15] = (((bytes[13] >> 23) & 144115188075855871_u64) | ((bytes[14] & 65535_u64) << 41)).to_i64
    values[16] = (((bytes[14] >> 16) & 144115188075855871_u64) | ((bytes[15] & 511_u64) << 48)).to_i64
    values[17] = (((bytes[15] >> 9) & 144115188075855871_u64) | ((bytes[16] & 3_u64) << 55)).to_i64
    values[18] = (((bytes[16] >> 2) & 144115188075855871_u64)).to_i64
    values[19] = (((bytes[16] >> 59) & 144115188075855871_u64) | ((bytes[17] & 4503599627370495_u64) << 5)).to_i64
    values[20] = (((bytes[17] >> 52) & 144115188075855871_u64) | ((bytes[18] & 35184372088831_u64) << 12)).to_i64
    values[21] = (((bytes[18] >> 45) & 144115188075855871_u64) | ((bytes[19] & 274877906943_u64) << 19)).to_i64
    values[22] = (((bytes[19] >> 38) & 144115188075855871_u64) | ((bytes[20] & 2147483647_u64) << 26)).to_i64
    values[23] = (((bytes[20] >> 31) & 144115188075855871_u64) | ((bytes[21] & 16777215_u64) << 33)).to_i64
    values[24] = (((bytes[21] >> 24) & 144115188075855871_u64) | ((bytes[22] & 131071_u64) << 40)).to_i64
    values[25] = (((bytes[22] >> 17) & 144115188075855871_u64) | ((bytes[23] & 1023_u64) << 47)).to_i64
    values[26] = (((bytes[23] >> 10) & 144115188075855871_u64) | ((bytes[24] & 7_u64) << 54)).to_i64
    values[27] = (((bytes[24] >> 3) & 144115188075855871_u64)).to_i64
    values[28] = (((bytes[24] >> 60) & 144115188075855871_u64) | ((bytes[25] & 9007199254740991_u64) << 4)).to_i64
    values[29] = (((bytes[25] >> 53) & 144115188075855871_u64) | ((bytes[26] & 70368744177663_u64) << 11)).to_i64
    values[30] = (((bytes[26] >> 46) & 144115188075855871_u64) | ((bytes[27] & 549755813887_u64) << 18)).to_i64
    values[31] = (((bytes[27] >> 39) & 144115188075855871_u64) | ((bytes[28] & 4294967295_u64) << 25)).to_i64
    values[32] = (((bytes[28] >> 32) & 144115188075855871_u64) | ((bytes[29] & 33554431_u64) << 32)).to_i64
    values[33] = (((bytes[29] >> 25) & 144115188075855871_u64) | ((bytes[30] & 262143_u64) << 39)).to_i64
    values[34] = (((bytes[30] >> 18) & 144115188075855871_u64) | ((bytes[31] & 2047_u64) << 46)).to_i64
    values[35] = (((bytes[31] >> 11) & 144115188075855871_u64) | ((bytes[32] & 15_u64) << 53)).to_i64
    values[36] = (((bytes[32] >> 4) & 144115188075855871_u64)).to_i64
    values[37] = (((bytes[32] >> 61) & 144115188075855871_u64) | ((bytes[33] & 18014398509481983_u64) << 3)).to_i64
    values[38] = (((bytes[33] >> 54) & 144115188075855871_u64) | ((bytes[34] & 140737488355327_u64) << 10)).to_i64
    values[39] = (((bytes[34] >> 47) & 144115188075855871_u64) | ((bytes[35] & 1099511627775_u64) << 17)).to_i64
    values[40] = (((bytes[35] >> 40) & 144115188075855871_u64) | ((bytes[36] & 8589934591_u64) << 24)).to_i64
    values[41] = (((bytes[36] >> 33) & 144115188075855871_u64) | ((bytes[37] & 67108863_u64) << 31)).to_i64
    values[42] = (((bytes[37] >> 26) & 144115188075855871_u64) | ((bytes[38] & 524287_u64) << 38)).to_i64
    values[43] = (((bytes[38] >> 19) & 144115188075855871_u64) | ((bytes[39] & 4095_u64) << 45)).to_i64
    values[44] = (((bytes[39] >> 12) & 144115188075855871_u64) | ((bytes[40] & 31_u64) << 52)).to_i64
    values[45] = (((bytes[40] >> 5) & 144115188075855871_u64)).to_i64
    values[46] = (((bytes[40] >> 62) & 144115188075855871_u64) | ((bytes[41] & 36028797018963967_u64) << 2)).to_i64
    values[47] = (((bytes[41] >> 55) & 144115188075855871_u64) | ((bytes[42] & 281474976710655_u64) << 9)).to_i64
    values[48] = (((bytes[42] >> 48) & 144115188075855871_u64) | ((bytes[43] & 2199023255551_u64) << 16)).to_i64
    values[49] = (((bytes[43] >> 41) & 144115188075855871_u64) | ((bytes[44] & 17179869183_u64) << 23)).to_i64
    values[50] = (((bytes[44] >> 34) & 144115188075855871_u64) | ((bytes[45] & 134217727_u64) << 30)).to_i64
    values[51] = (((bytes[45] >> 27) & 144115188075855871_u64) | ((bytes[46] & 1048575_u64) << 37)).to_i64
    values[52] = (((bytes[46] >> 20) & 144115188075855871_u64) | ((bytes[47] & 8191_u64) << 44)).to_i64
    values[53] = (((bytes[47] >> 13) & 144115188075855871_u64) | ((bytes[48] & 63_u64) << 51)).to_i64
    values[54] = (((bytes[48] >> 6) & 144115188075855871_u64)).to_i64
    values[55] = (((bytes[48] >> 63) & 144115188075855871_u64) | ((bytes[49] & 72057594037927935_u64) << 1)).to_i64
    values[56] = (((bytes[49] >> 56) & 144115188075855871_u64) | ((bytes[50] & 562949953421311_u64) << 8)).to_i64
    values[57] = (((bytes[50] >> 49) & 144115188075855871_u64) | ((bytes[51] & 4398046511103_u64) << 15)).to_i64
    values[58] = (((bytes[51] >> 42) & 144115188075855871_u64) | ((bytes[52] & 34359738367_u64) << 22)).to_i64
    values[59] = (((bytes[52] >> 35) & 144115188075855871_u64) | ((bytes[53] & 268435455_u64) << 29)).to_i64
    values[60] = (((bytes[53] >> 28) & 144115188075855871_u64) | ((bytes[54] & 2097151_u64) << 36)).to_i64
    values[61] = (((bytes[54] >> 21) & 144115188075855871_u64) | ((bytes[55] & 16383_u64) << 43)).to_i64
    values[62] = (((bytes[55] >> 14) & 144115188075855871_u64) | ((bytes[56] & 127_u64) << 50)).to_i64
    values[63] = (((bytes[56] >> 7) & 144115188075855871_u64)).to_i64
    values
  end

  def self.pack58(values)
    bytes = Slice(UInt64).new(58, 0_u64)
    bytes[0] = (((values[0] & 288230376151711743_u64) << 0) |
                ((values[1] & 288230376151711743_u64) << 58)).to_u64
    bytes[1] = (((values[1] & 288230376151711743_u64) >> 6) |
                ((values[2] & 288230376151711743_u64) << 52)).to_u64
    bytes[2] = (((values[2] & 288230376151711743_u64) >> 12) |
                ((values[3] & 288230376151711743_u64) << 46)).to_u64
    bytes[3] = (((values[3] & 288230376151711743_u64) >> 18) |
                ((values[4] & 288230376151711743_u64) << 40)).to_u64
    bytes[4] = (((values[4] & 288230376151711743_u64) >> 24) |
                ((values[5] & 288230376151711743_u64) << 34)).to_u64
    bytes[5] = (((values[5] & 288230376151711743_u64) >> 30) |
                ((values[6] & 288230376151711743_u64) << 28)).to_u64
    bytes[6] = (((values[6] & 288230376151711743_u64) >> 36) |
                ((values[7] & 288230376151711743_u64) << 22)).to_u64
    bytes[7] = (((values[7] & 288230376151711743_u64) >> 42) |
                ((values[8] & 288230376151711743_u64) << 16)).to_u64
    bytes[8] = (((values[8] & 288230376151711743_u64) >> 48) |
                ((values[9] & 288230376151711743_u64) << 10)).to_u64
    bytes[9] = (((values[9] & 288230376151711743_u64) >> 54) |
                ((values[10] & 288230376151711743_u64) << 4) |
                ((values[11] & 288230376151711743_u64) << 62)).to_u64
    bytes[10] = (((values[11] & 288230376151711743_u64) >> 2) |
                 ((values[12] & 288230376151711743_u64) << 56)).to_u64
    bytes[11] = (((values[12] & 288230376151711743_u64) >> 8) |
                 ((values[13] & 288230376151711743_u64) << 50)).to_u64
    bytes[12] = (((values[13] & 288230376151711743_u64) >> 14) |
                 ((values[14] & 288230376151711743_u64) << 44)).to_u64
    bytes[13] = (((values[14] & 288230376151711743_u64) >> 20) |
                 ((values[15] & 288230376151711743_u64) << 38)).to_u64
    bytes[14] = (((values[15] & 288230376151711743_u64) >> 26) |
                 ((values[16] & 288230376151711743_u64) << 32)).to_u64
    bytes[15] = (((values[16] & 288230376151711743_u64) >> 32) |
                 ((values[17] & 288230376151711743_u64) << 26)).to_u64
    bytes[16] = (((values[17] & 288230376151711743_u64) >> 38) |
                 ((values[18] & 288230376151711743_u64) << 20)).to_u64
    bytes[17] = (((values[18] & 288230376151711743_u64) >> 44) |
                 ((values[19] & 288230376151711743_u64) << 14)).to_u64
    bytes[18] = (((values[19] & 288230376151711743_u64) >> 50) |
                 ((values[20] & 288230376151711743_u64) << 8)).to_u64
    bytes[19] = (((values[20] & 288230376151711743_u64) >> 56) |
                 ((values[21] & 288230376151711743_u64) << 2) |
                 ((values[22] & 288230376151711743_u64) << 60)).to_u64
    bytes[20] = (((values[22] & 288230376151711743_u64) >> 4) |
                 ((values[23] & 288230376151711743_u64) << 54)).to_u64
    bytes[21] = (((values[23] & 288230376151711743_u64) >> 10) |
                 ((values[24] & 288230376151711743_u64) << 48)).to_u64
    bytes[22] = (((values[24] & 288230376151711743_u64) >> 16) |
                 ((values[25] & 288230376151711743_u64) << 42)).to_u64
    bytes[23] = (((values[25] & 288230376151711743_u64) >> 22) |
                 ((values[26] & 288230376151711743_u64) << 36)).to_u64
    bytes[24] = (((values[26] & 288230376151711743_u64) >> 28) |
                 ((values[27] & 288230376151711743_u64) << 30)).to_u64
    bytes[25] = (((values[27] & 288230376151711743_u64) >> 34) |
                 ((values[28] & 288230376151711743_u64) << 24)).to_u64
    bytes[26] = (((values[28] & 288230376151711743_u64) >> 40) |
                 ((values[29] & 288230376151711743_u64) << 18)).to_u64
    bytes[27] = (((values[29] & 288230376151711743_u64) >> 46) |
                 ((values[30] & 288230376151711743_u64) << 12)).to_u64
    bytes[28] = (((values[30] & 288230376151711743_u64) >> 52) |
                 ((values[31] & 288230376151711743_u64) << 6)).to_u64
    bytes[29] = (((values[32] & 288230376151711743_u64) << 0) |
                 ((values[33] & 288230376151711743_u64) << 58)).to_u64
    bytes[30] = (((values[33] & 288230376151711743_u64) >> 6) |
                 ((values[34] & 288230376151711743_u64) << 52)).to_u64
    bytes[31] = (((values[34] & 288230376151711743_u64) >> 12) |
                 ((values[35] & 288230376151711743_u64) << 46)).to_u64
    bytes[32] = (((values[35] & 288230376151711743_u64) >> 18) |
                 ((values[36] & 288230376151711743_u64) << 40)).to_u64
    bytes[33] = (((values[36] & 288230376151711743_u64) >> 24) |
                 ((values[37] & 288230376151711743_u64) << 34)).to_u64
    bytes[34] = (((values[37] & 288230376151711743_u64) >> 30) |
                 ((values[38] & 288230376151711743_u64) << 28)).to_u64
    bytes[35] = (((values[38] & 288230376151711743_u64) >> 36) |
                 ((values[39] & 288230376151711743_u64) << 22)).to_u64
    bytes[36] = (((values[39] & 288230376151711743_u64) >> 42) |
                 ((values[40] & 288230376151711743_u64) << 16)).to_u64
    bytes[37] = (((values[40] & 288230376151711743_u64) >> 48) |
                 ((values[41] & 288230376151711743_u64) << 10)).to_u64
    bytes[38] = (((values[41] & 288230376151711743_u64) >> 54) |
                 ((values[42] & 288230376151711743_u64) << 4) |
                 ((values[43] & 288230376151711743_u64) << 62)).to_u64
    bytes[39] = (((values[43] & 288230376151711743_u64) >> 2) |
                 ((values[44] & 288230376151711743_u64) << 56)).to_u64
    bytes[40] = (((values[44] & 288230376151711743_u64) >> 8) |
                 ((values[45] & 288230376151711743_u64) << 50)).to_u64
    bytes[41] = (((values[45] & 288230376151711743_u64) >> 14) |
                 ((values[46] & 288230376151711743_u64) << 44)).to_u64
    bytes[42] = (((values[46] & 288230376151711743_u64) >> 20) |
                 ((values[47] & 288230376151711743_u64) << 38)).to_u64
    bytes[43] = (((values[47] & 288230376151711743_u64) >> 26) |
                 ((values[48] & 288230376151711743_u64) << 32)).to_u64
    bytes[44] = (((values[48] & 288230376151711743_u64) >> 32) |
                 ((values[49] & 288230376151711743_u64) << 26)).to_u64
    bytes[45] = (((values[49] & 288230376151711743_u64) >> 38) |
                 ((values[50] & 288230376151711743_u64) << 20)).to_u64
    bytes[46] = (((values[50] & 288230376151711743_u64) >> 44) |
                 ((values[51] & 288230376151711743_u64) << 14)).to_u64
    bytes[47] = (((values[51] & 288230376151711743_u64) >> 50) |
                 ((values[52] & 288230376151711743_u64) << 8)).to_u64
    bytes[48] = (((values[52] & 288230376151711743_u64) >> 56) |
                 ((values[53] & 288230376151711743_u64) << 2) |
                 ((values[54] & 288230376151711743_u64) << 60)).to_u64
    bytes[49] = (((values[54] & 288230376151711743_u64) >> 4) |
                 ((values[55] & 288230376151711743_u64) << 54)).to_u64
    bytes[50] = (((values[55] & 288230376151711743_u64) >> 10) |
                 ((values[56] & 288230376151711743_u64) << 48)).to_u64
    bytes[51] = (((values[56] & 288230376151711743_u64) >> 16) |
                 ((values[57] & 288230376151711743_u64) << 42)).to_u64
    bytes[52] = (((values[57] & 288230376151711743_u64) >> 22) |
                 ((values[58] & 288230376151711743_u64) << 36)).to_u64
    bytes[53] = (((values[58] & 288230376151711743_u64) >> 28) |
                 ((values[59] & 288230376151711743_u64) << 30)).to_u64
    bytes[54] = (((values[59] & 288230376151711743_u64) >> 34) |
                 ((values[60] & 288230376151711743_u64) << 24)).to_u64
    bytes[55] = (((values[60] & 288230376151711743_u64) >> 40) |
                 ((values[61] & 288230376151711743_u64) << 18)).to_u64
    bytes[56] = (((values[61] & 288230376151711743_u64) >> 46) |
                 ((values[62] & 288230376151711743_u64) << 12)).to_u64
    bytes[57] = (((values[62] & 288230376151711743_u64) >> 52) |
                 ((values[63] & 288230376151711743_u64) << 6)).to_u64
    bytes
  end

  def self.unpack58(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 288230376151711743_u64)).to_i64
    values[1] = (((bytes[0] >> 58) & 288230376151711743_u64) | ((bytes[1] & 4503599627370495_u64) << 6)).to_i64
    values[2] = (((bytes[1] >> 52) & 288230376151711743_u64) | ((bytes[2] & 70368744177663_u64) << 12)).to_i64
    values[3] = (((bytes[2] >> 46) & 288230376151711743_u64) | ((bytes[3] & 1099511627775_u64) << 18)).to_i64
    values[4] = (((bytes[3] >> 40) & 288230376151711743_u64) | ((bytes[4] & 17179869183_u64) << 24)).to_i64
    values[5] = (((bytes[4] >> 34) & 288230376151711743_u64) | ((bytes[5] & 268435455_u64) << 30)).to_i64
    values[6] = (((bytes[5] >> 28) & 288230376151711743_u64) | ((bytes[6] & 4194303_u64) << 36)).to_i64
    values[7] = (((bytes[6] >> 22) & 288230376151711743_u64) | ((bytes[7] & 65535_u64) << 42)).to_i64
    values[8] = (((bytes[7] >> 16) & 288230376151711743_u64) | ((bytes[8] & 1023_u64) << 48)).to_i64
    values[9] = (((bytes[8] >> 10) & 288230376151711743_u64) | ((bytes[9] & 15_u64) << 54)).to_i64
    values[10] = (((bytes[9] >> 4) & 288230376151711743_u64)).to_i64
    values[11] = (((bytes[9] >> 62) & 288230376151711743_u64) | ((bytes[10] & 72057594037927935_u64) << 2)).to_i64
    values[12] = (((bytes[10] >> 56) & 288230376151711743_u64) | ((bytes[11] & 1125899906842623_u64) << 8)).to_i64
    values[13] = (((bytes[11] >> 50) & 288230376151711743_u64) | ((bytes[12] & 17592186044415_u64) << 14)).to_i64
    values[14] = (((bytes[12] >> 44) & 288230376151711743_u64) | ((bytes[13] & 274877906943_u64) << 20)).to_i64
    values[15] = (((bytes[13] >> 38) & 288230376151711743_u64) | ((bytes[14] & 4294967295_u64) << 26)).to_i64
    values[16] = (((bytes[14] >> 32) & 288230376151711743_u64) | ((bytes[15] & 67108863_u64) << 32)).to_i64
    values[17] = (((bytes[15] >> 26) & 288230376151711743_u64) | ((bytes[16] & 1048575_u64) << 38)).to_i64
    values[18] = (((bytes[16] >> 20) & 288230376151711743_u64) | ((bytes[17] & 16383_u64) << 44)).to_i64
    values[19] = (((bytes[17] >> 14) & 288230376151711743_u64) | ((bytes[18] & 255_u64) << 50)).to_i64
    values[20] = (((bytes[18] >> 8) & 288230376151711743_u64) | ((bytes[19] & 3_u64) << 56)).to_i64
    values[21] = (((bytes[19] >> 2) & 288230376151711743_u64)).to_i64
    values[22] = (((bytes[19] >> 60) & 288230376151711743_u64) | ((bytes[20] & 18014398509481983_u64) << 4)).to_i64
    values[23] = (((bytes[20] >> 54) & 288230376151711743_u64) | ((bytes[21] & 281474976710655_u64) << 10)).to_i64
    values[24] = (((bytes[21] >> 48) & 288230376151711743_u64) | ((bytes[22] & 4398046511103_u64) << 16)).to_i64
    values[25] = (((bytes[22] >> 42) & 288230376151711743_u64) | ((bytes[23] & 68719476735_u64) << 22)).to_i64
    values[26] = (((bytes[23] >> 36) & 288230376151711743_u64) | ((bytes[24] & 1073741823_u64) << 28)).to_i64
    values[27] = (((bytes[24] >> 30) & 288230376151711743_u64) | ((bytes[25] & 16777215_u64) << 34)).to_i64
    values[28] = (((bytes[25] >> 24) & 288230376151711743_u64) | ((bytes[26] & 262143_u64) << 40)).to_i64
    values[29] = (((bytes[26] >> 18) & 288230376151711743_u64) | ((bytes[27] & 4095_u64) << 46)).to_i64
    values[30] = (((bytes[27] >> 12) & 288230376151711743_u64) | ((bytes[28] & 63_u64) << 52)).to_i64
    values[31] = (((bytes[28] >> 6) & 288230376151711743_u64)).to_i64
    values[32] = (((bytes[29] >> 0) & 288230376151711743_u64)).to_i64
    values[33] = (((bytes[29] >> 58) & 288230376151711743_u64) | ((bytes[30] & 4503599627370495_u64) << 6)).to_i64
    values[34] = (((bytes[30] >> 52) & 288230376151711743_u64) | ((bytes[31] & 70368744177663_u64) << 12)).to_i64
    values[35] = (((bytes[31] >> 46) & 288230376151711743_u64) | ((bytes[32] & 1099511627775_u64) << 18)).to_i64
    values[36] = (((bytes[32] >> 40) & 288230376151711743_u64) | ((bytes[33] & 17179869183_u64) << 24)).to_i64
    values[37] = (((bytes[33] >> 34) & 288230376151711743_u64) | ((bytes[34] & 268435455_u64) << 30)).to_i64
    values[38] = (((bytes[34] >> 28) & 288230376151711743_u64) | ((bytes[35] & 4194303_u64) << 36)).to_i64
    values[39] = (((bytes[35] >> 22) & 288230376151711743_u64) | ((bytes[36] & 65535_u64) << 42)).to_i64
    values[40] = (((bytes[36] >> 16) & 288230376151711743_u64) | ((bytes[37] & 1023_u64) << 48)).to_i64
    values[41] = (((bytes[37] >> 10) & 288230376151711743_u64) | ((bytes[38] & 15_u64) << 54)).to_i64
    values[42] = (((bytes[38] >> 4) & 288230376151711743_u64)).to_i64
    values[43] = (((bytes[38] >> 62) & 288230376151711743_u64) | ((bytes[39] & 72057594037927935_u64) << 2)).to_i64
    values[44] = (((bytes[39] >> 56) & 288230376151711743_u64) | ((bytes[40] & 1125899906842623_u64) << 8)).to_i64
    values[45] = (((bytes[40] >> 50) & 288230376151711743_u64) | ((bytes[41] & 17592186044415_u64) << 14)).to_i64
    values[46] = (((bytes[41] >> 44) & 288230376151711743_u64) | ((bytes[42] & 274877906943_u64) << 20)).to_i64
    values[47] = (((bytes[42] >> 38) & 288230376151711743_u64) | ((bytes[43] & 4294967295_u64) << 26)).to_i64
    values[48] = (((bytes[43] >> 32) & 288230376151711743_u64) | ((bytes[44] & 67108863_u64) << 32)).to_i64
    values[49] = (((bytes[44] >> 26) & 288230376151711743_u64) | ((bytes[45] & 1048575_u64) << 38)).to_i64
    values[50] = (((bytes[45] >> 20) & 288230376151711743_u64) | ((bytes[46] & 16383_u64) << 44)).to_i64
    values[51] = (((bytes[46] >> 14) & 288230376151711743_u64) | ((bytes[47] & 255_u64) << 50)).to_i64
    values[52] = (((bytes[47] >> 8) & 288230376151711743_u64) | ((bytes[48] & 3_u64) << 56)).to_i64
    values[53] = (((bytes[48] >> 2) & 288230376151711743_u64)).to_i64
    values[54] = (((bytes[48] >> 60) & 288230376151711743_u64) | ((bytes[49] & 18014398509481983_u64) << 4)).to_i64
    values[55] = (((bytes[49] >> 54) & 288230376151711743_u64) | ((bytes[50] & 281474976710655_u64) << 10)).to_i64
    values[56] = (((bytes[50] >> 48) & 288230376151711743_u64) | ((bytes[51] & 4398046511103_u64) << 16)).to_i64
    values[57] = (((bytes[51] >> 42) & 288230376151711743_u64) | ((bytes[52] & 68719476735_u64) << 22)).to_i64
    values[58] = (((bytes[52] >> 36) & 288230376151711743_u64) | ((bytes[53] & 1073741823_u64) << 28)).to_i64
    values[59] = (((bytes[53] >> 30) & 288230376151711743_u64) | ((bytes[54] & 16777215_u64) << 34)).to_i64
    values[60] = (((bytes[54] >> 24) & 288230376151711743_u64) | ((bytes[55] & 262143_u64) << 40)).to_i64
    values[61] = (((bytes[55] >> 18) & 288230376151711743_u64) | ((bytes[56] & 4095_u64) << 46)).to_i64
    values[62] = (((bytes[56] >> 12) & 288230376151711743_u64) | ((bytes[57] & 63_u64) << 52)).to_i64
    values[63] = (((bytes[57] >> 6) & 288230376151711743_u64)).to_i64
    values
  end

  def self.pack59(values)
    bytes = Slice(UInt64).new(59, 0_u64)
    bytes[0] = (((values[0] & 576460752303423487_u64) << 0) |
                ((values[1] & 576460752303423487_u64) << 59)).to_u64
    bytes[1] = (((values[1] & 576460752303423487_u64) >> 5) |
                ((values[2] & 576460752303423487_u64) << 54)).to_u64
    bytes[2] = (((values[2] & 576460752303423487_u64) >> 10) |
                ((values[3] & 576460752303423487_u64) << 49)).to_u64
    bytes[3] = (((values[3] & 576460752303423487_u64) >> 15) |
                ((values[4] & 576460752303423487_u64) << 44)).to_u64
    bytes[4] = (((values[4] & 576460752303423487_u64) >> 20) |
                ((values[5] & 576460752303423487_u64) << 39)).to_u64
    bytes[5] = (((values[5] & 576460752303423487_u64) >> 25) |
                ((values[6] & 576460752303423487_u64) << 34)).to_u64
    bytes[6] = (((values[6] & 576460752303423487_u64) >> 30) |
                ((values[7] & 576460752303423487_u64) << 29)).to_u64
    bytes[7] = (((values[7] & 576460752303423487_u64) >> 35) |
                ((values[8] & 576460752303423487_u64) << 24)).to_u64
    bytes[8] = (((values[8] & 576460752303423487_u64) >> 40) |
                ((values[9] & 576460752303423487_u64) << 19)).to_u64
    bytes[9] = (((values[9] & 576460752303423487_u64) >> 45) |
                ((values[10] & 576460752303423487_u64) << 14)).to_u64
    bytes[10] = (((values[10] & 576460752303423487_u64) >> 50) |
                 ((values[11] & 576460752303423487_u64) << 9)).to_u64
    bytes[11] = (((values[11] & 576460752303423487_u64) >> 55) |
                 ((values[12] & 576460752303423487_u64) << 4) |
                 ((values[13] & 576460752303423487_u64) << 63)).to_u64
    bytes[12] = (((values[13] & 576460752303423487_u64) >> 1) |
                 ((values[14] & 576460752303423487_u64) << 58)).to_u64
    bytes[13] = (((values[14] & 576460752303423487_u64) >> 6) |
                 ((values[15] & 576460752303423487_u64) << 53)).to_u64
    bytes[14] = (((values[15] & 576460752303423487_u64) >> 11) |
                 ((values[16] & 576460752303423487_u64) << 48)).to_u64
    bytes[15] = (((values[16] & 576460752303423487_u64) >> 16) |
                 ((values[17] & 576460752303423487_u64) << 43)).to_u64
    bytes[16] = (((values[17] & 576460752303423487_u64) >> 21) |
                 ((values[18] & 576460752303423487_u64) << 38)).to_u64
    bytes[17] = (((values[18] & 576460752303423487_u64) >> 26) |
                 ((values[19] & 576460752303423487_u64) << 33)).to_u64
    bytes[18] = (((values[19] & 576460752303423487_u64) >> 31) |
                 ((values[20] & 576460752303423487_u64) << 28)).to_u64
    bytes[19] = (((values[20] & 576460752303423487_u64) >> 36) |
                 ((values[21] & 576460752303423487_u64) << 23)).to_u64
    bytes[20] = (((values[21] & 576460752303423487_u64) >> 41) |
                 ((values[22] & 576460752303423487_u64) << 18)).to_u64
    bytes[21] = (((values[22] & 576460752303423487_u64) >> 46) |
                 ((values[23] & 576460752303423487_u64) << 13)).to_u64
    bytes[22] = (((values[23] & 576460752303423487_u64) >> 51) |
                 ((values[24] & 576460752303423487_u64) << 8)).to_u64
    bytes[23] = (((values[24] & 576460752303423487_u64) >> 56) |
                 ((values[25] & 576460752303423487_u64) << 3) |
                 ((values[26] & 576460752303423487_u64) << 62)).to_u64
    bytes[24] = (((values[26] & 576460752303423487_u64) >> 2) |
                 ((values[27] & 576460752303423487_u64) << 57)).to_u64
    bytes[25] = (((values[27] & 576460752303423487_u64) >> 7) |
                 ((values[28] & 576460752303423487_u64) << 52)).to_u64
    bytes[26] = (((values[28] & 576460752303423487_u64) >> 12) |
                 ((values[29] & 576460752303423487_u64) << 47)).to_u64
    bytes[27] = (((values[29] & 576460752303423487_u64) >> 17) |
                 ((values[30] & 576460752303423487_u64) << 42)).to_u64
    bytes[28] = (((values[30] & 576460752303423487_u64) >> 22) |
                 ((values[31] & 576460752303423487_u64) << 37)).to_u64
    bytes[29] = (((values[31] & 576460752303423487_u64) >> 27) |
                 ((values[32] & 576460752303423487_u64) << 32)).to_u64
    bytes[30] = (((values[32] & 576460752303423487_u64) >> 32) |
                 ((values[33] & 576460752303423487_u64) << 27)).to_u64
    bytes[31] = (((values[33] & 576460752303423487_u64) >> 37) |
                 ((values[34] & 576460752303423487_u64) << 22)).to_u64
    bytes[32] = (((values[34] & 576460752303423487_u64) >> 42) |
                 ((values[35] & 576460752303423487_u64) << 17)).to_u64
    bytes[33] = (((values[35] & 576460752303423487_u64) >> 47) |
                 ((values[36] & 576460752303423487_u64) << 12)).to_u64
    bytes[34] = (((values[36] & 576460752303423487_u64) >> 52) |
                 ((values[37] & 576460752303423487_u64) << 7)).to_u64
    bytes[35] = (((values[37] & 576460752303423487_u64) >> 57) |
                 ((values[38] & 576460752303423487_u64) << 2) |
                 ((values[39] & 576460752303423487_u64) << 61)).to_u64
    bytes[36] = (((values[39] & 576460752303423487_u64) >> 3) |
                 ((values[40] & 576460752303423487_u64) << 56)).to_u64
    bytes[37] = (((values[40] & 576460752303423487_u64) >> 8) |
                 ((values[41] & 576460752303423487_u64) << 51)).to_u64
    bytes[38] = (((values[41] & 576460752303423487_u64) >> 13) |
                 ((values[42] & 576460752303423487_u64) << 46)).to_u64
    bytes[39] = (((values[42] & 576460752303423487_u64) >> 18) |
                 ((values[43] & 576460752303423487_u64) << 41)).to_u64
    bytes[40] = (((values[43] & 576460752303423487_u64) >> 23) |
                 ((values[44] & 576460752303423487_u64) << 36)).to_u64
    bytes[41] = (((values[44] & 576460752303423487_u64) >> 28) |
                 ((values[45] & 576460752303423487_u64) << 31)).to_u64
    bytes[42] = (((values[45] & 576460752303423487_u64) >> 33) |
                 ((values[46] & 576460752303423487_u64) << 26)).to_u64
    bytes[43] = (((values[46] & 576460752303423487_u64) >> 38) |
                 ((values[47] & 576460752303423487_u64) << 21)).to_u64
    bytes[44] = (((values[47] & 576460752303423487_u64) >> 43) |
                 ((values[48] & 576460752303423487_u64) << 16)).to_u64
    bytes[45] = (((values[48] & 576460752303423487_u64) >> 48) |
                 ((values[49] & 576460752303423487_u64) << 11)).to_u64
    bytes[46] = (((values[49] & 576460752303423487_u64) >> 53) |
                 ((values[50] & 576460752303423487_u64) << 6)).to_u64
    bytes[47] = (((values[50] & 576460752303423487_u64) >> 58) |
                 ((values[51] & 576460752303423487_u64) << 1) |
                 ((values[52] & 576460752303423487_u64) << 60)).to_u64
    bytes[48] = (((values[52] & 576460752303423487_u64) >> 4) |
                 ((values[53] & 576460752303423487_u64) << 55)).to_u64
    bytes[49] = (((values[53] & 576460752303423487_u64) >> 9) |
                 ((values[54] & 576460752303423487_u64) << 50)).to_u64
    bytes[50] = (((values[54] & 576460752303423487_u64) >> 14) |
                 ((values[55] & 576460752303423487_u64) << 45)).to_u64
    bytes[51] = (((values[55] & 576460752303423487_u64) >> 19) |
                 ((values[56] & 576460752303423487_u64) << 40)).to_u64
    bytes[52] = (((values[56] & 576460752303423487_u64) >> 24) |
                 ((values[57] & 576460752303423487_u64) << 35)).to_u64
    bytes[53] = (((values[57] & 576460752303423487_u64) >> 29) |
                 ((values[58] & 576460752303423487_u64) << 30)).to_u64
    bytes[54] = (((values[58] & 576460752303423487_u64) >> 34) |
                 ((values[59] & 576460752303423487_u64) << 25)).to_u64
    bytes[55] = (((values[59] & 576460752303423487_u64) >> 39) |
                 ((values[60] & 576460752303423487_u64) << 20)).to_u64
    bytes[56] = (((values[60] & 576460752303423487_u64) >> 44) |
                 ((values[61] & 576460752303423487_u64) << 15)).to_u64
    bytes[57] = (((values[61] & 576460752303423487_u64) >> 49) |
                 ((values[62] & 576460752303423487_u64) << 10)).to_u64
    bytes[58] = (((values[62] & 576460752303423487_u64) >> 54) |
                 ((values[63] & 576460752303423487_u64) << 5)).to_u64
    bytes
  end

  def self.unpack59(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 576460752303423487_u64)).to_i64
    values[1] = (((bytes[0] >> 59) & 576460752303423487_u64) | ((bytes[1] & 18014398509481983_u64) << 5)).to_i64
    values[2] = (((bytes[1] >> 54) & 576460752303423487_u64) | ((bytes[2] & 562949953421311_u64) << 10)).to_i64
    values[3] = (((bytes[2] >> 49) & 576460752303423487_u64) | ((bytes[3] & 17592186044415_u64) << 15)).to_i64
    values[4] = (((bytes[3] >> 44) & 576460752303423487_u64) | ((bytes[4] & 549755813887_u64) << 20)).to_i64
    values[5] = (((bytes[4] >> 39) & 576460752303423487_u64) | ((bytes[5] & 17179869183_u64) << 25)).to_i64
    values[6] = (((bytes[5] >> 34) & 576460752303423487_u64) | ((bytes[6] & 536870911_u64) << 30)).to_i64
    values[7] = (((bytes[6] >> 29) & 576460752303423487_u64) | ((bytes[7] & 16777215_u64) << 35)).to_i64
    values[8] = (((bytes[7] >> 24) & 576460752303423487_u64) | ((bytes[8] & 524287_u64) << 40)).to_i64
    values[9] = (((bytes[8] >> 19) & 576460752303423487_u64) | ((bytes[9] & 16383_u64) << 45)).to_i64
    values[10] = (((bytes[9] >> 14) & 576460752303423487_u64) | ((bytes[10] & 511_u64) << 50)).to_i64
    values[11] = (((bytes[10] >> 9) & 576460752303423487_u64) | ((bytes[11] & 15_u64) << 55)).to_i64
    values[12] = (((bytes[11] >> 4) & 576460752303423487_u64)).to_i64
    values[13] = (((bytes[11] >> 63) & 576460752303423487_u64) | ((bytes[12] & 288230376151711743_u64) << 1)).to_i64
    values[14] = (((bytes[12] >> 58) & 576460752303423487_u64) | ((bytes[13] & 9007199254740991_u64) << 6)).to_i64
    values[15] = (((bytes[13] >> 53) & 576460752303423487_u64) | ((bytes[14] & 281474976710655_u64) << 11)).to_i64
    values[16] = (((bytes[14] >> 48) & 576460752303423487_u64) | ((bytes[15] & 8796093022207_u64) << 16)).to_i64
    values[17] = (((bytes[15] >> 43) & 576460752303423487_u64) | ((bytes[16] & 274877906943_u64) << 21)).to_i64
    values[18] = (((bytes[16] >> 38) & 576460752303423487_u64) | ((bytes[17] & 8589934591_u64) << 26)).to_i64
    values[19] = (((bytes[17] >> 33) & 576460752303423487_u64) | ((bytes[18] & 268435455_u64) << 31)).to_i64
    values[20] = (((bytes[18] >> 28) & 576460752303423487_u64) | ((bytes[19] & 8388607_u64) << 36)).to_i64
    values[21] = (((bytes[19] >> 23) & 576460752303423487_u64) | ((bytes[20] & 262143_u64) << 41)).to_i64
    values[22] = (((bytes[20] >> 18) & 576460752303423487_u64) | ((bytes[21] & 8191_u64) << 46)).to_i64
    values[23] = (((bytes[21] >> 13) & 576460752303423487_u64) | ((bytes[22] & 255_u64) << 51)).to_i64
    values[24] = (((bytes[22] >> 8) & 576460752303423487_u64) | ((bytes[23] & 7_u64) << 56)).to_i64
    values[25] = (((bytes[23] >> 3) & 576460752303423487_u64)).to_i64
    values[26] = (((bytes[23] >> 62) & 576460752303423487_u64) | ((bytes[24] & 144115188075855871_u64) << 2)).to_i64
    values[27] = (((bytes[24] >> 57) & 576460752303423487_u64) | ((bytes[25] & 4503599627370495_u64) << 7)).to_i64
    values[28] = (((bytes[25] >> 52) & 576460752303423487_u64) | ((bytes[26] & 140737488355327_u64) << 12)).to_i64
    values[29] = (((bytes[26] >> 47) & 576460752303423487_u64) | ((bytes[27] & 4398046511103_u64) << 17)).to_i64
    values[30] = (((bytes[27] >> 42) & 576460752303423487_u64) | ((bytes[28] & 137438953471_u64) << 22)).to_i64
    values[31] = (((bytes[28] >> 37) & 576460752303423487_u64) | ((bytes[29] & 4294967295_u64) << 27)).to_i64
    values[32] = (((bytes[29] >> 32) & 576460752303423487_u64) | ((bytes[30] & 134217727_u64) << 32)).to_i64
    values[33] = (((bytes[30] >> 27) & 576460752303423487_u64) | ((bytes[31] & 4194303_u64) << 37)).to_i64
    values[34] = (((bytes[31] >> 22) & 576460752303423487_u64) | ((bytes[32] & 131071_u64) << 42)).to_i64
    values[35] = (((bytes[32] >> 17) & 576460752303423487_u64) | ((bytes[33] & 4095_u64) << 47)).to_i64
    values[36] = (((bytes[33] >> 12) & 576460752303423487_u64) | ((bytes[34] & 127_u64) << 52)).to_i64
    values[37] = (((bytes[34] >> 7) & 576460752303423487_u64) | ((bytes[35] & 3_u64) << 57)).to_i64
    values[38] = (((bytes[35] >> 2) & 576460752303423487_u64)).to_i64
    values[39] = (((bytes[35] >> 61) & 576460752303423487_u64) | ((bytes[36] & 72057594037927935_u64) << 3)).to_i64
    values[40] = (((bytes[36] >> 56) & 576460752303423487_u64) | ((bytes[37] & 2251799813685247_u64) << 8)).to_i64
    values[41] = (((bytes[37] >> 51) & 576460752303423487_u64) | ((bytes[38] & 70368744177663_u64) << 13)).to_i64
    values[42] = (((bytes[38] >> 46) & 576460752303423487_u64) | ((bytes[39] & 2199023255551_u64) << 18)).to_i64
    values[43] = (((bytes[39] >> 41) & 576460752303423487_u64) | ((bytes[40] & 68719476735_u64) << 23)).to_i64
    values[44] = (((bytes[40] >> 36) & 576460752303423487_u64) | ((bytes[41] & 2147483647_u64) << 28)).to_i64
    values[45] = (((bytes[41] >> 31) & 576460752303423487_u64) | ((bytes[42] & 67108863_u64) << 33)).to_i64
    values[46] = (((bytes[42] >> 26) & 576460752303423487_u64) | ((bytes[43] & 2097151_u64) << 38)).to_i64
    values[47] = (((bytes[43] >> 21) & 576460752303423487_u64) | ((bytes[44] & 65535_u64) << 43)).to_i64
    values[48] = (((bytes[44] >> 16) & 576460752303423487_u64) | ((bytes[45] & 2047_u64) << 48)).to_i64
    values[49] = (((bytes[45] >> 11) & 576460752303423487_u64) | ((bytes[46] & 63_u64) << 53)).to_i64
    values[50] = (((bytes[46] >> 6) & 576460752303423487_u64) | ((bytes[47] & 1_u64) << 58)).to_i64
    values[51] = (((bytes[47] >> 1) & 576460752303423487_u64)).to_i64
    values[52] = (((bytes[47] >> 60) & 576460752303423487_u64) | ((bytes[48] & 36028797018963967_u64) << 4)).to_i64
    values[53] = (((bytes[48] >> 55) & 576460752303423487_u64) | ((bytes[49] & 1125899906842623_u64) << 9)).to_i64
    values[54] = (((bytes[49] >> 50) & 576460752303423487_u64) | ((bytes[50] & 35184372088831_u64) << 14)).to_i64
    values[55] = (((bytes[50] >> 45) & 576460752303423487_u64) | ((bytes[51] & 1099511627775_u64) << 19)).to_i64
    values[56] = (((bytes[51] >> 40) & 576460752303423487_u64) | ((bytes[52] & 34359738367_u64) << 24)).to_i64
    values[57] = (((bytes[52] >> 35) & 576460752303423487_u64) | ((bytes[53] & 1073741823_u64) << 29)).to_i64
    values[58] = (((bytes[53] >> 30) & 576460752303423487_u64) | ((bytes[54] & 33554431_u64) << 34)).to_i64
    values[59] = (((bytes[54] >> 25) & 576460752303423487_u64) | ((bytes[55] & 1048575_u64) << 39)).to_i64
    values[60] = (((bytes[55] >> 20) & 576460752303423487_u64) | ((bytes[56] & 32767_u64) << 44)).to_i64
    values[61] = (((bytes[56] >> 15) & 576460752303423487_u64) | ((bytes[57] & 1023_u64) << 49)).to_i64
    values[62] = (((bytes[57] >> 10) & 576460752303423487_u64) | ((bytes[58] & 31_u64) << 54)).to_i64
    values[63] = (((bytes[58] >> 5) & 576460752303423487_u64)).to_i64
    values
  end

  def self.pack60(values)
    bytes = Slice(UInt64).new(60, 0_u64)
    bytes[0] = (((values[0] & 1152921504606846975_u64) << 0) |
                ((values[1] & 1152921504606846975_u64) << 60)).to_u64
    bytes[1] = (((values[1] & 1152921504606846975_u64) >> 4) |
                ((values[2] & 1152921504606846975_u64) << 56)).to_u64
    bytes[2] = (((values[2] & 1152921504606846975_u64) >> 8) |
                ((values[3] & 1152921504606846975_u64) << 52)).to_u64
    bytes[3] = (((values[3] & 1152921504606846975_u64) >> 12) |
                ((values[4] & 1152921504606846975_u64) << 48)).to_u64
    bytes[4] = (((values[4] & 1152921504606846975_u64) >> 16) |
                ((values[5] & 1152921504606846975_u64) << 44)).to_u64
    bytes[5] = (((values[5] & 1152921504606846975_u64) >> 20) |
                ((values[6] & 1152921504606846975_u64) << 40)).to_u64
    bytes[6] = (((values[6] & 1152921504606846975_u64) >> 24) |
                ((values[7] & 1152921504606846975_u64) << 36)).to_u64
    bytes[7] = (((values[7] & 1152921504606846975_u64) >> 28) |
                ((values[8] & 1152921504606846975_u64) << 32)).to_u64
    bytes[8] = (((values[8] & 1152921504606846975_u64) >> 32) |
                ((values[9] & 1152921504606846975_u64) << 28)).to_u64
    bytes[9] = (((values[9] & 1152921504606846975_u64) >> 36) |
                ((values[10] & 1152921504606846975_u64) << 24)).to_u64
    bytes[10] = (((values[10] & 1152921504606846975_u64) >> 40) |
                 ((values[11] & 1152921504606846975_u64) << 20)).to_u64
    bytes[11] = (((values[11] & 1152921504606846975_u64) >> 44) |
                 ((values[12] & 1152921504606846975_u64) << 16)).to_u64
    bytes[12] = (((values[12] & 1152921504606846975_u64) >> 48) |
                 ((values[13] & 1152921504606846975_u64) << 12)).to_u64
    bytes[13] = (((values[13] & 1152921504606846975_u64) >> 52) |
                 ((values[14] & 1152921504606846975_u64) << 8)).to_u64
    bytes[14] = (((values[14] & 1152921504606846975_u64) >> 56) |
                 ((values[15] & 1152921504606846975_u64) << 4)).to_u64
    bytes[15] = (((values[16] & 1152921504606846975_u64) << 0) |
                 ((values[17] & 1152921504606846975_u64) << 60)).to_u64
    bytes[16] = (((values[17] & 1152921504606846975_u64) >> 4) |
                 ((values[18] & 1152921504606846975_u64) << 56)).to_u64
    bytes[17] = (((values[18] & 1152921504606846975_u64) >> 8) |
                 ((values[19] & 1152921504606846975_u64) << 52)).to_u64
    bytes[18] = (((values[19] & 1152921504606846975_u64) >> 12) |
                 ((values[20] & 1152921504606846975_u64) << 48)).to_u64
    bytes[19] = (((values[20] & 1152921504606846975_u64) >> 16) |
                 ((values[21] & 1152921504606846975_u64) << 44)).to_u64
    bytes[20] = (((values[21] & 1152921504606846975_u64) >> 20) |
                 ((values[22] & 1152921504606846975_u64) << 40)).to_u64
    bytes[21] = (((values[22] & 1152921504606846975_u64) >> 24) |
                 ((values[23] & 1152921504606846975_u64) << 36)).to_u64
    bytes[22] = (((values[23] & 1152921504606846975_u64) >> 28) |
                 ((values[24] & 1152921504606846975_u64) << 32)).to_u64
    bytes[23] = (((values[24] & 1152921504606846975_u64) >> 32) |
                 ((values[25] & 1152921504606846975_u64) << 28)).to_u64
    bytes[24] = (((values[25] & 1152921504606846975_u64) >> 36) |
                 ((values[26] & 1152921504606846975_u64) << 24)).to_u64
    bytes[25] = (((values[26] & 1152921504606846975_u64) >> 40) |
                 ((values[27] & 1152921504606846975_u64) << 20)).to_u64
    bytes[26] = (((values[27] & 1152921504606846975_u64) >> 44) |
                 ((values[28] & 1152921504606846975_u64) << 16)).to_u64
    bytes[27] = (((values[28] & 1152921504606846975_u64) >> 48) |
                 ((values[29] & 1152921504606846975_u64) << 12)).to_u64
    bytes[28] = (((values[29] & 1152921504606846975_u64) >> 52) |
                 ((values[30] & 1152921504606846975_u64) << 8)).to_u64
    bytes[29] = (((values[30] & 1152921504606846975_u64) >> 56) |
                 ((values[31] & 1152921504606846975_u64) << 4)).to_u64
    bytes[30] = (((values[32] & 1152921504606846975_u64) << 0) |
                 ((values[33] & 1152921504606846975_u64) << 60)).to_u64
    bytes[31] = (((values[33] & 1152921504606846975_u64) >> 4) |
                 ((values[34] & 1152921504606846975_u64) << 56)).to_u64
    bytes[32] = (((values[34] & 1152921504606846975_u64) >> 8) |
                 ((values[35] & 1152921504606846975_u64) << 52)).to_u64
    bytes[33] = (((values[35] & 1152921504606846975_u64) >> 12) |
                 ((values[36] & 1152921504606846975_u64) << 48)).to_u64
    bytes[34] = (((values[36] & 1152921504606846975_u64) >> 16) |
                 ((values[37] & 1152921504606846975_u64) << 44)).to_u64
    bytes[35] = (((values[37] & 1152921504606846975_u64) >> 20) |
                 ((values[38] & 1152921504606846975_u64) << 40)).to_u64
    bytes[36] = (((values[38] & 1152921504606846975_u64) >> 24) |
                 ((values[39] & 1152921504606846975_u64) << 36)).to_u64
    bytes[37] = (((values[39] & 1152921504606846975_u64) >> 28) |
                 ((values[40] & 1152921504606846975_u64) << 32)).to_u64
    bytes[38] = (((values[40] & 1152921504606846975_u64) >> 32) |
                 ((values[41] & 1152921504606846975_u64) << 28)).to_u64
    bytes[39] = (((values[41] & 1152921504606846975_u64) >> 36) |
                 ((values[42] & 1152921504606846975_u64) << 24)).to_u64
    bytes[40] = (((values[42] & 1152921504606846975_u64) >> 40) |
                 ((values[43] & 1152921504606846975_u64) << 20)).to_u64
    bytes[41] = (((values[43] & 1152921504606846975_u64) >> 44) |
                 ((values[44] & 1152921504606846975_u64) << 16)).to_u64
    bytes[42] = (((values[44] & 1152921504606846975_u64) >> 48) |
                 ((values[45] & 1152921504606846975_u64) << 12)).to_u64
    bytes[43] = (((values[45] & 1152921504606846975_u64) >> 52) |
                 ((values[46] & 1152921504606846975_u64) << 8)).to_u64
    bytes[44] = (((values[46] & 1152921504606846975_u64) >> 56) |
                 ((values[47] & 1152921504606846975_u64) << 4)).to_u64
    bytes[45] = (((values[48] & 1152921504606846975_u64) << 0) |
                 ((values[49] & 1152921504606846975_u64) << 60)).to_u64
    bytes[46] = (((values[49] & 1152921504606846975_u64) >> 4) |
                 ((values[50] & 1152921504606846975_u64) << 56)).to_u64
    bytes[47] = (((values[50] & 1152921504606846975_u64) >> 8) |
                 ((values[51] & 1152921504606846975_u64) << 52)).to_u64
    bytes[48] = (((values[51] & 1152921504606846975_u64) >> 12) |
                 ((values[52] & 1152921504606846975_u64) << 48)).to_u64
    bytes[49] = (((values[52] & 1152921504606846975_u64) >> 16) |
                 ((values[53] & 1152921504606846975_u64) << 44)).to_u64
    bytes[50] = (((values[53] & 1152921504606846975_u64) >> 20) |
                 ((values[54] & 1152921504606846975_u64) << 40)).to_u64
    bytes[51] = (((values[54] & 1152921504606846975_u64) >> 24) |
                 ((values[55] & 1152921504606846975_u64) << 36)).to_u64
    bytes[52] = (((values[55] & 1152921504606846975_u64) >> 28) |
                 ((values[56] & 1152921504606846975_u64) << 32)).to_u64
    bytes[53] = (((values[56] & 1152921504606846975_u64) >> 32) |
                 ((values[57] & 1152921504606846975_u64) << 28)).to_u64
    bytes[54] = (((values[57] & 1152921504606846975_u64) >> 36) |
                 ((values[58] & 1152921504606846975_u64) << 24)).to_u64
    bytes[55] = (((values[58] & 1152921504606846975_u64) >> 40) |
                 ((values[59] & 1152921504606846975_u64) << 20)).to_u64
    bytes[56] = (((values[59] & 1152921504606846975_u64) >> 44) |
                 ((values[60] & 1152921504606846975_u64) << 16)).to_u64
    bytes[57] = (((values[60] & 1152921504606846975_u64) >> 48) |
                 ((values[61] & 1152921504606846975_u64) << 12)).to_u64
    bytes[58] = (((values[61] & 1152921504606846975_u64) >> 52) |
                 ((values[62] & 1152921504606846975_u64) << 8)).to_u64
    bytes[59] = (((values[62] & 1152921504606846975_u64) >> 56) |
                 ((values[63] & 1152921504606846975_u64) << 4)).to_u64
    bytes
  end

  def self.unpack60(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 1152921504606846975_u64)).to_i64
    values[1] = (((bytes[0] >> 60) & 1152921504606846975_u64) | ((bytes[1] & 72057594037927935_u64) << 4)).to_i64
    values[2] = (((bytes[1] >> 56) & 1152921504606846975_u64) | ((bytes[2] & 4503599627370495_u64) << 8)).to_i64
    values[3] = (((bytes[2] >> 52) & 1152921504606846975_u64) | ((bytes[3] & 281474976710655_u64) << 12)).to_i64
    values[4] = (((bytes[3] >> 48) & 1152921504606846975_u64) | ((bytes[4] & 17592186044415_u64) << 16)).to_i64
    values[5] = (((bytes[4] >> 44) & 1152921504606846975_u64) | ((bytes[5] & 1099511627775_u64) << 20)).to_i64
    values[6] = (((bytes[5] >> 40) & 1152921504606846975_u64) | ((bytes[6] & 68719476735_u64) << 24)).to_i64
    values[7] = (((bytes[6] >> 36) & 1152921504606846975_u64) | ((bytes[7] & 4294967295_u64) << 28)).to_i64
    values[8] = (((bytes[7] >> 32) & 1152921504606846975_u64) | ((bytes[8] & 268435455_u64) << 32)).to_i64
    values[9] = (((bytes[8] >> 28) & 1152921504606846975_u64) | ((bytes[9] & 16777215_u64) << 36)).to_i64
    values[10] = (((bytes[9] >> 24) & 1152921504606846975_u64) | ((bytes[10] & 1048575_u64) << 40)).to_i64
    values[11] = (((bytes[10] >> 20) & 1152921504606846975_u64) | ((bytes[11] & 65535_u64) << 44)).to_i64
    values[12] = (((bytes[11] >> 16) & 1152921504606846975_u64) | ((bytes[12] & 4095_u64) << 48)).to_i64
    values[13] = (((bytes[12] >> 12) & 1152921504606846975_u64) | ((bytes[13] & 255_u64) << 52)).to_i64
    values[14] = (((bytes[13] >> 8) & 1152921504606846975_u64) | ((bytes[14] & 15_u64) << 56)).to_i64
    values[15] = (((bytes[14] >> 4) & 1152921504606846975_u64)).to_i64
    values[16] = (((bytes[15] >> 0) & 1152921504606846975_u64)).to_i64
    values[17] = (((bytes[15] >> 60) & 1152921504606846975_u64) | ((bytes[16] & 72057594037927935_u64) << 4)).to_i64
    values[18] = (((bytes[16] >> 56) & 1152921504606846975_u64) | ((bytes[17] & 4503599627370495_u64) << 8)).to_i64
    values[19] = (((bytes[17] >> 52) & 1152921504606846975_u64) | ((bytes[18] & 281474976710655_u64) << 12)).to_i64
    values[20] = (((bytes[18] >> 48) & 1152921504606846975_u64) | ((bytes[19] & 17592186044415_u64) << 16)).to_i64
    values[21] = (((bytes[19] >> 44) & 1152921504606846975_u64) | ((bytes[20] & 1099511627775_u64) << 20)).to_i64
    values[22] = (((bytes[20] >> 40) & 1152921504606846975_u64) | ((bytes[21] & 68719476735_u64) << 24)).to_i64
    values[23] = (((bytes[21] >> 36) & 1152921504606846975_u64) | ((bytes[22] & 4294967295_u64) << 28)).to_i64
    values[24] = (((bytes[22] >> 32) & 1152921504606846975_u64) | ((bytes[23] & 268435455_u64) << 32)).to_i64
    values[25] = (((bytes[23] >> 28) & 1152921504606846975_u64) | ((bytes[24] & 16777215_u64) << 36)).to_i64
    values[26] = (((bytes[24] >> 24) & 1152921504606846975_u64) | ((bytes[25] & 1048575_u64) << 40)).to_i64
    values[27] = (((bytes[25] >> 20) & 1152921504606846975_u64) | ((bytes[26] & 65535_u64) << 44)).to_i64
    values[28] = (((bytes[26] >> 16) & 1152921504606846975_u64) | ((bytes[27] & 4095_u64) << 48)).to_i64
    values[29] = (((bytes[27] >> 12) & 1152921504606846975_u64) | ((bytes[28] & 255_u64) << 52)).to_i64
    values[30] = (((bytes[28] >> 8) & 1152921504606846975_u64) | ((bytes[29] & 15_u64) << 56)).to_i64
    values[31] = (((bytes[29] >> 4) & 1152921504606846975_u64)).to_i64
    values[32] = (((bytes[30] >> 0) & 1152921504606846975_u64)).to_i64
    values[33] = (((bytes[30] >> 60) & 1152921504606846975_u64) | ((bytes[31] & 72057594037927935_u64) << 4)).to_i64
    values[34] = (((bytes[31] >> 56) & 1152921504606846975_u64) | ((bytes[32] & 4503599627370495_u64) << 8)).to_i64
    values[35] = (((bytes[32] >> 52) & 1152921504606846975_u64) | ((bytes[33] & 281474976710655_u64) << 12)).to_i64
    values[36] = (((bytes[33] >> 48) & 1152921504606846975_u64) | ((bytes[34] & 17592186044415_u64) << 16)).to_i64
    values[37] = (((bytes[34] >> 44) & 1152921504606846975_u64) | ((bytes[35] & 1099511627775_u64) << 20)).to_i64
    values[38] = (((bytes[35] >> 40) & 1152921504606846975_u64) | ((bytes[36] & 68719476735_u64) << 24)).to_i64
    values[39] = (((bytes[36] >> 36) & 1152921504606846975_u64) | ((bytes[37] & 4294967295_u64) << 28)).to_i64
    values[40] = (((bytes[37] >> 32) & 1152921504606846975_u64) | ((bytes[38] & 268435455_u64) << 32)).to_i64
    values[41] = (((bytes[38] >> 28) & 1152921504606846975_u64) | ((bytes[39] & 16777215_u64) << 36)).to_i64
    values[42] = (((bytes[39] >> 24) & 1152921504606846975_u64) | ((bytes[40] & 1048575_u64) << 40)).to_i64
    values[43] = (((bytes[40] >> 20) & 1152921504606846975_u64) | ((bytes[41] & 65535_u64) << 44)).to_i64
    values[44] = (((bytes[41] >> 16) & 1152921504606846975_u64) | ((bytes[42] & 4095_u64) << 48)).to_i64
    values[45] = (((bytes[42] >> 12) & 1152921504606846975_u64) | ((bytes[43] & 255_u64) << 52)).to_i64
    values[46] = (((bytes[43] >> 8) & 1152921504606846975_u64) | ((bytes[44] & 15_u64) << 56)).to_i64
    values[47] = (((bytes[44] >> 4) & 1152921504606846975_u64)).to_i64
    values[48] = (((bytes[45] >> 0) & 1152921504606846975_u64)).to_i64
    values[49] = (((bytes[45] >> 60) & 1152921504606846975_u64) | ((bytes[46] & 72057594037927935_u64) << 4)).to_i64
    values[50] = (((bytes[46] >> 56) & 1152921504606846975_u64) | ((bytes[47] & 4503599627370495_u64) << 8)).to_i64
    values[51] = (((bytes[47] >> 52) & 1152921504606846975_u64) | ((bytes[48] & 281474976710655_u64) << 12)).to_i64
    values[52] = (((bytes[48] >> 48) & 1152921504606846975_u64) | ((bytes[49] & 17592186044415_u64) << 16)).to_i64
    values[53] = (((bytes[49] >> 44) & 1152921504606846975_u64) | ((bytes[50] & 1099511627775_u64) << 20)).to_i64
    values[54] = (((bytes[50] >> 40) & 1152921504606846975_u64) | ((bytes[51] & 68719476735_u64) << 24)).to_i64
    values[55] = (((bytes[51] >> 36) & 1152921504606846975_u64) | ((bytes[52] & 4294967295_u64) << 28)).to_i64
    values[56] = (((bytes[52] >> 32) & 1152921504606846975_u64) | ((bytes[53] & 268435455_u64) << 32)).to_i64
    values[57] = (((bytes[53] >> 28) & 1152921504606846975_u64) | ((bytes[54] & 16777215_u64) << 36)).to_i64
    values[58] = (((bytes[54] >> 24) & 1152921504606846975_u64) | ((bytes[55] & 1048575_u64) << 40)).to_i64
    values[59] = (((bytes[55] >> 20) & 1152921504606846975_u64) | ((bytes[56] & 65535_u64) << 44)).to_i64
    values[60] = (((bytes[56] >> 16) & 1152921504606846975_u64) | ((bytes[57] & 4095_u64) << 48)).to_i64
    values[61] = (((bytes[57] >> 12) & 1152921504606846975_u64) | ((bytes[58] & 255_u64) << 52)).to_i64
    values[62] = (((bytes[58] >> 8) & 1152921504606846975_u64) | ((bytes[59] & 15_u64) << 56)).to_i64
    values[63] = (((bytes[59] >> 4) & 1152921504606846975_u64)).to_i64
    values
  end

  def self.pack61(values)
    bytes = Slice(UInt64).new(61, 0_u64)
    bytes[0] = (((values[0] & 2305843009213693951_u64) << 0) |
                ((values[1] & 2305843009213693951_u64) << 61)).to_u64
    bytes[1] = (((values[1] & 2305843009213693951_u64) >> 3) |
                ((values[2] & 2305843009213693951_u64) << 58)).to_u64
    bytes[2] = (((values[2] & 2305843009213693951_u64) >> 6) |
                ((values[3] & 2305843009213693951_u64) << 55)).to_u64
    bytes[3] = (((values[3] & 2305843009213693951_u64) >> 9) |
                ((values[4] & 2305843009213693951_u64) << 52)).to_u64
    bytes[4] = (((values[4] & 2305843009213693951_u64) >> 12) |
                ((values[5] & 2305843009213693951_u64) << 49)).to_u64
    bytes[5] = (((values[5] & 2305843009213693951_u64) >> 15) |
                ((values[6] & 2305843009213693951_u64) << 46)).to_u64
    bytes[6] = (((values[6] & 2305843009213693951_u64) >> 18) |
                ((values[7] & 2305843009213693951_u64) << 43)).to_u64
    bytes[7] = (((values[7] & 2305843009213693951_u64) >> 21) |
                ((values[8] & 2305843009213693951_u64) << 40)).to_u64
    bytes[8] = (((values[8] & 2305843009213693951_u64) >> 24) |
                ((values[9] & 2305843009213693951_u64) << 37)).to_u64
    bytes[9] = (((values[9] & 2305843009213693951_u64) >> 27) |
                ((values[10] & 2305843009213693951_u64) << 34)).to_u64
    bytes[10] = (((values[10] & 2305843009213693951_u64) >> 30) |
                 ((values[11] & 2305843009213693951_u64) << 31)).to_u64
    bytes[11] = (((values[11] & 2305843009213693951_u64) >> 33) |
                 ((values[12] & 2305843009213693951_u64) << 28)).to_u64
    bytes[12] = (((values[12] & 2305843009213693951_u64) >> 36) |
                 ((values[13] & 2305843009213693951_u64) << 25)).to_u64
    bytes[13] = (((values[13] & 2305843009213693951_u64) >> 39) |
                 ((values[14] & 2305843009213693951_u64) << 22)).to_u64
    bytes[14] = (((values[14] & 2305843009213693951_u64) >> 42) |
                 ((values[15] & 2305843009213693951_u64) << 19)).to_u64
    bytes[15] = (((values[15] & 2305843009213693951_u64) >> 45) |
                 ((values[16] & 2305843009213693951_u64) << 16)).to_u64
    bytes[16] = (((values[16] & 2305843009213693951_u64) >> 48) |
                 ((values[17] & 2305843009213693951_u64) << 13)).to_u64
    bytes[17] = (((values[17] & 2305843009213693951_u64) >> 51) |
                 ((values[18] & 2305843009213693951_u64) << 10)).to_u64
    bytes[18] = (((values[18] & 2305843009213693951_u64) >> 54) |
                 ((values[19] & 2305843009213693951_u64) << 7)).to_u64
    bytes[19] = (((values[19] & 2305843009213693951_u64) >> 57) |
                 ((values[20] & 2305843009213693951_u64) << 4)).to_u64
    bytes[20] = (((values[20] & 2305843009213693951_u64) >> 60) |
                 ((values[21] & 2305843009213693951_u64) << 1) |
                 ((values[22] & 2305843009213693951_u64) << 62)).to_u64
    bytes[21] = (((values[22] & 2305843009213693951_u64) >> 2) |
                 ((values[23] & 2305843009213693951_u64) << 59)).to_u64
    bytes[22] = (((values[23] & 2305843009213693951_u64) >> 5) |
                 ((values[24] & 2305843009213693951_u64) << 56)).to_u64
    bytes[23] = (((values[24] & 2305843009213693951_u64) >> 8) |
                 ((values[25] & 2305843009213693951_u64) << 53)).to_u64
    bytes[24] = (((values[25] & 2305843009213693951_u64) >> 11) |
                 ((values[26] & 2305843009213693951_u64) << 50)).to_u64
    bytes[25] = (((values[26] & 2305843009213693951_u64) >> 14) |
                 ((values[27] & 2305843009213693951_u64) << 47)).to_u64
    bytes[26] = (((values[27] & 2305843009213693951_u64) >> 17) |
                 ((values[28] & 2305843009213693951_u64) << 44)).to_u64
    bytes[27] = (((values[28] & 2305843009213693951_u64) >> 20) |
                 ((values[29] & 2305843009213693951_u64) << 41)).to_u64
    bytes[28] = (((values[29] & 2305843009213693951_u64) >> 23) |
                 ((values[30] & 2305843009213693951_u64) << 38)).to_u64
    bytes[29] = (((values[30] & 2305843009213693951_u64) >> 26) |
                 ((values[31] & 2305843009213693951_u64) << 35)).to_u64
    bytes[30] = (((values[31] & 2305843009213693951_u64) >> 29) |
                 ((values[32] & 2305843009213693951_u64) << 32)).to_u64
    bytes[31] = (((values[32] & 2305843009213693951_u64) >> 32) |
                 ((values[33] & 2305843009213693951_u64) << 29)).to_u64
    bytes[32] = (((values[33] & 2305843009213693951_u64) >> 35) |
                 ((values[34] & 2305843009213693951_u64) << 26)).to_u64
    bytes[33] = (((values[34] & 2305843009213693951_u64) >> 38) |
                 ((values[35] & 2305843009213693951_u64) << 23)).to_u64
    bytes[34] = (((values[35] & 2305843009213693951_u64) >> 41) |
                 ((values[36] & 2305843009213693951_u64) << 20)).to_u64
    bytes[35] = (((values[36] & 2305843009213693951_u64) >> 44) |
                 ((values[37] & 2305843009213693951_u64) << 17)).to_u64
    bytes[36] = (((values[37] & 2305843009213693951_u64) >> 47) |
                 ((values[38] & 2305843009213693951_u64) << 14)).to_u64
    bytes[37] = (((values[38] & 2305843009213693951_u64) >> 50) |
                 ((values[39] & 2305843009213693951_u64) << 11)).to_u64
    bytes[38] = (((values[39] & 2305843009213693951_u64) >> 53) |
                 ((values[40] & 2305843009213693951_u64) << 8)).to_u64
    bytes[39] = (((values[40] & 2305843009213693951_u64) >> 56) |
                 ((values[41] & 2305843009213693951_u64) << 5)).to_u64
    bytes[40] = (((values[41] & 2305843009213693951_u64) >> 59) |
                 ((values[42] & 2305843009213693951_u64) << 2) |
                 ((values[43] & 2305843009213693951_u64) << 63)).to_u64
    bytes[41] = (((values[43] & 2305843009213693951_u64) >> 1) |
                 ((values[44] & 2305843009213693951_u64) << 60)).to_u64
    bytes[42] = (((values[44] & 2305843009213693951_u64) >> 4) |
                 ((values[45] & 2305843009213693951_u64) << 57)).to_u64
    bytes[43] = (((values[45] & 2305843009213693951_u64) >> 7) |
                 ((values[46] & 2305843009213693951_u64) << 54)).to_u64
    bytes[44] = (((values[46] & 2305843009213693951_u64) >> 10) |
                 ((values[47] & 2305843009213693951_u64) << 51)).to_u64
    bytes[45] = (((values[47] & 2305843009213693951_u64) >> 13) |
                 ((values[48] & 2305843009213693951_u64) << 48)).to_u64
    bytes[46] = (((values[48] & 2305843009213693951_u64) >> 16) |
                 ((values[49] & 2305843009213693951_u64) << 45)).to_u64
    bytes[47] = (((values[49] & 2305843009213693951_u64) >> 19) |
                 ((values[50] & 2305843009213693951_u64) << 42)).to_u64
    bytes[48] = (((values[50] & 2305843009213693951_u64) >> 22) |
                 ((values[51] & 2305843009213693951_u64) << 39)).to_u64
    bytes[49] = (((values[51] & 2305843009213693951_u64) >> 25) |
                 ((values[52] & 2305843009213693951_u64) << 36)).to_u64
    bytes[50] = (((values[52] & 2305843009213693951_u64) >> 28) |
                 ((values[53] & 2305843009213693951_u64) << 33)).to_u64
    bytes[51] = (((values[53] & 2305843009213693951_u64) >> 31) |
                 ((values[54] & 2305843009213693951_u64) << 30)).to_u64
    bytes[52] = (((values[54] & 2305843009213693951_u64) >> 34) |
                 ((values[55] & 2305843009213693951_u64) << 27)).to_u64
    bytes[53] = (((values[55] & 2305843009213693951_u64) >> 37) |
                 ((values[56] & 2305843009213693951_u64) << 24)).to_u64
    bytes[54] = (((values[56] & 2305843009213693951_u64) >> 40) |
                 ((values[57] & 2305843009213693951_u64) << 21)).to_u64
    bytes[55] = (((values[57] & 2305843009213693951_u64) >> 43) |
                 ((values[58] & 2305843009213693951_u64) << 18)).to_u64
    bytes[56] = (((values[58] & 2305843009213693951_u64) >> 46) |
                 ((values[59] & 2305843009213693951_u64) << 15)).to_u64
    bytes[57] = (((values[59] & 2305843009213693951_u64) >> 49) |
                 ((values[60] & 2305843009213693951_u64) << 12)).to_u64
    bytes[58] = (((values[60] & 2305843009213693951_u64) >> 52) |
                 ((values[61] & 2305843009213693951_u64) << 9)).to_u64
    bytes[59] = (((values[61] & 2305843009213693951_u64) >> 55) |
                 ((values[62] & 2305843009213693951_u64) << 6)).to_u64
    bytes[60] = (((values[62] & 2305843009213693951_u64) >> 58) |
                 ((values[63] & 2305843009213693951_u64) << 3)).to_u64
    bytes
  end

  def self.unpack61(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 2305843009213693951_u64)).to_i64
    values[1] = (((bytes[0] >> 61) & 2305843009213693951_u64) | ((bytes[1] & 288230376151711743_u64) << 3)).to_i64
    values[2] = (((bytes[1] >> 58) & 2305843009213693951_u64) | ((bytes[2] & 36028797018963967_u64) << 6)).to_i64
    values[3] = (((bytes[2] >> 55) & 2305843009213693951_u64) | ((bytes[3] & 4503599627370495_u64) << 9)).to_i64
    values[4] = (((bytes[3] >> 52) & 2305843009213693951_u64) | ((bytes[4] & 562949953421311_u64) << 12)).to_i64
    values[5] = (((bytes[4] >> 49) & 2305843009213693951_u64) | ((bytes[5] & 70368744177663_u64) << 15)).to_i64
    values[6] = (((bytes[5] >> 46) & 2305843009213693951_u64) | ((bytes[6] & 8796093022207_u64) << 18)).to_i64
    values[7] = (((bytes[6] >> 43) & 2305843009213693951_u64) | ((bytes[7] & 1099511627775_u64) << 21)).to_i64
    values[8] = (((bytes[7] >> 40) & 2305843009213693951_u64) | ((bytes[8] & 137438953471_u64) << 24)).to_i64
    values[9] = (((bytes[8] >> 37) & 2305843009213693951_u64) | ((bytes[9] & 17179869183_u64) << 27)).to_i64
    values[10] = (((bytes[9] >> 34) & 2305843009213693951_u64) | ((bytes[10] & 2147483647_u64) << 30)).to_i64
    values[11] = (((bytes[10] >> 31) & 2305843009213693951_u64) | ((bytes[11] & 268435455_u64) << 33)).to_i64
    values[12] = (((bytes[11] >> 28) & 2305843009213693951_u64) | ((bytes[12] & 33554431_u64) << 36)).to_i64
    values[13] = (((bytes[12] >> 25) & 2305843009213693951_u64) | ((bytes[13] & 4194303_u64) << 39)).to_i64
    values[14] = (((bytes[13] >> 22) & 2305843009213693951_u64) | ((bytes[14] & 524287_u64) << 42)).to_i64
    values[15] = (((bytes[14] >> 19) & 2305843009213693951_u64) | ((bytes[15] & 65535_u64) << 45)).to_i64
    values[16] = (((bytes[15] >> 16) & 2305843009213693951_u64) | ((bytes[16] & 8191_u64) << 48)).to_i64
    values[17] = (((bytes[16] >> 13) & 2305843009213693951_u64) | ((bytes[17] & 1023_u64) << 51)).to_i64
    values[18] = (((bytes[17] >> 10) & 2305843009213693951_u64) | ((bytes[18] & 127_u64) << 54)).to_i64
    values[19] = (((bytes[18] >> 7) & 2305843009213693951_u64) | ((bytes[19] & 15_u64) << 57)).to_i64
    values[20] = (((bytes[19] >> 4) & 2305843009213693951_u64) | ((bytes[20] & 1_u64) << 60)).to_i64
    values[21] = (((bytes[20] >> 1) & 2305843009213693951_u64)).to_i64
    values[22] = (((bytes[20] >> 62) & 2305843009213693951_u64) | ((bytes[21] & 576460752303423487_u64) << 2)).to_i64
    values[23] = (((bytes[21] >> 59) & 2305843009213693951_u64) | ((bytes[22] & 72057594037927935_u64) << 5)).to_i64
    values[24] = (((bytes[22] >> 56) & 2305843009213693951_u64) | ((bytes[23] & 9007199254740991_u64) << 8)).to_i64
    values[25] = (((bytes[23] >> 53) & 2305843009213693951_u64) | ((bytes[24] & 1125899906842623_u64) << 11)).to_i64
    values[26] = (((bytes[24] >> 50) & 2305843009213693951_u64) | ((bytes[25] & 140737488355327_u64) << 14)).to_i64
    values[27] = (((bytes[25] >> 47) & 2305843009213693951_u64) | ((bytes[26] & 17592186044415_u64) << 17)).to_i64
    values[28] = (((bytes[26] >> 44) & 2305843009213693951_u64) | ((bytes[27] & 2199023255551_u64) << 20)).to_i64
    values[29] = (((bytes[27] >> 41) & 2305843009213693951_u64) | ((bytes[28] & 274877906943_u64) << 23)).to_i64
    values[30] = (((bytes[28] >> 38) & 2305843009213693951_u64) | ((bytes[29] & 34359738367_u64) << 26)).to_i64
    values[31] = (((bytes[29] >> 35) & 2305843009213693951_u64) | ((bytes[30] & 4294967295_u64) << 29)).to_i64
    values[32] = (((bytes[30] >> 32) & 2305843009213693951_u64) | ((bytes[31] & 536870911_u64) << 32)).to_i64
    values[33] = (((bytes[31] >> 29) & 2305843009213693951_u64) | ((bytes[32] & 67108863_u64) << 35)).to_i64
    values[34] = (((bytes[32] >> 26) & 2305843009213693951_u64) | ((bytes[33] & 8388607_u64) << 38)).to_i64
    values[35] = (((bytes[33] >> 23) & 2305843009213693951_u64) | ((bytes[34] & 1048575_u64) << 41)).to_i64
    values[36] = (((bytes[34] >> 20) & 2305843009213693951_u64) | ((bytes[35] & 131071_u64) << 44)).to_i64
    values[37] = (((bytes[35] >> 17) & 2305843009213693951_u64) | ((bytes[36] & 16383_u64) << 47)).to_i64
    values[38] = (((bytes[36] >> 14) & 2305843009213693951_u64) | ((bytes[37] & 2047_u64) << 50)).to_i64
    values[39] = (((bytes[37] >> 11) & 2305843009213693951_u64) | ((bytes[38] & 255_u64) << 53)).to_i64
    values[40] = (((bytes[38] >> 8) & 2305843009213693951_u64) | ((bytes[39] & 31_u64) << 56)).to_i64
    values[41] = (((bytes[39] >> 5) & 2305843009213693951_u64) | ((bytes[40] & 3_u64) << 59)).to_i64
    values[42] = (((bytes[40] >> 2) & 2305843009213693951_u64)).to_i64
    values[43] = (((bytes[40] >> 63) & 2305843009213693951_u64) | ((bytes[41] & 1152921504606846975_u64) << 1)).to_i64
    values[44] = (((bytes[41] >> 60) & 2305843009213693951_u64) | ((bytes[42] & 144115188075855871_u64) << 4)).to_i64
    values[45] = (((bytes[42] >> 57) & 2305843009213693951_u64) | ((bytes[43] & 18014398509481983_u64) << 7)).to_i64
    values[46] = (((bytes[43] >> 54) & 2305843009213693951_u64) | ((bytes[44] & 2251799813685247_u64) << 10)).to_i64
    values[47] = (((bytes[44] >> 51) & 2305843009213693951_u64) | ((bytes[45] & 281474976710655_u64) << 13)).to_i64
    values[48] = (((bytes[45] >> 48) & 2305843009213693951_u64) | ((bytes[46] & 35184372088831_u64) << 16)).to_i64
    values[49] = (((bytes[46] >> 45) & 2305843009213693951_u64) | ((bytes[47] & 4398046511103_u64) << 19)).to_i64
    values[50] = (((bytes[47] >> 42) & 2305843009213693951_u64) | ((bytes[48] & 549755813887_u64) << 22)).to_i64
    values[51] = (((bytes[48] >> 39) & 2305843009213693951_u64) | ((bytes[49] & 68719476735_u64) << 25)).to_i64
    values[52] = (((bytes[49] >> 36) & 2305843009213693951_u64) | ((bytes[50] & 8589934591_u64) << 28)).to_i64
    values[53] = (((bytes[50] >> 33) & 2305843009213693951_u64) | ((bytes[51] & 1073741823_u64) << 31)).to_i64
    values[54] = (((bytes[51] >> 30) & 2305843009213693951_u64) | ((bytes[52] & 134217727_u64) << 34)).to_i64
    values[55] = (((bytes[52] >> 27) & 2305843009213693951_u64) | ((bytes[53] & 16777215_u64) << 37)).to_i64
    values[56] = (((bytes[53] >> 24) & 2305843009213693951_u64) | ((bytes[54] & 2097151_u64) << 40)).to_i64
    values[57] = (((bytes[54] >> 21) & 2305843009213693951_u64) | ((bytes[55] & 262143_u64) << 43)).to_i64
    values[58] = (((bytes[55] >> 18) & 2305843009213693951_u64) | ((bytes[56] & 32767_u64) << 46)).to_i64
    values[59] = (((bytes[56] >> 15) & 2305843009213693951_u64) | ((bytes[57] & 4095_u64) << 49)).to_i64
    values[60] = (((bytes[57] >> 12) & 2305843009213693951_u64) | ((bytes[58] & 511_u64) << 52)).to_i64
    values[61] = (((bytes[58] >> 9) & 2305843009213693951_u64) | ((bytes[59] & 63_u64) << 55)).to_i64
    values[62] = (((bytes[59] >> 6) & 2305843009213693951_u64) | ((bytes[60] & 7_u64) << 58)).to_i64
    values[63] = (((bytes[60] >> 3) & 2305843009213693951_u64)).to_i64
    values
  end

  def self.pack62(values)
    bytes = Slice(UInt64).new(62, 0_u64)
    bytes[0] = (((values[0] & 4611686018427387903_u64) << 0) |
                ((values[1] & 4611686018427387903_u64) << 62)).to_u64
    bytes[1] = (((values[1] & 4611686018427387903_u64) >> 2) |
                ((values[2] & 4611686018427387903_u64) << 60)).to_u64
    bytes[2] = (((values[2] & 4611686018427387903_u64) >> 4) |
                ((values[3] & 4611686018427387903_u64) << 58)).to_u64
    bytes[3] = (((values[3] & 4611686018427387903_u64) >> 6) |
                ((values[4] & 4611686018427387903_u64) << 56)).to_u64
    bytes[4] = (((values[4] & 4611686018427387903_u64) >> 8) |
                ((values[5] & 4611686018427387903_u64) << 54)).to_u64
    bytes[5] = (((values[5] & 4611686018427387903_u64) >> 10) |
                ((values[6] & 4611686018427387903_u64) << 52)).to_u64
    bytes[6] = (((values[6] & 4611686018427387903_u64) >> 12) |
                ((values[7] & 4611686018427387903_u64) << 50)).to_u64
    bytes[7] = (((values[7] & 4611686018427387903_u64) >> 14) |
                ((values[8] & 4611686018427387903_u64) << 48)).to_u64
    bytes[8] = (((values[8] & 4611686018427387903_u64) >> 16) |
                ((values[9] & 4611686018427387903_u64) << 46)).to_u64
    bytes[9] = (((values[9] & 4611686018427387903_u64) >> 18) |
                ((values[10] & 4611686018427387903_u64) << 44)).to_u64
    bytes[10] = (((values[10] & 4611686018427387903_u64) >> 20) |
                 ((values[11] & 4611686018427387903_u64) << 42)).to_u64
    bytes[11] = (((values[11] & 4611686018427387903_u64) >> 22) |
                 ((values[12] & 4611686018427387903_u64) << 40)).to_u64
    bytes[12] = (((values[12] & 4611686018427387903_u64) >> 24) |
                 ((values[13] & 4611686018427387903_u64) << 38)).to_u64
    bytes[13] = (((values[13] & 4611686018427387903_u64) >> 26) |
                 ((values[14] & 4611686018427387903_u64) << 36)).to_u64
    bytes[14] = (((values[14] & 4611686018427387903_u64) >> 28) |
                 ((values[15] & 4611686018427387903_u64) << 34)).to_u64
    bytes[15] = (((values[15] & 4611686018427387903_u64) >> 30) |
                 ((values[16] & 4611686018427387903_u64) << 32)).to_u64
    bytes[16] = (((values[16] & 4611686018427387903_u64) >> 32) |
                 ((values[17] & 4611686018427387903_u64) << 30)).to_u64
    bytes[17] = (((values[17] & 4611686018427387903_u64) >> 34) |
                 ((values[18] & 4611686018427387903_u64) << 28)).to_u64
    bytes[18] = (((values[18] & 4611686018427387903_u64) >> 36) |
                 ((values[19] & 4611686018427387903_u64) << 26)).to_u64
    bytes[19] = (((values[19] & 4611686018427387903_u64) >> 38) |
                 ((values[20] & 4611686018427387903_u64) << 24)).to_u64
    bytes[20] = (((values[20] & 4611686018427387903_u64) >> 40) |
                 ((values[21] & 4611686018427387903_u64) << 22)).to_u64
    bytes[21] = (((values[21] & 4611686018427387903_u64) >> 42) |
                 ((values[22] & 4611686018427387903_u64) << 20)).to_u64
    bytes[22] = (((values[22] & 4611686018427387903_u64) >> 44) |
                 ((values[23] & 4611686018427387903_u64) << 18)).to_u64
    bytes[23] = (((values[23] & 4611686018427387903_u64) >> 46) |
                 ((values[24] & 4611686018427387903_u64) << 16)).to_u64
    bytes[24] = (((values[24] & 4611686018427387903_u64) >> 48) |
                 ((values[25] & 4611686018427387903_u64) << 14)).to_u64
    bytes[25] = (((values[25] & 4611686018427387903_u64) >> 50) |
                 ((values[26] & 4611686018427387903_u64) << 12)).to_u64
    bytes[26] = (((values[26] & 4611686018427387903_u64) >> 52) |
                 ((values[27] & 4611686018427387903_u64) << 10)).to_u64
    bytes[27] = (((values[27] & 4611686018427387903_u64) >> 54) |
                 ((values[28] & 4611686018427387903_u64) << 8)).to_u64
    bytes[28] = (((values[28] & 4611686018427387903_u64) >> 56) |
                 ((values[29] & 4611686018427387903_u64) << 6)).to_u64
    bytes[29] = (((values[29] & 4611686018427387903_u64) >> 58) |
                 ((values[30] & 4611686018427387903_u64) << 4)).to_u64
    bytes[30] = (((values[30] & 4611686018427387903_u64) >> 60) |
                 ((values[31] & 4611686018427387903_u64) << 2)).to_u64
    bytes[31] = (((values[32] & 4611686018427387903_u64) << 0) |
                 ((values[33] & 4611686018427387903_u64) << 62)).to_u64
    bytes[32] = (((values[33] & 4611686018427387903_u64) >> 2) |
                 ((values[34] & 4611686018427387903_u64) << 60)).to_u64
    bytes[33] = (((values[34] & 4611686018427387903_u64) >> 4) |
                 ((values[35] & 4611686018427387903_u64) << 58)).to_u64
    bytes[34] = (((values[35] & 4611686018427387903_u64) >> 6) |
                 ((values[36] & 4611686018427387903_u64) << 56)).to_u64
    bytes[35] = (((values[36] & 4611686018427387903_u64) >> 8) |
                 ((values[37] & 4611686018427387903_u64) << 54)).to_u64
    bytes[36] = (((values[37] & 4611686018427387903_u64) >> 10) |
                 ((values[38] & 4611686018427387903_u64) << 52)).to_u64
    bytes[37] = (((values[38] & 4611686018427387903_u64) >> 12) |
                 ((values[39] & 4611686018427387903_u64) << 50)).to_u64
    bytes[38] = (((values[39] & 4611686018427387903_u64) >> 14) |
                 ((values[40] & 4611686018427387903_u64) << 48)).to_u64
    bytes[39] = (((values[40] & 4611686018427387903_u64) >> 16) |
                 ((values[41] & 4611686018427387903_u64) << 46)).to_u64
    bytes[40] = (((values[41] & 4611686018427387903_u64) >> 18) |
                 ((values[42] & 4611686018427387903_u64) << 44)).to_u64
    bytes[41] = (((values[42] & 4611686018427387903_u64) >> 20) |
                 ((values[43] & 4611686018427387903_u64) << 42)).to_u64
    bytes[42] = (((values[43] & 4611686018427387903_u64) >> 22) |
                 ((values[44] & 4611686018427387903_u64) << 40)).to_u64
    bytes[43] = (((values[44] & 4611686018427387903_u64) >> 24) |
                 ((values[45] & 4611686018427387903_u64) << 38)).to_u64
    bytes[44] = (((values[45] & 4611686018427387903_u64) >> 26) |
                 ((values[46] & 4611686018427387903_u64) << 36)).to_u64
    bytes[45] = (((values[46] & 4611686018427387903_u64) >> 28) |
                 ((values[47] & 4611686018427387903_u64) << 34)).to_u64
    bytes[46] = (((values[47] & 4611686018427387903_u64) >> 30) |
                 ((values[48] & 4611686018427387903_u64) << 32)).to_u64
    bytes[47] = (((values[48] & 4611686018427387903_u64) >> 32) |
                 ((values[49] & 4611686018427387903_u64) << 30)).to_u64
    bytes[48] = (((values[49] & 4611686018427387903_u64) >> 34) |
                 ((values[50] & 4611686018427387903_u64) << 28)).to_u64
    bytes[49] = (((values[50] & 4611686018427387903_u64) >> 36) |
                 ((values[51] & 4611686018427387903_u64) << 26)).to_u64
    bytes[50] = (((values[51] & 4611686018427387903_u64) >> 38) |
                 ((values[52] & 4611686018427387903_u64) << 24)).to_u64
    bytes[51] = (((values[52] & 4611686018427387903_u64) >> 40) |
                 ((values[53] & 4611686018427387903_u64) << 22)).to_u64
    bytes[52] = (((values[53] & 4611686018427387903_u64) >> 42) |
                 ((values[54] & 4611686018427387903_u64) << 20)).to_u64
    bytes[53] = (((values[54] & 4611686018427387903_u64) >> 44) |
                 ((values[55] & 4611686018427387903_u64) << 18)).to_u64
    bytes[54] = (((values[55] & 4611686018427387903_u64) >> 46) |
                 ((values[56] & 4611686018427387903_u64) << 16)).to_u64
    bytes[55] = (((values[56] & 4611686018427387903_u64) >> 48) |
                 ((values[57] & 4611686018427387903_u64) << 14)).to_u64
    bytes[56] = (((values[57] & 4611686018427387903_u64) >> 50) |
                 ((values[58] & 4611686018427387903_u64) << 12)).to_u64
    bytes[57] = (((values[58] & 4611686018427387903_u64) >> 52) |
                 ((values[59] & 4611686018427387903_u64) << 10)).to_u64
    bytes[58] = (((values[59] & 4611686018427387903_u64) >> 54) |
                 ((values[60] & 4611686018427387903_u64) << 8)).to_u64
    bytes[59] = (((values[60] & 4611686018427387903_u64) >> 56) |
                 ((values[61] & 4611686018427387903_u64) << 6)).to_u64
    bytes[60] = (((values[61] & 4611686018427387903_u64) >> 58) |
                 ((values[62] & 4611686018427387903_u64) << 4)).to_u64
    bytes[61] = (((values[62] & 4611686018427387903_u64) >> 60) |
                 ((values[63] & 4611686018427387903_u64) << 2)).to_u64
    bytes
  end

  def self.unpack62(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 4611686018427387903_u64)).to_i64
    values[1] = (((bytes[0] >> 62) & 4611686018427387903_u64) | ((bytes[1] & 1152921504606846975_u64) << 2)).to_i64
    values[2] = (((bytes[1] >> 60) & 4611686018427387903_u64) | ((bytes[2] & 288230376151711743_u64) << 4)).to_i64
    values[3] = (((bytes[2] >> 58) & 4611686018427387903_u64) | ((bytes[3] & 72057594037927935_u64) << 6)).to_i64
    values[4] = (((bytes[3] >> 56) & 4611686018427387903_u64) | ((bytes[4] & 18014398509481983_u64) << 8)).to_i64
    values[5] = (((bytes[4] >> 54) & 4611686018427387903_u64) | ((bytes[5] & 4503599627370495_u64) << 10)).to_i64
    values[6] = (((bytes[5] >> 52) & 4611686018427387903_u64) | ((bytes[6] & 1125899906842623_u64) << 12)).to_i64
    values[7] = (((bytes[6] >> 50) & 4611686018427387903_u64) | ((bytes[7] & 281474976710655_u64) << 14)).to_i64
    values[8] = (((bytes[7] >> 48) & 4611686018427387903_u64) | ((bytes[8] & 70368744177663_u64) << 16)).to_i64
    values[9] = (((bytes[8] >> 46) & 4611686018427387903_u64) | ((bytes[9] & 17592186044415_u64) << 18)).to_i64
    values[10] = (((bytes[9] >> 44) & 4611686018427387903_u64) | ((bytes[10] & 4398046511103_u64) << 20)).to_i64
    values[11] = (((bytes[10] >> 42) & 4611686018427387903_u64) | ((bytes[11] & 1099511627775_u64) << 22)).to_i64
    values[12] = (((bytes[11] >> 40) & 4611686018427387903_u64) | ((bytes[12] & 274877906943_u64) << 24)).to_i64
    values[13] = (((bytes[12] >> 38) & 4611686018427387903_u64) | ((bytes[13] & 68719476735_u64) << 26)).to_i64
    values[14] = (((bytes[13] >> 36) & 4611686018427387903_u64) | ((bytes[14] & 17179869183_u64) << 28)).to_i64
    values[15] = (((bytes[14] >> 34) & 4611686018427387903_u64) | ((bytes[15] & 4294967295_u64) << 30)).to_i64
    values[16] = (((bytes[15] >> 32) & 4611686018427387903_u64) | ((bytes[16] & 1073741823_u64) << 32)).to_i64
    values[17] = (((bytes[16] >> 30) & 4611686018427387903_u64) | ((bytes[17] & 268435455_u64) << 34)).to_i64
    values[18] = (((bytes[17] >> 28) & 4611686018427387903_u64) | ((bytes[18] & 67108863_u64) << 36)).to_i64
    values[19] = (((bytes[18] >> 26) & 4611686018427387903_u64) | ((bytes[19] & 16777215_u64) << 38)).to_i64
    values[20] = (((bytes[19] >> 24) & 4611686018427387903_u64) | ((bytes[20] & 4194303_u64) << 40)).to_i64
    values[21] = (((bytes[20] >> 22) & 4611686018427387903_u64) | ((bytes[21] & 1048575_u64) << 42)).to_i64
    values[22] = (((bytes[21] >> 20) & 4611686018427387903_u64) | ((bytes[22] & 262143_u64) << 44)).to_i64
    values[23] = (((bytes[22] >> 18) & 4611686018427387903_u64) | ((bytes[23] & 65535_u64) << 46)).to_i64
    values[24] = (((bytes[23] >> 16) & 4611686018427387903_u64) | ((bytes[24] & 16383_u64) << 48)).to_i64
    values[25] = (((bytes[24] >> 14) & 4611686018427387903_u64) | ((bytes[25] & 4095_u64) << 50)).to_i64
    values[26] = (((bytes[25] >> 12) & 4611686018427387903_u64) | ((bytes[26] & 1023_u64) << 52)).to_i64
    values[27] = (((bytes[26] >> 10) & 4611686018427387903_u64) | ((bytes[27] & 255_u64) << 54)).to_i64
    values[28] = (((bytes[27] >> 8) & 4611686018427387903_u64) | ((bytes[28] & 63_u64) << 56)).to_i64
    values[29] = (((bytes[28] >> 6) & 4611686018427387903_u64) | ((bytes[29] & 15_u64) << 58)).to_i64
    values[30] = (((bytes[29] >> 4) & 4611686018427387903_u64) | ((bytes[30] & 3_u64) << 60)).to_i64
    values[31] = (((bytes[30] >> 2) & 4611686018427387903_u64)).to_i64
    values[32] = (((bytes[31] >> 0) & 4611686018427387903_u64)).to_i64
    values[33] = (((bytes[31] >> 62) & 4611686018427387903_u64) | ((bytes[32] & 1152921504606846975_u64) << 2)).to_i64
    values[34] = (((bytes[32] >> 60) & 4611686018427387903_u64) | ((bytes[33] & 288230376151711743_u64) << 4)).to_i64
    values[35] = (((bytes[33] >> 58) & 4611686018427387903_u64) | ((bytes[34] & 72057594037927935_u64) << 6)).to_i64
    values[36] = (((bytes[34] >> 56) & 4611686018427387903_u64) | ((bytes[35] & 18014398509481983_u64) << 8)).to_i64
    values[37] = (((bytes[35] >> 54) & 4611686018427387903_u64) | ((bytes[36] & 4503599627370495_u64) << 10)).to_i64
    values[38] = (((bytes[36] >> 52) & 4611686018427387903_u64) | ((bytes[37] & 1125899906842623_u64) << 12)).to_i64
    values[39] = (((bytes[37] >> 50) & 4611686018427387903_u64) | ((bytes[38] & 281474976710655_u64) << 14)).to_i64
    values[40] = (((bytes[38] >> 48) & 4611686018427387903_u64) | ((bytes[39] & 70368744177663_u64) << 16)).to_i64
    values[41] = (((bytes[39] >> 46) & 4611686018427387903_u64) | ((bytes[40] & 17592186044415_u64) << 18)).to_i64
    values[42] = (((bytes[40] >> 44) & 4611686018427387903_u64) | ((bytes[41] & 4398046511103_u64) << 20)).to_i64
    values[43] = (((bytes[41] >> 42) & 4611686018427387903_u64) | ((bytes[42] & 1099511627775_u64) << 22)).to_i64
    values[44] = (((bytes[42] >> 40) & 4611686018427387903_u64) | ((bytes[43] & 274877906943_u64) << 24)).to_i64
    values[45] = (((bytes[43] >> 38) & 4611686018427387903_u64) | ((bytes[44] & 68719476735_u64) << 26)).to_i64
    values[46] = (((bytes[44] >> 36) & 4611686018427387903_u64) | ((bytes[45] & 17179869183_u64) << 28)).to_i64
    values[47] = (((bytes[45] >> 34) & 4611686018427387903_u64) | ((bytes[46] & 4294967295_u64) << 30)).to_i64
    values[48] = (((bytes[46] >> 32) & 4611686018427387903_u64) | ((bytes[47] & 1073741823_u64) << 32)).to_i64
    values[49] = (((bytes[47] >> 30) & 4611686018427387903_u64) | ((bytes[48] & 268435455_u64) << 34)).to_i64
    values[50] = (((bytes[48] >> 28) & 4611686018427387903_u64) | ((bytes[49] & 67108863_u64) << 36)).to_i64
    values[51] = (((bytes[49] >> 26) & 4611686018427387903_u64) | ((bytes[50] & 16777215_u64) << 38)).to_i64
    values[52] = (((bytes[50] >> 24) & 4611686018427387903_u64) | ((bytes[51] & 4194303_u64) << 40)).to_i64
    values[53] = (((bytes[51] >> 22) & 4611686018427387903_u64) | ((bytes[52] & 1048575_u64) << 42)).to_i64
    values[54] = (((bytes[52] >> 20) & 4611686018427387903_u64) | ((bytes[53] & 262143_u64) << 44)).to_i64
    values[55] = (((bytes[53] >> 18) & 4611686018427387903_u64) | ((bytes[54] & 65535_u64) << 46)).to_i64
    values[56] = (((bytes[54] >> 16) & 4611686018427387903_u64) | ((bytes[55] & 16383_u64) << 48)).to_i64
    values[57] = (((bytes[55] >> 14) & 4611686018427387903_u64) | ((bytes[56] & 4095_u64) << 50)).to_i64
    values[58] = (((bytes[56] >> 12) & 4611686018427387903_u64) | ((bytes[57] & 1023_u64) << 52)).to_i64
    values[59] = (((bytes[57] >> 10) & 4611686018427387903_u64) | ((bytes[58] & 255_u64) << 54)).to_i64
    values[60] = (((bytes[58] >> 8) & 4611686018427387903_u64) | ((bytes[59] & 63_u64) << 56)).to_i64
    values[61] = (((bytes[59] >> 6) & 4611686018427387903_u64) | ((bytes[60] & 15_u64) << 58)).to_i64
    values[62] = (((bytes[60] >> 4) & 4611686018427387903_u64) | ((bytes[61] & 3_u64) << 60)).to_i64
    values[63] = (((bytes[61] >> 2) & 4611686018427387903_u64)).to_i64
    values
  end

  def self.pack63(values)
    bytes = Slice(UInt64).new(63, 0_u64)
    bytes[0] = (((values[0] & 9223372036854775807_u64) << 0) |
                ((values[1] & 9223372036854775807_u64) << 63)).to_u64
    bytes[1] = (((values[1] & 9223372036854775807_u64) >> 1) |
                ((values[2] & 9223372036854775807_u64) << 62)).to_u64
    bytes[2] = (((values[2] & 9223372036854775807_u64) >> 2) |
                ((values[3] & 9223372036854775807_u64) << 61)).to_u64
    bytes[3] = (((values[3] & 9223372036854775807_u64) >> 3) |
                ((values[4] & 9223372036854775807_u64) << 60)).to_u64
    bytes[4] = (((values[4] & 9223372036854775807_u64) >> 4) |
                ((values[5] & 9223372036854775807_u64) << 59)).to_u64
    bytes[5] = (((values[5] & 9223372036854775807_u64) >> 5) |
                ((values[6] & 9223372036854775807_u64) << 58)).to_u64
    bytes[6] = (((values[6] & 9223372036854775807_u64) >> 6) |
                ((values[7] & 9223372036854775807_u64) << 57)).to_u64
    bytes[7] = (((values[7] & 9223372036854775807_u64) >> 7) |
                ((values[8] & 9223372036854775807_u64) << 56)).to_u64
    bytes[8] = (((values[8] & 9223372036854775807_u64) >> 8) |
                ((values[9] & 9223372036854775807_u64) << 55)).to_u64
    bytes[9] = (((values[9] & 9223372036854775807_u64) >> 9) |
                ((values[10] & 9223372036854775807_u64) << 54)).to_u64
    bytes[10] = (((values[10] & 9223372036854775807_u64) >> 10) |
                 ((values[11] & 9223372036854775807_u64) << 53)).to_u64
    bytes[11] = (((values[11] & 9223372036854775807_u64) >> 11) |
                 ((values[12] & 9223372036854775807_u64) << 52)).to_u64
    bytes[12] = (((values[12] & 9223372036854775807_u64) >> 12) |
                 ((values[13] & 9223372036854775807_u64) << 51)).to_u64
    bytes[13] = (((values[13] & 9223372036854775807_u64) >> 13) |
                 ((values[14] & 9223372036854775807_u64) << 50)).to_u64
    bytes[14] = (((values[14] & 9223372036854775807_u64) >> 14) |
                 ((values[15] & 9223372036854775807_u64) << 49)).to_u64
    bytes[15] = (((values[15] & 9223372036854775807_u64) >> 15) |
                 ((values[16] & 9223372036854775807_u64) << 48)).to_u64
    bytes[16] = (((values[16] & 9223372036854775807_u64) >> 16) |
                 ((values[17] & 9223372036854775807_u64) << 47)).to_u64
    bytes[17] = (((values[17] & 9223372036854775807_u64) >> 17) |
                 ((values[18] & 9223372036854775807_u64) << 46)).to_u64
    bytes[18] = (((values[18] & 9223372036854775807_u64) >> 18) |
                 ((values[19] & 9223372036854775807_u64) << 45)).to_u64
    bytes[19] = (((values[19] & 9223372036854775807_u64) >> 19) |
                 ((values[20] & 9223372036854775807_u64) << 44)).to_u64
    bytes[20] = (((values[20] & 9223372036854775807_u64) >> 20) |
                 ((values[21] & 9223372036854775807_u64) << 43)).to_u64
    bytes[21] = (((values[21] & 9223372036854775807_u64) >> 21) |
                 ((values[22] & 9223372036854775807_u64) << 42)).to_u64
    bytes[22] = (((values[22] & 9223372036854775807_u64) >> 22) |
                 ((values[23] & 9223372036854775807_u64) << 41)).to_u64
    bytes[23] = (((values[23] & 9223372036854775807_u64) >> 23) |
                 ((values[24] & 9223372036854775807_u64) << 40)).to_u64
    bytes[24] = (((values[24] & 9223372036854775807_u64) >> 24) |
                 ((values[25] & 9223372036854775807_u64) << 39)).to_u64
    bytes[25] = (((values[25] & 9223372036854775807_u64) >> 25) |
                 ((values[26] & 9223372036854775807_u64) << 38)).to_u64
    bytes[26] = (((values[26] & 9223372036854775807_u64) >> 26) |
                 ((values[27] & 9223372036854775807_u64) << 37)).to_u64
    bytes[27] = (((values[27] & 9223372036854775807_u64) >> 27) |
                 ((values[28] & 9223372036854775807_u64) << 36)).to_u64
    bytes[28] = (((values[28] & 9223372036854775807_u64) >> 28) |
                 ((values[29] & 9223372036854775807_u64) << 35)).to_u64
    bytes[29] = (((values[29] & 9223372036854775807_u64) >> 29) |
                 ((values[30] & 9223372036854775807_u64) << 34)).to_u64
    bytes[30] = (((values[30] & 9223372036854775807_u64) >> 30) |
                 ((values[31] & 9223372036854775807_u64) << 33)).to_u64
    bytes[31] = (((values[31] & 9223372036854775807_u64) >> 31) |
                 ((values[32] & 9223372036854775807_u64) << 32)).to_u64
    bytes[32] = (((values[32] & 9223372036854775807_u64) >> 32) |
                 ((values[33] & 9223372036854775807_u64) << 31)).to_u64
    bytes[33] = (((values[33] & 9223372036854775807_u64) >> 33) |
                 ((values[34] & 9223372036854775807_u64) << 30)).to_u64
    bytes[34] = (((values[34] & 9223372036854775807_u64) >> 34) |
                 ((values[35] & 9223372036854775807_u64) << 29)).to_u64
    bytes[35] = (((values[35] & 9223372036854775807_u64) >> 35) |
                 ((values[36] & 9223372036854775807_u64) << 28)).to_u64
    bytes[36] = (((values[36] & 9223372036854775807_u64) >> 36) |
                 ((values[37] & 9223372036854775807_u64) << 27)).to_u64
    bytes[37] = (((values[37] & 9223372036854775807_u64) >> 37) |
                 ((values[38] & 9223372036854775807_u64) << 26)).to_u64
    bytes[38] = (((values[38] & 9223372036854775807_u64) >> 38) |
                 ((values[39] & 9223372036854775807_u64) << 25)).to_u64
    bytes[39] = (((values[39] & 9223372036854775807_u64) >> 39) |
                 ((values[40] & 9223372036854775807_u64) << 24)).to_u64
    bytes[40] = (((values[40] & 9223372036854775807_u64) >> 40) |
                 ((values[41] & 9223372036854775807_u64) << 23)).to_u64
    bytes[41] = (((values[41] & 9223372036854775807_u64) >> 41) |
                 ((values[42] & 9223372036854775807_u64) << 22)).to_u64
    bytes[42] = (((values[42] & 9223372036854775807_u64) >> 42) |
                 ((values[43] & 9223372036854775807_u64) << 21)).to_u64
    bytes[43] = (((values[43] & 9223372036854775807_u64) >> 43) |
                 ((values[44] & 9223372036854775807_u64) << 20)).to_u64
    bytes[44] = (((values[44] & 9223372036854775807_u64) >> 44) |
                 ((values[45] & 9223372036854775807_u64) << 19)).to_u64
    bytes[45] = (((values[45] & 9223372036854775807_u64) >> 45) |
                 ((values[46] & 9223372036854775807_u64) << 18)).to_u64
    bytes[46] = (((values[46] & 9223372036854775807_u64) >> 46) |
                 ((values[47] & 9223372036854775807_u64) << 17)).to_u64
    bytes[47] = (((values[47] & 9223372036854775807_u64) >> 47) |
                 ((values[48] & 9223372036854775807_u64) << 16)).to_u64
    bytes[48] = (((values[48] & 9223372036854775807_u64) >> 48) |
                 ((values[49] & 9223372036854775807_u64) << 15)).to_u64
    bytes[49] = (((values[49] & 9223372036854775807_u64) >> 49) |
                 ((values[50] & 9223372036854775807_u64) << 14)).to_u64
    bytes[50] = (((values[50] & 9223372036854775807_u64) >> 50) |
                 ((values[51] & 9223372036854775807_u64) << 13)).to_u64
    bytes[51] = (((values[51] & 9223372036854775807_u64) >> 51) |
                 ((values[52] & 9223372036854775807_u64) << 12)).to_u64
    bytes[52] = (((values[52] & 9223372036854775807_u64) >> 52) |
                 ((values[53] & 9223372036854775807_u64) << 11)).to_u64
    bytes[53] = (((values[53] & 9223372036854775807_u64) >> 53) |
                 ((values[54] & 9223372036854775807_u64) << 10)).to_u64
    bytes[54] = (((values[54] & 9223372036854775807_u64) >> 54) |
                 ((values[55] & 9223372036854775807_u64) << 9)).to_u64
    bytes[55] = (((values[55] & 9223372036854775807_u64) >> 55) |
                 ((values[56] & 9223372036854775807_u64) << 8)).to_u64
    bytes[56] = (((values[56] & 9223372036854775807_u64) >> 56) |
                 ((values[57] & 9223372036854775807_u64) << 7)).to_u64
    bytes[57] = (((values[57] & 9223372036854775807_u64) >> 57) |
                 ((values[58] & 9223372036854775807_u64) << 6)).to_u64
    bytes[58] = (((values[58] & 9223372036854775807_u64) >> 58) |
                 ((values[59] & 9223372036854775807_u64) << 5)).to_u64
    bytes[59] = (((values[59] & 9223372036854775807_u64) >> 59) |
                 ((values[60] & 9223372036854775807_u64) << 4)).to_u64
    bytes[60] = (((values[60] & 9223372036854775807_u64) >> 60) |
                 ((values[61] & 9223372036854775807_u64) << 3)).to_u64
    bytes[61] = (((values[61] & 9223372036854775807_u64) >> 61) |
                 ((values[62] & 9223372036854775807_u64) << 2)).to_u64
    bytes[62] = (((values[62] & 9223372036854775807_u64) >> 62) |
                 ((values[63] & 9223372036854775807_u64) << 1)).to_u64
    bytes
  end

  def self.unpack63(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 9223372036854775807_u64)).to_i64
    values[1] = (((bytes[0] >> 63) & 9223372036854775807_u64) | ((bytes[1] & 4611686018427387903_u64) << 1)).to_i64
    values[2] = (((bytes[1] >> 62) & 9223372036854775807_u64) | ((bytes[2] & 2305843009213693951_u64) << 2)).to_i64
    values[3] = (((bytes[2] >> 61) & 9223372036854775807_u64) | ((bytes[3] & 1152921504606846975_u64) << 3)).to_i64
    values[4] = (((bytes[3] >> 60) & 9223372036854775807_u64) | ((bytes[4] & 576460752303423487_u64) << 4)).to_i64
    values[5] = (((bytes[4] >> 59) & 9223372036854775807_u64) | ((bytes[5] & 288230376151711743_u64) << 5)).to_i64
    values[6] = (((bytes[5] >> 58) & 9223372036854775807_u64) | ((bytes[6] & 144115188075855871_u64) << 6)).to_i64
    values[7] = (((bytes[6] >> 57) & 9223372036854775807_u64) | ((bytes[7] & 72057594037927935_u64) << 7)).to_i64
    values[8] = (((bytes[7] >> 56) & 9223372036854775807_u64) | ((bytes[8] & 36028797018963967_u64) << 8)).to_i64
    values[9] = (((bytes[8] >> 55) & 9223372036854775807_u64) | ((bytes[9] & 18014398509481983_u64) << 9)).to_i64
    values[10] = (((bytes[9] >> 54) & 9223372036854775807_u64) | ((bytes[10] & 9007199254740991_u64) << 10)).to_i64
    values[11] = (((bytes[10] >> 53) & 9223372036854775807_u64) | ((bytes[11] & 4503599627370495_u64) << 11)).to_i64
    values[12] = (((bytes[11] >> 52) & 9223372036854775807_u64) | ((bytes[12] & 2251799813685247_u64) << 12)).to_i64
    values[13] = (((bytes[12] >> 51) & 9223372036854775807_u64) | ((bytes[13] & 1125899906842623_u64) << 13)).to_i64
    values[14] = (((bytes[13] >> 50) & 9223372036854775807_u64) | ((bytes[14] & 562949953421311_u64) << 14)).to_i64
    values[15] = (((bytes[14] >> 49) & 9223372036854775807_u64) | ((bytes[15] & 281474976710655_u64) << 15)).to_i64
    values[16] = (((bytes[15] >> 48) & 9223372036854775807_u64) | ((bytes[16] & 140737488355327_u64) << 16)).to_i64
    values[17] = (((bytes[16] >> 47) & 9223372036854775807_u64) | ((bytes[17] & 70368744177663_u64) << 17)).to_i64
    values[18] = (((bytes[17] >> 46) & 9223372036854775807_u64) | ((bytes[18] & 35184372088831_u64) << 18)).to_i64
    values[19] = (((bytes[18] >> 45) & 9223372036854775807_u64) | ((bytes[19] & 17592186044415_u64) << 19)).to_i64
    values[20] = (((bytes[19] >> 44) & 9223372036854775807_u64) | ((bytes[20] & 8796093022207_u64) << 20)).to_i64
    values[21] = (((bytes[20] >> 43) & 9223372036854775807_u64) | ((bytes[21] & 4398046511103_u64) << 21)).to_i64
    values[22] = (((bytes[21] >> 42) & 9223372036854775807_u64) | ((bytes[22] & 2199023255551_u64) << 22)).to_i64
    values[23] = (((bytes[22] >> 41) & 9223372036854775807_u64) | ((bytes[23] & 1099511627775_u64) << 23)).to_i64
    values[24] = (((bytes[23] >> 40) & 9223372036854775807_u64) | ((bytes[24] & 549755813887_u64) << 24)).to_i64
    values[25] = (((bytes[24] >> 39) & 9223372036854775807_u64) | ((bytes[25] & 274877906943_u64) << 25)).to_i64
    values[26] = (((bytes[25] >> 38) & 9223372036854775807_u64) | ((bytes[26] & 137438953471_u64) << 26)).to_i64
    values[27] = (((bytes[26] >> 37) & 9223372036854775807_u64) | ((bytes[27] & 68719476735_u64) << 27)).to_i64
    values[28] = (((bytes[27] >> 36) & 9223372036854775807_u64) | ((bytes[28] & 34359738367_u64) << 28)).to_i64
    values[29] = (((bytes[28] >> 35) & 9223372036854775807_u64) | ((bytes[29] & 17179869183_u64) << 29)).to_i64
    values[30] = (((bytes[29] >> 34) & 9223372036854775807_u64) | ((bytes[30] & 8589934591_u64) << 30)).to_i64
    values[31] = (((bytes[30] >> 33) & 9223372036854775807_u64) | ((bytes[31] & 4294967295_u64) << 31)).to_i64
    values[32] = (((bytes[31] >> 32) & 9223372036854775807_u64) | ((bytes[32] & 2147483647_u64) << 32)).to_i64
    values[33] = (((bytes[32] >> 31) & 9223372036854775807_u64) | ((bytes[33] & 1073741823_u64) << 33)).to_i64
    values[34] = (((bytes[33] >> 30) & 9223372036854775807_u64) | ((bytes[34] & 536870911_u64) << 34)).to_i64
    values[35] = (((bytes[34] >> 29) & 9223372036854775807_u64) | ((bytes[35] & 268435455_u64) << 35)).to_i64
    values[36] = (((bytes[35] >> 28) & 9223372036854775807_u64) | ((bytes[36] & 134217727_u64) << 36)).to_i64
    values[37] = (((bytes[36] >> 27) & 9223372036854775807_u64) | ((bytes[37] & 67108863_u64) << 37)).to_i64
    values[38] = (((bytes[37] >> 26) & 9223372036854775807_u64) | ((bytes[38] & 33554431_u64) << 38)).to_i64
    values[39] = (((bytes[38] >> 25) & 9223372036854775807_u64) | ((bytes[39] & 16777215_u64) << 39)).to_i64
    values[40] = (((bytes[39] >> 24) & 9223372036854775807_u64) | ((bytes[40] & 8388607_u64) << 40)).to_i64
    values[41] = (((bytes[40] >> 23) & 9223372036854775807_u64) | ((bytes[41] & 4194303_u64) << 41)).to_i64
    values[42] = (((bytes[41] >> 22) & 9223372036854775807_u64) | ((bytes[42] & 2097151_u64) << 42)).to_i64
    values[43] = (((bytes[42] >> 21) & 9223372036854775807_u64) | ((bytes[43] & 1048575_u64) << 43)).to_i64
    values[44] = (((bytes[43] >> 20) & 9223372036854775807_u64) | ((bytes[44] & 524287_u64) << 44)).to_i64
    values[45] = (((bytes[44] >> 19) & 9223372036854775807_u64) | ((bytes[45] & 262143_u64) << 45)).to_i64
    values[46] = (((bytes[45] >> 18) & 9223372036854775807_u64) | ((bytes[46] & 131071_u64) << 46)).to_i64
    values[47] = (((bytes[46] >> 17) & 9223372036854775807_u64) | ((bytes[47] & 65535_u64) << 47)).to_i64
    values[48] = (((bytes[47] >> 16) & 9223372036854775807_u64) | ((bytes[48] & 32767_u64) << 48)).to_i64
    values[49] = (((bytes[48] >> 15) & 9223372036854775807_u64) | ((bytes[49] & 16383_u64) << 49)).to_i64
    values[50] = (((bytes[49] >> 14) & 9223372036854775807_u64) | ((bytes[50] & 8191_u64) << 50)).to_i64
    values[51] = (((bytes[50] >> 13) & 9223372036854775807_u64) | ((bytes[51] & 4095_u64) << 51)).to_i64
    values[52] = (((bytes[51] >> 12) & 9223372036854775807_u64) | ((bytes[52] & 2047_u64) << 52)).to_i64
    values[53] = (((bytes[52] >> 11) & 9223372036854775807_u64) | ((bytes[53] & 1023_u64) << 53)).to_i64
    values[54] = (((bytes[53] >> 10) & 9223372036854775807_u64) | ((bytes[54] & 511_u64) << 54)).to_i64
    values[55] = (((bytes[54] >> 9) & 9223372036854775807_u64) | ((bytes[55] & 255_u64) << 55)).to_i64
    values[56] = (((bytes[55] >> 8) & 9223372036854775807_u64) | ((bytes[56] & 127_u64) << 56)).to_i64
    values[57] = (((bytes[56] >> 7) & 9223372036854775807_u64) | ((bytes[57] & 63_u64) << 57)).to_i64
    values[58] = (((bytes[57] >> 6) & 9223372036854775807_u64) | ((bytes[58] & 31_u64) << 58)).to_i64
    values[59] = (((bytes[58] >> 5) & 9223372036854775807_u64) | ((bytes[59] & 15_u64) << 59)).to_i64
    values[60] = (((bytes[59] >> 4) & 9223372036854775807_u64) | ((bytes[60] & 7_u64) << 60)).to_i64
    values[61] = (((bytes[60] >> 3) & 9223372036854775807_u64) | ((bytes[61] & 3_u64) << 61)).to_i64
    values[62] = (((bytes[61] >> 2) & 9223372036854775807_u64) | ((bytes[62] & 1_u64) << 62)).to_i64
    values[63] = (((bytes[62] >> 1) & 9223372036854775807_u64)).to_i64
    values
  end

  def self.pack64(values)
    bytes = Slice(UInt64).new(64, 0_u64)
    bytes[0] = (((values[0] & 18446744073709551615_u64) << 0)).to_u64
    bytes[1] = (((values[1] & 18446744073709551615_u64) << 0)).to_u64
    bytes[2] = (((values[2] & 18446744073709551615_u64) << 0)).to_u64
    bytes[3] = (((values[3] & 18446744073709551615_u64) << 0)).to_u64
    bytes[4] = (((values[4] & 18446744073709551615_u64) << 0)).to_u64
    bytes[5] = (((values[5] & 18446744073709551615_u64) << 0)).to_u64
    bytes[6] = (((values[6] & 18446744073709551615_u64) << 0)).to_u64
    bytes[7] = (((values[7] & 18446744073709551615_u64) << 0)).to_u64
    bytes[8] = (((values[8] & 18446744073709551615_u64) << 0)).to_u64
    bytes[9] = (((values[9] & 18446744073709551615_u64) << 0)).to_u64
    bytes[10] = (((values[10] & 18446744073709551615_u64) << 0)).to_u64
    bytes[11] = (((values[11] & 18446744073709551615_u64) << 0)).to_u64
    bytes[12] = (((values[12] & 18446744073709551615_u64) << 0)).to_u64
    bytes[13] = (((values[13] & 18446744073709551615_u64) << 0)).to_u64
    bytes[14] = (((values[14] & 18446744073709551615_u64) << 0)).to_u64
    bytes[15] = (((values[15] & 18446744073709551615_u64) << 0)).to_u64
    bytes[16] = (((values[16] & 18446744073709551615_u64) << 0)).to_u64
    bytes[17] = (((values[17] & 18446744073709551615_u64) << 0)).to_u64
    bytes[18] = (((values[18] & 18446744073709551615_u64) << 0)).to_u64
    bytes[19] = (((values[19] & 18446744073709551615_u64) << 0)).to_u64
    bytes[20] = (((values[20] & 18446744073709551615_u64) << 0)).to_u64
    bytes[21] = (((values[21] & 18446744073709551615_u64) << 0)).to_u64
    bytes[22] = (((values[22] & 18446744073709551615_u64) << 0)).to_u64
    bytes[23] = (((values[23] & 18446744073709551615_u64) << 0)).to_u64
    bytes[24] = (((values[24] & 18446744073709551615_u64) << 0)).to_u64
    bytes[25] = (((values[25] & 18446744073709551615_u64) << 0)).to_u64
    bytes[26] = (((values[26] & 18446744073709551615_u64) << 0)).to_u64
    bytes[27] = (((values[27] & 18446744073709551615_u64) << 0)).to_u64
    bytes[28] = (((values[28] & 18446744073709551615_u64) << 0)).to_u64
    bytes[29] = (((values[29] & 18446744073709551615_u64) << 0)).to_u64
    bytes[30] = (((values[30] & 18446744073709551615_u64) << 0)).to_u64
    bytes[31] = (((values[31] & 18446744073709551615_u64) << 0)).to_u64
    bytes[32] = (((values[32] & 18446744073709551615_u64) << 0)).to_u64
    bytes[33] = (((values[33] & 18446744073709551615_u64) << 0)).to_u64
    bytes[34] = (((values[34] & 18446744073709551615_u64) << 0)).to_u64
    bytes[35] = (((values[35] & 18446744073709551615_u64) << 0)).to_u64
    bytes[36] = (((values[36] & 18446744073709551615_u64) << 0)).to_u64
    bytes[37] = (((values[37] & 18446744073709551615_u64) << 0)).to_u64
    bytes[38] = (((values[38] & 18446744073709551615_u64) << 0)).to_u64
    bytes[39] = (((values[39] & 18446744073709551615_u64) << 0)).to_u64
    bytes[40] = (((values[40] & 18446744073709551615_u64) << 0)).to_u64
    bytes[41] = (((values[41] & 18446744073709551615_u64) << 0)).to_u64
    bytes[42] = (((values[42] & 18446744073709551615_u64) << 0)).to_u64
    bytes[43] = (((values[43] & 18446744073709551615_u64) << 0)).to_u64
    bytes[44] = (((values[44] & 18446744073709551615_u64) << 0)).to_u64
    bytes[45] = (((values[45] & 18446744073709551615_u64) << 0)).to_u64
    bytes[46] = (((values[46] & 18446744073709551615_u64) << 0)).to_u64
    bytes[47] = (((values[47] & 18446744073709551615_u64) << 0)).to_u64
    bytes[48] = (((values[48] & 18446744073709551615_u64) << 0)).to_u64
    bytes[49] = (((values[49] & 18446744073709551615_u64) << 0)).to_u64
    bytes[50] = (((values[50] & 18446744073709551615_u64) << 0)).to_u64
    bytes[51] = (((values[51] & 18446744073709551615_u64) << 0)).to_u64
    bytes[52] = (((values[52] & 18446744073709551615_u64) << 0)).to_u64
    bytes[53] = (((values[53] & 18446744073709551615_u64) << 0)).to_u64
    bytes[54] = (((values[54] & 18446744073709551615_u64) << 0)).to_u64
    bytes[55] = (((values[55] & 18446744073709551615_u64) << 0)).to_u64
    bytes[56] = (((values[56] & 18446744073709551615_u64) << 0)).to_u64
    bytes[57] = (((values[57] & 18446744073709551615_u64) << 0)).to_u64
    bytes[58] = (((values[58] & 18446744073709551615_u64) << 0)).to_u64
    bytes[59] = (((values[59] & 18446744073709551615_u64) << 0)).to_u64
    bytes[60] = (((values[60] & 18446744073709551615_u64) << 0)).to_u64
    bytes[61] = (((values[61] & 18446744073709551615_u64) << 0)).to_u64
    bytes[62] = (((values[62] & 18446744073709551615_u64) << 0)).to_u64
    bytes[63] = (((values[63] & 18446744073709551615_u64) << 0)).to_u64
    bytes
  end

  def self.unpack64(bytes)
    values = Slice(Int64).new(64)
    values[0] = (((bytes[0] >> 0) & 18446744073709551615_u64)).to_i64
    values[1] = (((bytes[1] >> 0) & 18446744073709551615_u64)).to_i64
    values[2] = (((bytes[2] >> 0) & 18446744073709551615_u64)).to_i64
    values[3] = (((bytes[3] >> 0) & 18446744073709551615_u64)).to_i64
    values[4] = (((bytes[4] >> 0) & 18446744073709551615_u64)).to_i64
    values[5] = (((bytes[5] >> 0) & 18446744073709551615_u64)).to_i64
    values[6] = (((bytes[6] >> 0) & 18446744073709551615_u64)).to_i64
    values[7] = (((bytes[7] >> 0) & 18446744073709551615_u64)).to_i64
    values[8] = (((bytes[8] >> 0) & 18446744073709551615_u64)).to_i64
    values[9] = (((bytes[9] >> 0) & 18446744073709551615_u64)).to_i64
    values[10] = (((bytes[10] >> 0) & 18446744073709551615_u64)).to_i64
    values[11] = (((bytes[11] >> 0) & 18446744073709551615_u64)).to_i64
    values[12] = (((bytes[12] >> 0) & 18446744073709551615_u64)).to_i64
    values[13] = (((bytes[13] >> 0) & 18446744073709551615_u64)).to_i64
    values[14] = (((bytes[14] >> 0) & 18446744073709551615_u64)).to_i64
    values[15] = (((bytes[15] >> 0) & 18446744073709551615_u64)).to_i64
    values[16] = (((bytes[16] >> 0) & 18446744073709551615_u64)).to_i64
    values[17] = (((bytes[17] >> 0) & 18446744073709551615_u64)).to_i64
    values[18] = (((bytes[18] >> 0) & 18446744073709551615_u64)).to_i64
    values[19] = (((bytes[19] >> 0) & 18446744073709551615_u64)).to_i64
    values[20] = (((bytes[20] >> 0) & 18446744073709551615_u64)).to_i64
    values[21] = (((bytes[21] >> 0) & 18446744073709551615_u64)).to_i64
    values[22] = (((bytes[22] >> 0) & 18446744073709551615_u64)).to_i64
    values[23] = (((bytes[23] >> 0) & 18446744073709551615_u64)).to_i64
    values[24] = (((bytes[24] >> 0) & 18446744073709551615_u64)).to_i64
    values[25] = (((bytes[25] >> 0) & 18446744073709551615_u64)).to_i64
    values[26] = (((bytes[26] >> 0) & 18446744073709551615_u64)).to_i64
    values[27] = (((bytes[27] >> 0) & 18446744073709551615_u64)).to_i64
    values[28] = (((bytes[28] >> 0) & 18446744073709551615_u64)).to_i64
    values[29] = (((bytes[29] >> 0) & 18446744073709551615_u64)).to_i64
    values[30] = (((bytes[30] >> 0) & 18446744073709551615_u64)).to_i64
    values[31] = (((bytes[31] >> 0) & 18446744073709551615_u64)).to_i64
    values[32] = (((bytes[32] >> 0) & 18446744073709551615_u64)).to_i64
    values[33] = (((bytes[33] >> 0) & 18446744073709551615_u64)).to_i64
    values[34] = (((bytes[34] >> 0) & 18446744073709551615_u64)).to_i64
    values[35] = (((bytes[35] >> 0) & 18446744073709551615_u64)).to_i64
    values[36] = (((bytes[36] >> 0) & 18446744073709551615_u64)).to_i64
    values[37] = (((bytes[37] >> 0) & 18446744073709551615_u64)).to_i64
    values[38] = (((bytes[38] >> 0) & 18446744073709551615_u64)).to_i64
    values[39] = (((bytes[39] >> 0) & 18446744073709551615_u64)).to_i64
    values[40] = (((bytes[40] >> 0) & 18446744073709551615_u64)).to_i64
    values[41] = (((bytes[41] >> 0) & 18446744073709551615_u64)).to_i64
    values[42] = (((bytes[42] >> 0) & 18446744073709551615_u64)).to_i64
    values[43] = (((bytes[43] >> 0) & 18446744073709551615_u64)).to_i64
    values[44] = (((bytes[44] >> 0) & 18446744073709551615_u64)).to_i64
    values[45] = (((bytes[45] >> 0) & 18446744073709551615_u64)).to_i64
    values[46] = (((bytes[46] >> 0) & 18446744073709551615_u64)).to_i64
    values[47] = (((bytes[47] >> 0) & 18446744073709551615_u64)).to_i64
    values[48] = (((bytes[48] >> 0) & 18446744073709551615_u64)).to_i64
    values[49] = (((bytes[49] >> 0) & 18446744073709551615_u64)).to_i64
    values[50] = (((bytes[50] >> 0) & 18446744073709551615_u64)).to_i64
    values[51] = (((bytes[51] >> 0) & 18446744073709551615_u64)).to_i64
    values[52] = (((bytes[52] >> 0) & 18446744073709551615_u64)).to_i64
    values[53] = (((bytes[53] >> 0) & 18446744073709551615_u64)).to_i64
    values[54] = (((bytes[54] >> 0) & 18446744073709551615_u64)).to_i64
    values[55] = (((bytes[55] >> 0) & 18446744073709551615_u64)).to_i64
    values[56] = (((bytes[56] >> 0) & 18446744073709551615_u64)).to_i64
    values[57] = (((bytes[57] >> 0) & 18446744073709551615_u64)).to_i64
    values[58] = (((bytes[58] >> 0) & 18446744073709551615_u64)).to_i64
    values[59] = (((bytes[59] >> 0) & 18446744073709551615_u64)).to_i64
    values[60] = (((bytes[60] >> 0) & 18446744073709551615_u64)).to_i64
    values[61] = (((bytes[61] >> 0) & 18446744073709551615_u64)).to_i64
    values[62] = (((bytes[62] >> 0) & 18446744073709551615_u64)).to_i64
    values[63] = (((bytes[63] >> 0) & 18446744073709551615_u64)).to_i64
    values
  end
end
