class Fixnum
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
    "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
    "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
  }

  def to_roman
    number = self
    ROMAN_NUMERALS.map do |numeral, divisor|
      working = number.divmod(divisor)
      number = working[1]
      numeral * working[0] if working[0] >= 1
    end.join
  end
end

