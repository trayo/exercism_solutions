<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require 'minitest/pride'
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
>>>>>>> initial upload from work
require_relative 'grains'

class GrainsTest < Minitest::Test
  def test_square_1
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    assert_equal 1, Grains.new.square(1)
  end

  def test_square_2
    assert_equal 2, Grains.new.square(2)
  end

  def test_square_3
    assert_equal 4, Grains.new.square(3)
  end

  def test_square_4
    assert_equal 8, Grains.new.square(4)
  end

  def test_square_5
    assert_equal 16, Grains.new.square(5)
  end

  def test_square_16
    assert_equal 32_768, Grains.new.square(16)
  end

  def test_square_32
    assert_equal 2_147_483_648, Grains.new.square(32)
  end

  def test_square_64
    assert_equal 9_223_372_036_854_775_808, Grains.new.square(64)
  end

  def test_total_grains
    assert_equal 18_446_744_073_709_551_615, Grains.new.total
=======
    assert_equal 1, Grains.square(1)
  end

  def test_square_2
    skip
    assert_equal 2, Grains.square(2)
  end

  def test_square_3
    skip
    assert_equal 4, Grains.square(3)
  end

  def test_square_4
    skip
    assert_equal 8, Grains.square(4)
  end

  def test_square_16
    skip
    assert_equal 32_768, Grains.square(16)
  end

  def test_square_32
    skip
    assert_equal 2_147_483_648, Grains.square(32)
  end

  def test_square_64
    skip
    assert_equal 9_223_372_036_854_775_808, Grains.square(64)
  end

  def test_total_grains
    skip
    assert_equal 18_446_744_073_709_551_615, Grains.total
>>>>>>> initial upload from work
  end
end
