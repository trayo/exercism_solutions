class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.map { |anagram| anagram if matches_word?(anagram) }.compact
  end

  private

  def matches_word?(anagram)
    anagram.downcase.chars.sort == @word.chars.sort &&
      anagram.length == @word.length                &&
      anagram.downcase != @word
  end
end
