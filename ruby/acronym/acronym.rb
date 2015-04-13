class Acronym
  attr_reader :phrase

  def self.abbreviate(phrase)
    new(phrase).abbreviate
  end

  def initialize(phrase)
    @phrase = phrase.gsub!(/[^\w]/, " ")
  end

  def abbreviate
    if recursive_acronym?
      phrase.split.first
    else
      make_abbreviation
    end
  end

  private

  def make_abbreviation
    phrase.split.map do |word|
      word.capitalize! unless upper_case?(word.chars.first)
      word.scan(/[A-Z]/)
    end.join
  end

  def upper_case?(character)
    character == character.upcase
  end

  def recursive_acronym?
    upper_case?(phrase[0]) && upper_case?(phrase[1])
  end
end
