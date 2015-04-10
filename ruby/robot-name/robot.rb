class Robot
  ALPHABET = ("A".."Z").to_a
  NUMBERS = ("0".."9").to_a

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    "#{ALPHABET.sample(2).join}#{NUMBERS.sample(3).join}"
  end
end
