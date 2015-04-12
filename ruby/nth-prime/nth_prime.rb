class Prime

  def self.nth(goal)
    new.nth(goal)
  end

  def nth(goal)
    raise ArgumentError if goal == 0

    primes = []

    i = 1
    while primes.length <= goal do
      if is_prime?(i)
        primes << i
      end
      i += 1
    end

    primes.last
  end

  private

  def is_prime?(number)

  end
end
