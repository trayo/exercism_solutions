class Prime

  def self.nth(goal)
    new.nth(goal)
  end

  def nth(goal)
    raise ArgumentError if goal.zero?

    primes = [2, 3, 5]
    return primes[goal-1] if goal <= primes.length

    i = 5
    while primes.length < goal
      i += 2
      primes << i if is_prime?(i)
    end

    primes.last
  end

  def is_prime?(number)
    2.upto(number / 2) do |i|
      return false if number % i == 0
    end
  end
end
