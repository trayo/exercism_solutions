class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.gsub(/[^\w']/, " ").split
  end

  def word_count
    @phrase.each_with_object({}) do |word, result|
      result[word] = 0 unless result[word]
      result[word] += 1
    end
  end
end
