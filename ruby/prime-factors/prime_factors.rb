require 'prime'

class PrimeFactors
  def self.for(num)
    return [] if num == 1
    return [num] if num > 1 && num < 4

    result = []

    i = 2
    while num >= i
      while num % i == 0
        result << i if num % i == 0
        num /= i
      end
      i += 1
    end

    result
  end
end
