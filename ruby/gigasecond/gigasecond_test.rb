<<<<<<< HEAD
require 'minitest/autorun'
require 'date'
require 'time'

require_relative 'gigasecond'
class GigasecondTest < Minitest::Test
  def test_1
    gs = Gigasecond.from(Time.utc(2011, 4, 25))
    assert_equal Time.utc(2043, 1, 1, 1, 46, 40), gs
  end

  def test_2
    gs = Gigasecond.from(Time.utc(1977, 6, 13))
    assert_equal Time.utc(2009, 2, 19, 1, 46, 40), gs
  end

  def test_3
    gs = Gigasecond.from(Time.utc(1959, 7, 19))
    assert_equal Time.utc(1991, 3, 27, 1, 46, 40), gs
  end

  def test_4_with_seconds
    gs = Gigasecond.from(Time.utc(1959, 7, 19, 23, 59, 59))
    assert_equal Time.utc(1991, 3, 28, 1, 46, 39), gs
  end

  # modify the test to test your 1 Gs anniversary
  def test_5_with_your_birthday
    your_birthday = Time.utc(1989, 07, 23)
    gs = Gigasecond.from(your_birthday)
    assert_equal Time.utc(2021, 3, 31, 1, 46, 40), gs
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'date'
require 'time'
require_relative 'gigasecond'

# Test data version:
# 2299e68 Document how to skip the hello world problem

class GigasecondTest < Minitest::Test
  def test_2011_04_25
    gs = Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
    assert_equal Time.utc(2043, 1, 1, 1, 46, 40), gs
  end

  def test_1977_06_13
    skip
    gs = Gigasecond.from(Time.utc(1977, 6, 13, 0, 0, 0))
    assert_equal Time.utc(2009, 2, 19, 1, 46, 40), gs
  end

  def test_1959_07_19
    skip
    gs = Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))
    assert_equal Time.utc(1991, 3, 27, 1, 46, 40), gs
  end

  def test_full_time_specified
    skip
    gs = Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))
    assert_equal Time.utc(2046, 10, 2, 23, 46, 40), gs
  end

  def test_full_time_with_day_roll_over
    skip
    gs = Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59))
    assert_equal Time.utc(2046, 10, 3, 1, 46, 39), gs
  end

  # Test your 1Gs anniversary
  def test_with_your_birthday
    skip
  end

  # This test is for the sake of people providing feedback, so they
  # know which version of the exercise you are solving.
  def test_bookkeeping
    assert_equal 1, Gigasecond::VERSION
>>>>>>> 51ab776... initial upload from work
  end
end
