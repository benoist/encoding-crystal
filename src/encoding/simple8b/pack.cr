module Simple8b
  module Pack
    def pack240(ints)
      return 0_u64
    end

    def pack120(ints)
      return 1_u64 << 60
    end

    def pack60(ints)
      2_u64 << 60 |
        ints[0] |
        ints[1] << 1 |
        ints[2] << 2 |
        ints[3] << 3 |
        ints[4] << 4 |
        ints[5] << 5 |
        ints[6] << 6 |
        ints[7] << 7 |
        ints[8] << 8 |
        ints[9] << 9 |
        ints[10] << 10 |
        ints[11] << 11 |
        ints[12] << 12 |
        ints[13] << 13 |
        ints[14] << 14 |
        ints[15] << 15 |
        ints[16] << 16 |
        ints[17] << 17 |
        ints[18] << 18 |
        ints[19] << 19 |
        ints[20] << 20 |
        ints[21] << 21 |
        ints[22] << 22 |
        ints[23] << 23 |
        ints[24] << 24 |
        ints[25] << 25 |
        ints[26] << 26 |
        ints[27] << 27 |
        ints[28] << 28 |
        ints[29] << 29 |
        ints[30] << 30 |
        ints[31] << 31 |
        ints[32] << 32 |
        ints[33] << 33 |
        ints[34] << 34 |
        ints[35] << 35 |
        ints[36] << 36 |
        ints[37] << 37 |
        ints[38] << 38 |
        ints[39] << 39 |
        ints[40] << 40 |
        ints[41] << 41 |
        ints[42] << 42 |
        ints[43] << 43 |
        ints[44] << 44 |
        ints[45] << 45 |
        ints[46] << 46 |
        ints[47] << 47 |
        ints[48] << 48 |
        ints[49] << 49 |
        ints[50] << 50 |
        ints[51] << 51 |
        ints[52] << 52 |
        ints[53] << 53 |
        ints[54] << 54 |
        ints[55] << 55 |
        ints[56] << 56 |
        ints[57] << 57 |
        ints[58] << 58 |
        ints[59] << 59
    end

    def pack30(ints)
      3_u64 << 60 |
        ints[0] |
        ints[1] << 2 |
        ints[2] << 4 |
        ints[3] << 6 |
        ints[4] << 8 |
        ints[5] << 10 |
        ints[6] << 12 |
        ints[7] << 14 |
        ints[8] << 16 |
        ints[9] << 18 |
        ints[10] << 20 |
        ints[11] << 22 |
        ints[12] << 24 |
        ints[13] << 26 |
        ints[14] << 28 |
        ints[15] << 30 |
        ints[16] << 32 |
        ints[17] << 34 |
        ints[18] << 36 |
        ints[19] << 38 |
        ints[20] << 40 |
        ints[21] << 42 |
        ints[22] << 44 |
        ints[23] << 46 |
        ints[24] << 48 |
        ints[25] << 50 |
        ints[26] << 52 |
        ints[27] << 54 |
        ints[28] << 56 |
        ints[29] << 58
    end

    def pack20(ints)
      4_u64 << 60 |
        ints[0] |
        ints[1] << 3 |
        ints[2] << 6 |
        ints[3] << 9 |
        ints[4] << 12 |
        ints[5] << 15 |
        ints[6] << 18 |
        ints[7] << 21 |
        ints[8] << 24 |
        ints[9] << 27 |
        ints[10] << 30 |
        ints[11] << 33 |
        ints[12] << 36 |
        ints[13] << 39 |
        ints[14] << 42 |
        ints[15] << 45 |
        ints[16] << 48 |
        ints[17] << 51 |
        ints[18] << 54 |
        ints[19] << 57
    end

    def pack15(ints)
      5_u64 << 60 |
        ints[0] |
        ints[1] << 4 |
        ints[2] << 8 |
        ints[3] << 12 |
        ints[4] << 16 |
        ints[5] << 20 |
        ints[6] << 24 |
        ints[7] << 28 |
        ints[8] << 32 |
        ints[9] << 36 |
        ints[10] << 40 |
        ints[11] << 44 |
        ints[12] << 48 |
        ints[13] << 52 |
        ints[14] << 56
    end

    def pack12(ints)
      6_u64 << 60 |
        ints[0] |
        ints[1] << 5 |
        ints[2] << 10 |
        ints[3] << 15 |
        ints[4] << 20 |
        ints[5] << 25 |
        ints[6] << 30 |
        ints[7] << 35 |
        ints[8] << 40 |
        ints[9] << 45 |
        ints[10] << 50 |
        ints[11] << 55
    end

    def pack10(ints)
      7_u64 << 60 |
        ints[0] |
        ints[1] << 6 |
        ints[2] << 12 |
        ints[3] << 18 |
        ints[4] << 24 |
        ints[5] << 30 |
        ints[6] << 36 |
        ints[7] << 42 |
        ints[8] << 48 |
        ints[9] << 54
    end

    def pack8(ints)
      8_u64 << 60 |
        ints[0] |
        ints[1] << 7 |
        ints[2] << 14 |
        ints[3] << 21 |
        ints[4] << 28 |
        ints[5] << 35 |
        ints[6] << 42 |
        ints[7] << 49
    end

    def pack7(ints)
      9_u64 << 60 |
        ints[0] |
        ints[1] << 8 |
        ints[2] << 16 |
        ints[3] << 24 |
        ints[4] << 32 |
        ints[5] << 40 |
        ints[6] << 48
    end

    def pack6(ints)
      10_u64 << 60 |
        ints[0] |
        ints[1] << 10 |
        ints[2] << 20 |
        ints[3] << 30 |
        ints[4] << 40 |
        ints[5] << 50
    end

    def pack5(ints)
      11_u64 << 60 |
        ints[0] |
        ints[1] << 12 |
        ints[2] << 24 |
        ints[3] << 36 |
        ints[4] << 48
    end

    def pack4(ints)
      12_u64 << 60 |
        ints[0] |
        ints[1] << 15 |
        ints[2] << 30 |
        ints[3] << 45
    end

    def pack3(ints)
      13_u64 << 60 |
        ints[0] |
        ints[1] << 20 |
        ints[2] << 40
    end

    def pack2(ints)
      14_u64 << 60 |
        ints[0] |
        ints[1] << 30
    end

    def pack1(ints)
      15_u64 << 60 |
        ints[0]
    end
  end
end
