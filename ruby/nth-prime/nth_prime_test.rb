require 'minitest/autorun'
require "minitest/pride"

require 'prime'
Error_message = "Using Ruby's Prime class is probably the best way to do this in a 'real'\n" +
  "application; but this is an exercise, not a real application, so you're\n" +
  "expected to implement this yourself ;-)"
class Prime
  [:each, :new, :prime?, :take].each do |m|
    define_method(m) { |*_| raise Error_message }
  end
end

class Integer
  [:prime?, :each_prime].each do |m|
    define_method(m) { |*_| raise Error_message }
  end
end

require_relative 'nth_prime'

class TestPrimes < Minitest::Test
  def test_first
    assert_equal 2, Prime.nth(1)
  end

  def test_second
    assert_equal 3, Prime.nth(2)
  end

  def test_third
    assert_equal 5, Prime.nth(3)
  end

  def test_fourth
    assert_equal 7, Prime.nth(4)
  end

  def test_fourth
    assert_equal 11, Prime.nth(5)
  end

  def test_sixth
    skip
    assert_equal 13, Prime.nth(6)
  end

  def test_fifty
    skip
    assert_equal 13, Prime.nth(50)
  end

  def test_big_prime
    skip
    assert_equal 104_743, Prime.nth(10_001)
  end

  def test_weird_case
    assert_raises ArgumentError do
      Prime.nth(0)
    end
  end
end
