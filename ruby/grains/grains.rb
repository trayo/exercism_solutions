class Grains
  TOTAL_SQUARES = 64

  def square(number)
    2 ** (number - 1)
  end

  def total
    (1..TOTAL_SQUARES).reduce(0) do |sum, number|
      sum + square(number)
    end
  end
end
