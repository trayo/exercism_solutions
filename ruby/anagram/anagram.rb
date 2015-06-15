class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select { |anagram| matches_word?(anagram.downcase) }
  end

  private

  def matches_word?(anagram)
    anagram != @word && anagram.chars.sort == @word.chars.sort
  end
end
