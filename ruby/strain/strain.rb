class Array
  def keep(&block)
    select { |element| block.call(element) }
  end

  def discard(&block)
    reject { |element| block.call(element) }
  end
end
