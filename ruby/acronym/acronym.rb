class Acronym
  attr_reader :phrase

  def self.abbreviate(phrase)
    new(phrase).abbreviate
  end

  def initialize(phrase)
    @phrase = phrase.gsub(/\W/, " ")
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
    phrase.split.reduce("") do |result, word|
      word.capitalize! unless upper_case?(word.chars.first)
      result << word.scan(/[A-Z]/).join
    end
  end

  def upper_case?(character)
    character == character.upcase
  end

  def recursive_acronym?
    upper_case?(phrase[0]) && upper_case?(phrase[1])
  end
end
