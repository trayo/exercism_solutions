class Array
  def accumulate(&block)
    self.map { |n| block.call(n) }
  end
end
