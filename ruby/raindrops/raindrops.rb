class Raindrops

  def self.convert(number)
    if number % 3 == 0
      return "Pling"
    end

    if number % 5 == 0
      return "Plang"
    end

    if number % 7 == 0
      return "Plong"
    end

    return number.to_s
  end
end
