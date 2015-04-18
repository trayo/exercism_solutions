class Bob

  def hey(phrase)
    @phrase = phrase

    if phrase.strip.empty?
      "Fine. Be that way!"
    elsif shouting? && not_only_numbers?
      "Whoa, chill out!"
    elsif asking_a_question?
      "Sure."
    else
      "Whatever."
    end
  end

  private

  def shouting?
    @phrase.upcase == @phrase
  end

  def not_only_numbers?
    !@phrase.gsub(/\W/, "").match(/^(\d+)$/)
  end

  def asking_a_question?
    @phrase.end_with?("?")
  end
end

