#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require "minitest/pride"
=======
>>>>>>> initial upload from work
require_relative 'prime_factors'

class PrimeFactorsTest < Minitest::Test
  def test_1
    assert_equal [], PrimeFactors.for(1)
  end

  def test_2
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [2], PrimeFactors.for(2)
  end

  def test_3
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [3], PrimeFactors.for(3)
  end

  def test_4
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [2, 2], PrimeFactors.for(4)
  end

  def test_6
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [2, 3], PrimeFactors.for(6)
  end

  def test_8
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [2, 2, 2], PrimeFactors.for(8)
  end

  def test_9
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [3, 3], PrimeFactors.for(9)
  end

  def test_27
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [3, 3, 3], PrimeFactors.for(27)
  end

  def test_625
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [5, 5, 5, 5], PrimeFactors.for(625)
  end

  def test_901255
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [5, 17, 23, 461], PrimeFactors.for(901_255)
  end

  def test_93819012551
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal [11, 9539, 894_119], PrimeFactors.for(93_819_012_551)
  end
end
