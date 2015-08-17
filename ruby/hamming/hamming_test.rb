<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
begin
  require_relative 'hamming'
rescue LoadError => e
  puts "\n\n#{e.backtrace.first} #{e.message}"
  puts DATA.read
  exit 1
end

class HammingTest < Minitest::Test

=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'

# Test data version:
# 11a7e6f Merge pull request #92 from kotp/116_Verbal_Word_Problem

class HammingTest < Minitest::Test
>>>>>>> initial upload from work
  def test_identical_strands
    assert_equal 0, Hamming.compute('A', 'A')
  end

  def test_long_identical_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 0, Hamming.compute('GGACTGA', 'GGACTGA')
  end

  def test_complete_distance_in_single_nucleotide_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 1, Hamming.compute('A', 'G')
  end

  def test_complete_distance_in_small_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 2, Hamming.compute('AG', 'CT')
  end

  def test_small_distance_in_small_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 1, Hamming.compute('AT', 'CT')
  end

  def test_small_distance
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 1, Hamming.compute('GGACG', 'GGTCG')
  end

  def test_small_distance_in_long_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 2, Hamming.compute('ACCAGGG', 'ACTATGG')
  end

  def test_non_unique_character_in_first_strand
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 1, Hamming.compute('AGA', 'AGG')
  end

  def test_non_unique_character_in_second_strand
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 1, Hamming.compute('AGG', 'AGA')
  end

  def test_large_distance
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 4, Hamming.compute('GATACA', 'GCATAA')
  end

  def test_large_distance_in_off_by_one_strand
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 9, Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')
  end

  def test_empty_strands
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 0, Hamming.compute('', '')
  end

  def test_disallow_first_strand_longer
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    assert_raises(ArgumentError){ Hamming.compute('AATG', 'AAA') }
  end

  def test_disallow_second_strand_longer
    assert_raises(ArgumentError){ Hamming.compute('ATA', 'AGTG') }
  end
end

__END__

*****************************************************
You got an error, which is exactly as it should be.
This is the first step in the Test-Driven Development
(TDD) process.

The most important part of the error is

      cannot load such file

It's looking for a file named hamming.rb that doesn't
exist yet.

To fix the error, create an empty file named hamming.rb
in the same directory as the hamming_test.rb file.

Then run the test again.

For more guidance as you work on this exercise, see
GETTING_STARTED.md.
*****************************************************
=======
    skip
    assert_raises(ArgumentError) { Hamming.compute('AATG', 'AAA') }
  end

  def test_disallow_second_strand_longer
    skip
    assert_raises(ArgumentError) { Hamming.compute('ATA', 'AGTG') }
  end

  # This test is for the sake of people providing feedback, so they
  # know which version of the exercise you are solving.
  def test_bookkeeping
    skip
    assert_equal 1, Hamming::VERSION
  end
end
>>>>>>> initial upload from work
