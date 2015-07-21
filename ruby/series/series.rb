class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError if length > string.length
    @slices ||= make_slices(string, length)
  end

  private

  def make_slices(string, length)
    string.chars.each_cons(length).map do |slice|
      slice.map(&:to_i)
    end
  end
end

