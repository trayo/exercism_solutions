class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select { |anagram| matches_word?(anagram) }
  end

  private

  def matches_word?(anagram)
    anagram.downcase != @word &&
      anagram.downcase.chars.sort == @word.chars.sort
  end
end
