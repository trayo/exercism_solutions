class Trinary
  BASE = 3

  def initialize(string)
    @trinary_string = valid_trinary?(string) ? string.chars : ["0"]
  end

  def to_decimal
    @trinary_string.each_with_index.reduce(0) do |result, (trinary, position)|
      result + trinary.to_i * BASE ** (@trinary_string.length.pred - position)
    end
  end

  private

  def valid_trinary?(string)
    string.match(/^[012]/)
  end
end

