module FloatEncoding
  class Encoder
    getter :leading
    getter :trailing
    getter :first
    getter :previous_value
    getter? :finished

    def initialize(io)
      @leading = 0_u64
      @trailing = 0_u64
      @first = true
      @previous_value = 0_f64
      @bit_stream = BitStream.writer(io)
      @finished = false
    end

    def push(value)
      value = value.to_f

      if value.nan? && !@finished
        raise "You cannot write NaN"
      end

      if @first
        @previous_value = value
        @first = false
        @bit_stream.write_bits(Encoding.float64bits(value), 64)
        return
      end

      delta = Encoding.float64bits(value) ^ Encoding.float64bits(@previous_value)

      if delta == 0
        @bit_stream.write_bit(false)
      else
        @bit_stream.write_bit(true)

        leading = Encoding.leading_zeros(delta)
        trailing = Encoding.trailing_zeros(delta)

        leading &= 0x1F
        leading = 31_u64 if leading == 32

        if @leading != 0_u64 && leading >= @leading && trailing >= @trailing
          @bit_stream.write_bit(false)
          @bit_stream.write_bits(delta >> @trailing, 64 - @leading - @trailing)
        else
          @leading, @trailing = leading, trailing

          @bit_stream.write_bit(true)
          @bit_stream.write_bits(leading, 5)

          sigbits = 64_u64 - leading - trailing
          @bit_stream.write_bits(sigbits, 6)
          @bit_stream.write_bits(delta >> trailing, sigbits)
        end
      end

      @previous_value = value
    end

    def finish
      return if @finished
      @finished = true
      push(Float64::NAN)
      @bit_stream.flush(false)
    end
  end

  class Decoder
    def initialize(@io)
      @leading = 0_u64
      @trailing = 0_u64
      @first = true
      @bit_stream = BitStream.reader(@io)

      @val = Encoding.float64frombits(@bit_stream.read_bits(64))
    end

    def next
      return false if @finished

      if @first
        @first = false

        # mark as finished if there were no values.
        if @val.nan?
          @finished = true
          return false
        end

        return true
      end

      if @bit_stream.read_bit   # return true if the value has changed
        if @bit_stream.read_bit # returns true if the leading and trailing zeros have changed
          @leading = @bit_stream.read_bits(5)

          sigbits = @bit_stream.read_bits(6)
          # 0 significant bits here means we overflowed and we actually need 64; see comment in encoder
          sigbits = 64 if sigbits == 0
          @trailing = 64 - @leading - sigbits
        end

        sigbits = 64 - @leading - @trailing
        bits = @bit_stream.read_bits(sigbits)
        value_bits = Encoding.float64bits(@val) ^ (bits << @trailing)

        val = Encoding.float64frombits(value_bits)

        if val.nan?
          @finished = true
          return false
        end
        @val = val
      end

      true
    end

    def value
      @val
    end
  end
end
