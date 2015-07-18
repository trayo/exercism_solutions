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
    string.length.times.map do |index|
      string.slice(index, length).chars.map(&:to_i)
    end.delete_if { |e| e.length != length }
  end
end

