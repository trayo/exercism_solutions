<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
require_relative 'acronym'

class AcronymTest < Minitest::Test
  def test_png
    assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
  end

  def test_ruby_on_rails
    assert_equal 'ROR', Acronym.abbreviate('Ruby on Rails')
  end

  def test_html
    assert_equal 'HTML', Acronym.abbreviate('HyperText Markup Language')
  end

  def test_fifo
    assert_equal 'FIFO', Acronym.abbreviate('First In, First Out')
  end

  def test_php
    assert_equal 'PHP', Acronym.abbreviate('PHP: Hypertext Preprocessor')
  end

  def test_cmos
    assert_equal 'CMOS', Acronym.abbreviate('Complementary metal-oxide semiconductor')
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'acronym'

class AcronymTest < Minitest::Test
  ACRONYM_PAIRS =
    {
      'Portable Network Graphics' => 'PNG',
      'Ruby on Rails' => 'ROR',
      'HyperText Markup Language' => 'HTML',
      'First In, First Out' => 'FIFO',
      'PHP: Hypertext Preprocessor' => 'PHP',
      'Complementary metal-oxide semiconductor' => 'CMOS',
    }

  def test_acronyms
    ACRONYM_PAIRS.each do |given, expected|
      assert_equal expected, Acronym.abbreviate(given), <<-MSG
        The acronym of '#{given}' should be '#{expected}'.
      MSG
    end
    gem 'minitest', '>= 5.0.0'
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    assert_equal 1, Acronym::VERSION
>>>>>>> initial upload from work
  end
end
