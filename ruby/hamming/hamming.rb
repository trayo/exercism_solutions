class Hamming
  def self.compute(strand_A, strand_B)
    raise ArgumentError if strand_A.length != strand_B.length
    strand_A.length.times.count { |i| strand_A[i] != strand_B[i] }
  end
end
