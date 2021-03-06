class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap?
    divisible_by?(4) && !divisible_by?(100) || divisible_by?(400)
  end

  def self.leap?(year)
    new(year).leap?
  end

  private

  def divisible_by?(n)
    year % n == 0
  end
end
