<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
require_relative 'complement'
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'rna_transcription'
>>>>>>> initial upload from work

class ComplementTest < Minitest::Test
  def test_rna_complement_of_cytosine_is_guanine
    assert_equal 'G', Complement.of_dna('C')
  end

  def test_rna_complement_of_guanine_is_cytosine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'C', Complement.of_dna('G')
  end

  def test_rna_complement_of_thymine_is_adenine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'A', Complement.of_dna('T')
  end

  def test_rna_complement_of_adenine_is_uracil
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'U', Complement.of_dna('A')
  end

  def test_rna_complement
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'UGCACCAGAAUU', Complement.of_dna('ACGTGGTCTTAA')
  end

  def test_dna_complement_of_cytosine_is_guanine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'G', Complement.of_rna('C')
  end

  def test_dna_complement_of_guanine_is_cytosine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'C', Complement.of_rna('G')
  end

  def test_dna_complement_of_uracil_is_adenine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'A', Complement.of_rna('U')
  end

  def test_dna_complement_of_adenine_is_thymine
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'T', Complement.of_rna('A')
  end

  def test_dna_complement
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    assert_equal 'ACTTGGGCTGTAC', Complement.of_rna('UGAACCCGACAUG')
  end

  def test_dna_raises_argument_error
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    assert_raises(ArgumentError){ Complement.of_dna('U') }
  end

  def test_rna_raises_argument_error
    assert_raises(ArgumentError){ Complement.of_rna('T') }
  end

  def test_dna_raises_argument_error_with_invalid_string
    assert_raises(ArgumentError){ Complement.of_dna('GCATFOOBAR') }
  end

  def test_rna_raises_argument_error_with_invalid_string
    assert_raises(ArgumentError){ Complement.of_rna('CGAUFOOBAR') }
  end

  def test_it_cant_call_valid_string
    assert_raises(NoMethodError){ Complement.raise_if_invalid_strand(/what/, "what") }
=======
    skip
    assert_raises(ArgumentError) { Complement.of_dna('U') }
  end

  def test_rna_raises_argument_error
    skip
    assert_raises(ArgumentError) { Complement.of_rna('T') }
  end

  def test_rna_raises_argument_error_on_completely_invalid_input
    skip
    assert_raises(ArgumentError) { Complement.of_rna('XXX') }
  end

  def tes_dna_raises_argument_error_on_completely_invalid_input
    skip
    assert_raises(ArgumentError) { Complement.of_dna('XXX') }
  end

  # This test is for the sake of people providing feedback, so they
  # know which version of the exercise you are solving.
  def test_bookkeeping
    skip
    assert_equal 1, Complement::VERSION
>>>>>>> initial upload from work
  end
end
