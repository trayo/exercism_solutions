class Array
  def accumulate(&block)
    self.reduce([]) { |res, n| res << block.call(n) }
  end
end
