require 'prime'

class PrimeFactors
  def self.for(num)
    return [] if num == 1
    return [num] if (2..3).include? num

    factors = []

    possible_factor = 2
    while num >= possible_factor
      while num % possible_factor == 0
        factors << possible_factor
        num /= possible_factor
      end
      possible_factor += 1
    end

    factors
  end
end
