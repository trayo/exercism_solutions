class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select! do |a|
      a.length == @word.length && a.downcase != @word
    end

    anagrams.map do |anagram|
      anagram if matches_word?(anagram)
    end.compact
  end

  private

  def matches_word?(anagram)
    @word.chars.sort == anagram.downcase.chars.sort
  end
end
