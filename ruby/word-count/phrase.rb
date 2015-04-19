class Phrase
  def initialize(phrase)
    @phrase = parse(phrase)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end

  private

  def parse(phrase)
    phrase.downcase.gsub(/[^\w']/, " ").split
  end
end
