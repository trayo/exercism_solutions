class Grains
  TOTAL_SQUARES = 64

  def square(number)
    (1..(number-1)).reduce(1) do |sum, number|
      sum += sum
    end
  end

  def total
    (1..TOTAL_SQUARES).reduce(0) do |sum, number|
      sum += square(number)
    end
  end
end
