class SumOfMultiples
  DEFAULTS = [3, 5]

  def self.to(num)
    new(DEFAULTS).to(num)
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
    @nums.flat_map do |n|
      (0...num).step(n).map do |i|
        i if i % n == 0
      end
    end.uniq
  end
end

