<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
>>>>>>> initial upload from work
require 'minitest/autorun'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_1
    assert_equal '1', Raindrops.convert(1)
  end

  def test_3
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Pling', Raindrops.convert(3)
  end

  def test_5
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plang', Raindrops.convert(5)
  end

  def test_7
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plong', Raindrops.convert(7)
  end

  def test_6
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Pling', Raindrops.convert(6)
  end

  def test_9
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Pling', Raindrops.convert(9)
  end

  def test_10
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plang', Raindrops.convert(10)
  end

  def test_14
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plong', Raindrops.convert(14)
  end

  def test_15
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'PlingPlang', Raindrops.convert(15)
  end

  def test_21
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'PlingPlong', Raindrops.convert(21)
  end

  def test_25
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plang', Raindrops.convert(25)
  end

  def test_35
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'PlangPlong', Raindrops.convert(35)
  end

  def test_49
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'Plong', Raindrops.convert(49)
  end

  def test_52
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal '52', Raindrops.convert(52)
  end

  def test_105
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'PlingPlangPlong', Raindrops.convert(105)
  end

  def test_12121
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal '12121', Raindrops.convert(12_121)
  end
end
