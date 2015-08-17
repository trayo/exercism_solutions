<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
require_relative 'squares'
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'difference_of_squares'
>>>>>>> initial upload from work

class SquaresTest < Minitest::Test
  def test_square_of_sums_to_5
    assert_equal 225, Squares.new(5).square_of_sums
  end

  def test_sum_of_squares_to_5
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 55, Squares.new(5).sum_of_squares
  end

  def test_difference_of_sums_to_5
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 170, Squares.new(5).difference
  end

  def test_square_of_sums_to_10
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 3025, Squares.new(10).square_of_sums
  end

  def test_sum_of_squares_to_10
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 385, Squares.new(10).sum_of_squares
  end

  def test_difference_of_sums_to_10
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 2640, Squares.new(10).difference
  end

  def test_square_of_sums_to_100
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 25_502_500, Squares.new(100).square_of_sums
  end

  def test_sum_of_squares_to_100
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 338_350, Squares.new(100).sum_of_squares
  end

  def test_difference_of_sums_to_100
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 25_164_150, Squares.new(100).difference
  end

  def test_consistent_difference
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    squares = Squares.new(10)
    assert_equal squares.difference, squares.difference
  end
end
