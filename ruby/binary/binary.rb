class Binary
  VERSION = 1

  def initialize(binary_string)
    raise ArgumentError if binary_string.match(/[^10]/)
    @binary_string = binary_string.chars
  end

  def to_decimal
    index = @binary_string.length
    @binary_string.reduce(0) do |res, n|
      index -= 1
      res + n.to_i * 2 ** index
    end
  end
end
