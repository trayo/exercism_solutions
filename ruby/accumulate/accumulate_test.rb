#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require "minitest/pride"
=======
>>>>>>> initial upload from work
require_relative 'accumulate'

class ArrayTest < Minitest::Test
  def test_empty_accumulation
    assert_equal [], [].accumulate { |e| e * e }
  end

  def test_accumulate_squares
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    result = [1, 2, 3].accumulate do |number|
      number * number
    end
    assert_equal [1, 4, 9], result
  end

  def test_accumulate_upcases
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    result = %w(hello world).accumulate(&:upcase)
    assert_equal %w(HELLO WORLD), result
  end

  def test_accumulate_reversed_strings
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    result = %w(the quick brown fox etc).accumulate(&:reverse)
    assert_equal %w(eht kciuq nworb xof cte), result
  end

  def test_accumulate_recursively
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    result = %w(a b c).accumulate do |char|
      %w(1 2 3).accumulate do |digit|
        "#{char}#{digit}"
      end
    end
    assert_equal [%w(a1 a2 a3), %w(b1 b2 b3), %w(c1 c2 c3)], result
  end

  def test_do_not_change_in_place
    original = [1, 2, 3]
    copy = original.dup
    original.accumulate { |n| n * n }
    assert_equal copy, original
  end
end
