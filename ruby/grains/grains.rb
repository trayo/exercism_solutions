class Grains
  TOTAL_SQUARES = 64

  def square(number)
    (1...number).reduce(1) { |sum| sum + sum }
  end

  def total
    (1..TOTAL_SQUARES).reduce(0) do |sum, number|
      sum + square(number)
    end
  end
end
