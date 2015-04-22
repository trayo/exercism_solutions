class Fixnum
  def to_roman
    RomanConverter.to_roman(self)
  end
end

class RomanConverter
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
    "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
    "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
  }

  def self.to_roman(number)
    ROMAN_NUMERALS.map do |numeral, divisor|
      division, number = number.divmod(divisor)
      numeral * division
    end.join
  end
end

