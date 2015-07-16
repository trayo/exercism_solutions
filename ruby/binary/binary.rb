class Binary
  VERSION = 1

  def initialize(binary_string)
    raise ArgumentError if binary_string.match(/[^10]/)
    @binary_string = binary_string.chars
  end

  def to_decimal
    @binary_string.each_with_index.reduce(0) do |result, (element, index)|
      result + element.to_i * 2 ** (@binary_string.length.pred - index)
    end
  end
end
