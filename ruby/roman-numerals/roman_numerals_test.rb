<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
require_relative 'roman'

class RomanTest < Minitest::Test

=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'roman_numerals'

class RomanTest < Minitest::Test
>>>>>>> initial upload from work
  def test_1
    assert_equal 'I', 1.to_roman
  end

  def test_2
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'II', 2.to_roman
  end

  def test_3
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'III', 3.to_roman
  end

  def test_4
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'IV', 4.to_roman
  end

  def test_5
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'V', 5.to_roman
  end

  def test_6
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    assert_equal 'VI', 6.to_roman
  end

  def test_8
    assert_equal 'VIII', 8.to_roman
  end

  def test_9
    assert_equal 'IX', 9.to_roman
  end

  def test_10
    assert_equal 'X', 10.to_roman
  end

  def test_11
    assert_equal 'XI', 11.to_roman
  end

  def test_15
    assert_equal 'XV', 15.to_roman
  end

  def test_16
    assert_equal 'XVI', 16.to_roman
  end

  def test_19
    assert_equal 'XIX', 19.to_roman
  end

  def test_20
    assert_equal 'XX', 20.to_roman
  end

  def test_27
    assert_equal 'XXVII', 27.to_roman
  end

  def test_36
    assert_equal 'XXXVI', 36.to_roman
  end

  def test_48
=======
    skip
    assert_equal 'VI', 6.to_roman
  end

  def test_9
    skip
    assert_equal 'IX', 9.to_roman
  end

  def test_27
    skip
    assert_equal 'XXVII', 27.to_roman
  end

  def test_48
    skip
>>>>>>> initial upload from work
    assert_equal 'XLVIII', 48.to_roman
  end

  def test_59
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'LIX', 59.to_roman
  end

  def test_93
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'XCIII', 93.to_roman
  end

  def test_141
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'CXLI', 141.to_roman
  end

  def test_163
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'CLXIII', 163.to_roman
  end

  def test_402
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'CDII', 402.to_roman
  end

  def test_575
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'DLXXV', 575.to_roman
  end

  def test_911
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'CMXI', 911.to_roman
  end

  def test_1024
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'MXXIV', 1024.to_roman
  end

  def test_3000
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'MMM', 3000.to_roman
  end
end
