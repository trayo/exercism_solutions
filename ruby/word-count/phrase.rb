class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.gsub(/[^\w']/, " ").split
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end
end
