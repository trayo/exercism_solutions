require 'minitest/autorun'
require "minitest/pride"
require_relative 'complement'

class ComplementTest < Minitest::Test
  def test_rna_complement_of_cytosine_is_guanine
    assert_equal 'G', Complement.of_dna('C')
  end

  def test_rna_complement_of_guanine_is_cytosine
    assert_equal 'C', Complement.of_dna('G')
  end

  def test_rna_complement_of_thymine_is_adenine
    assert_equal 'A', Complement.of_dna('T')
  end

  def test_rna_complement_of_adenine_is_uracil
    assert_equal 'U', Complement.of_dna('A')
  end

  def test_rna_complement
    assert_equal 'UGCACCAGAAUU', Complement.of_dna('ACGTGGTCTTAA')
  end

  def test_dna_complement_of_cytosine_is_guanine
    assert_equal 'G', Complement.of_rna('C')
  end

  def test_dna_complement_of_guanine_is_cytosine
    assert_equal 'C', Complement.of_rna('G')
  end

  def test_dna_complement_of_uracil_is_adenine
    assert_equal 'A', Complement.of_rna('U')
  end

  def test_dna_complement_of_adenine_is_thymine
    assert_equal 'T', Complement.of_rna('A')
  end

  def test_dna_complement
    assert_equal 'ACTTGGGCTGTAC', Complement.of_rna('UGAACCCGACAUG')
  end

  def test_dna_raises_argument_error
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
  end
end
