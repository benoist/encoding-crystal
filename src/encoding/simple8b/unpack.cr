module Simple8b
  module Unpack
    def unpack240(packed)
      Slice(UInt64).new(240, 1_u64)
    end

    def unpack120(packed)
      Slice(UInt64).new(120, 1_u64)
    end

    def unpack60(packed)
      unpacked = Slice(UInt64).new(60)
      unpacked[0] = packed & 1
      unpacked[1] = (packed >> 1) & 1
      unpacked[2] = (packed >> 2) & 1
      unpacked[3] = (packed >> 3) & 1
      unpacked[4] = (packed >> 4) & 1
      unpacked[5] = (packed >> 5) & 1
      unpacked[6] = (packed >> 6) & 1
      unpacked[7] = (packed >> 7) & 1
      unpacked[8] = (packed >> 8) & 1
      unpacked[9] = (packed >> 9) & 1
      unpacked[10] = (packed >> 10) & 1
      unpacked[11] = (packed >> 11) & 1
      unpacked[12] = (packed >> 12) & 1
      unpacked[13] = (packed >> 13) & 1
      unpacked[14] = (packed >> 14) & 1
      unpacked[15] = (packed >> 15) & 1
      unpacked[16] = (packed >> 16) & 1
      unpacked[17] = (packed >> 17) & 1
      unpacked[18] = (packed >> 18) & 1
      unpacked[19] = (packed >> 19) & 1
      unpacked[20] = (packed >> 20) & 1
      unpacked[21] = (packed >> 21) & 1
      unpacked[22] = (packed >> 22) & 1
      unpacked[23] = (packed >> 23) & 1
      unpacked[24] = (packed >> 24) & 1
      unpacked[25] = (packed >> 25) & 1
      unpacked[26] = (packed >> 26) & 1
      unpacked[27] = (packed >> 27) & 1
      unpacked[28] = (packed >> 28) & 1
      unpacked[29] = (packed >> 29) & 1
      unpacked[30] = (packed >> 30) & 1
      unpacked[31] = (packed >> 31) & 1
      unpacked[32] = (packed >> 32) & 1
      unpacked[33] = (packed >> 33) & 1
      unpacked[34] = (packed >> 34) & 1
      unpacked[35] = (packed >> 35) & 1
      unpacked[36] = (packed >> 36) & 1
      unpacked[37] = (packed >> 37) & 1
      unpacked[38] = (packed >> 38) & 1
      unpacked[39] = (packed >> 39) & 1
      unpacked[40] = (packed >> 40) & 1
      unpacked[41] = (packed >> 41) & 1
      unpacked[42] = (packed >> 42) & 1
      unpacked[43] = (packed >> 43) & 1
      unpacked[44] = (packed >> 44) & 1
      unpacked[45] = (packed >> 45) & 1
      unpacked[46] = (packed >> 46) & 1
      unpacked[47] = (packed >> 47) & 1
      unpacked[48] = (packed >> 48) & 1
      unpacked[49] = (packed >> 49) & 1
      unpacked[50] = (packed >> 50) & 1
      unpacked[51] = (packed >> 51) & 1
      unpacked[52] = (packed >> 52) & 1
      unpacked[53] = (packed >> 53) & 1
      unpacked[54] = (packed >> 54) & 1
      unpacked[55] = (packed >> 55) & 1
      unpacked[56] = (packed >> 56) & 1
      unpacked[57] = (packed >> 57) & 1
      unpacked[58] = (packed >> 58) & 1
      unpacked[59] = (packed >> 59) & 1
      unpacked
    end

    def unpack30(packed)
      unpacked = Slice(UInt64).new(30)
      unpacked[0] = packed & 3
      unpacked[1] = (packed >> 2) & 3
      unpacked[2] = (packed >> 4) & 3
      unpacked[3] = (packed >> 6) & 3
      unpacked[4] = (packed >> 8) & 3
      unpacked[5] = (packed >> 10) & 3
      unpacked[6] = (packed >> 12) & 3
      unpacked[7] = (packed >> 14) & 3
      unpacked[8] = (packed >> 16) & 3
      unpacked[9] = (packed >> 18) & 3
      unpacked[10] = (packed >> 20) & 3
      unpacked[11] = (packed >> 22) & 3
      unpacked[12] = (packed >> 24) & 3
      unpacked[13] = (packed >> 26) & 3
      unpacked[14] = (packed >> 28) & 3
      unpacked[15] = (packed >> 30) & 3
      unpacked[16] = (packed >> 32) & 3
      unpacked[17] = (packed >> 34) & 3
      unpacked[18] = (packed >> 36) & 3
      unpacked[19] = (packed >> 38) & 3
      unpacked[20] = (packed >> 40) & 3
      unpacked[21] = (packed >> 42) & 3
      unpacked[22] = (packed >> 44) & 3
      unpacked[23] = (packed >> 46) & 3
      unpacked[24] = (packed >> 48) & 3
      unpacked[25] = (packed >> 50) & 3
      unpacked[26] = (packed >> 52) & 3
      unpacked[27] = (packed >> 54) & 3
      unpacked[28] = (packed >> 56) & 3
      unpacked[29] = (packed >> 58) & 3
      unpacked
    end

    def unpack20(packed)
      unpacked = Slice(UInt64).new(20)
      unpacked[0] = packed & 7
      unpacked[1] = (packed >> 3) & 7
      unpacked[2] = (packed >> 6) & 7
      unpacked[3] = (packed >> 9) & 7
      unpacked[4] = (packed >> 12) & 7
      unpacked[5] = (packed >> 15) & 7
      unpacked[6] = (packed >> 18) & 7
      unpacked[7] = (packed >> 21) & 7
      unpacked[8] = (packed >> 24) & 7
      unpacked[9] = (packed >> 27) & 7
      unpacked[10] = (packed >> 30) & 7
      unpacked[11] = (packed >> 33) & 7
      unpacked[12] = (packed >> 36) & 7
      unpacked[13] = (packed >> 39) & 7
      unpacked[14] = (packed >> 42) & 7
      unpacked[15] = (packed >> 45) & 7
      unpacked[16] = (packed >> 48) & 7
      unpacked[17] = (packed >> 51) & 7
      unpacked[18] = (packed >> 54) & 7
      unpacked[19] = (packed >> 57) & 7
      unpacked
    end

    def unpack15(packed)
      unpacked = Slice(UInt64).new(15)
      unpacked[0] = packed & 15
      unpacked[1] = (packed >> 4) & 15
      unpacked[2] = (packed >> 8) & 15
      unpacked[3] = (packed >> 12) & 15
      unpacked[4] = (packed >> 16) & 15
      unpacked[5] = (packed >> 20) & 15
      unpacked[6] = (packed >> 24) & 15
      unpacked[7] = (packed >> 28) & 15
      unpacked[8] = (packed >> 32) & 15
      unpacked[9] = (packed >> 36) & 15
      unpacked[10] = (packed >> 40) & 15
      unpacked[11] = (packed >> 44) & 15
      unpacked[12] = (packed >> 48) & 15
      unpacked[13] = (packed >> 52) & 15
      unpacked[14] = (packed >> 56) & 15
      unpacked
    end

    def unpack12(packed)
      unpacked = Slice(UInt64).new(12)
      unpacked[0] = packed & 31
      unpacked[1] = (packed >> 5) & 31
      unpacked[2] = (packed >> 10) & 31
      unpacked[3] = (packed >> 15) & 31
      unpacked[4] = (packed >> 20) & 31
      unpacked[5] = (packed >> 25) & 31
      unpacked[6] = (packed >> 30) & 31
      unpacked[7] = (packed >> 35) & 31
      unpacked[8] = (packed >> 40) & 31
      unpacked[9] = (packed >> 45) & 31
      unpacked[10] = (packed >> 50) & 31
      unpacked[11] = (packed >> 55) & 31
      unpacked
    end

    def unpack10(packed)
      unpacked = Slice(UInt64).new(10)
      unpacked[0] = packed & 63
      unpacked[1] = (packed >> 6) & 63
      unpacked[2] = (packed >> 12) & 63
      unpacked[3] = (packed >> 18) & 63
      unpacked[4] = (packed >> 24) & 63
      unpacked[5] = (packed >> 30) & 63
      unpacked[6] = (packed >> 36) & 63
      unpacked[7] = (packed >> 42) & 63
      unpacked[8] = (packed >> 48) & 63
      unpacked[9] = (packed >> 54) & 63
      unpacked
    end

    def unpack8(packed)
      unpacked = Slice(UInt64).new(8)
      unpacked[0] = packed & 127
      unpacked[1] = (packed >> 7) & 127
      unpacked[2] = (packed >> 14) & 127
      unpacked[3] = (packed >> 21) & 127
      unpacked[4] = (packed >> 28) & 127
      unpacked[5] = (packed >> 35) & 127
      unpacked[6] = (packed >> 42) & 127
      unpacked[7] = (packed >> 49) & 127
      unpacked
    end

    def unpack7(packed)
      unpacked = Slice(UInt64).new(7)
      unpacked[0] = packed & 255
      unpacked[1] = (packed >> 8) & 255
      unpacked[2] = (packed >> 16) & 255
      unpacked[3] = (packed >> 24) & 255
      unpacked[4] = (packed >> 32) & 255
      unpacked[5] = (packed >> 40) & 255
      unpacked[6] = (packed >> 48) & 255
      unpacked
    end

    def unpack6(packed)
      unpacked = Slice(UInt64).new(6)
      unpacked[0] = packed & 1023
      unpacked[1] = (packed >> 10) & 1023
      unpacked[2] = (packed >> 20) & 1023
      unpacked[3] = (packed >> 30) & 1023
      unpacked[4] = (packed >> 40) & 1023
      unpacked[5] = (packed >> 50) & 1023
      unpacked
    end

    def unpack5(packed)
      unpacked = Slice(UInt64).new(5)
      unpacked[0] = packed & 4095
      unpacked[1] = (packed >> 12) & 4095
      unpacked[2] = (packed >> 24) & 4095
      unpacked[3] = (packed >> 36) & 4095
      unpacked[4] = (packed >> 48) & 4095
      unpacked
    end

    def unpack4(packed)
      unpacked = Slice(UInt64).new(4)
      unpacked[0] = packed & 32767
      unpacked[1] = (packed >> 15) & 32767
      unpacked[2] = (packed >> 30) & 32767
      unpacked[3] = (packed >> 45) & 32767
      unpacked
    end

    def unpack3(packed)
      unpacked = Slice(UInt64).new(3)
      unpacked[0] = packed & 1048575
      unpacked[1] = (packed >> 20) & 1048575
      unpacked[2] = (packed >> 40) & 1048575
      unpacked
    end

    def unpack2(packed)
      unpacked = Slice(UInt64).new(2)
      unpacked[0] = packed & 1073741823
      unpacked[1] = (packed >> 30) & 1073741823
      unpacked
    end

    def unpack1(packed)
      unpacked = Slice(UInt64).new(1)
      unpacked[0] = packed & 1152921504606846975
      unpacked
    end
  end
end
