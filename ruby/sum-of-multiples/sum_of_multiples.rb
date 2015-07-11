class SumOfMultiples
  DEFAULT = [3, 5]

  def self.to(num)
    new(DEFAULT).to(num)
  end

  def initialize(*nums)
    @nums = nums.flatten
  end

  def to(num)
    multiples = find_multiples(num)

    (0..num).reduce(0) do |res, n|
      res += n if multiples.include?(n)
      res
    end
  end

  private

  def find_multiples(num)
    @nums.flat_map { |n| (0...num).step(n).to_a }
  end
end

