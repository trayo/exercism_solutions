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
    "#{ALPHABET.sample}#{ALPHABET.sample}" +
    "#{NUMBERS.sample}#{NUMBERS.sample}#{NUMBERS.sample}"
  end
end
