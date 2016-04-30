module ZigZag
  def self.encode64(int : Int::Signed)
    n = int.to_i64
    ((n << 1) ^ (n >> 63)).to_u64
  end

  def self.encode32(int : Int8 | Int16 | Int32)
    n = int.to_i32
    ((n << 1) ^ (n >> 31)).to_u32
  end

  def self.decode64(int : UInt64)
    ((int >> 1) ^ (-1 * (int & 1))).to_i64
  end

  def self.decode32(int : UInt32)
    ((int >> 1) ^ (-1 * (int & 1))).to_i32
  end
end
