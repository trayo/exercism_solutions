class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select { |anagram| anagram if matches_word?(anagram) }
  end

  private

  def matches_word?(anagram)
    anagram.downcase.chars.sort == @word.chars.sort &&
      anagram.downcase != @word
  end
end
