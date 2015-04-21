class Robot
  ALPHABET = ("A".."Z").to_a
  NUMBERS = ("0".."9").to_a

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    "#{letter}#{letter}#{number}#{number}#{number}"
  end

  def letter
    ALPHABET.sample
  end

  def number
    NUMBERS.sample
  end
end
