require 'minitest/autorun'
require "minitest/pride"
require_relative 'chain'

# rubocop:disable Metrics/MethodLength, Metrics/LineLength
class FoodChainTest < Minitest::Test
  attr_reader :song
  def song
    @song = ::FoodChainSong.new
  end

  def teardown
    @song = nil
  end

  def test_fly
    expected = "I know an old lady who swallowed a fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n"
    assert_equal expected, song.verse(1)
  end

  def test_spider
    expected = "I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die.\n"
    assert_equal expected, song.verse(2)
  end

  def test_bird
    expected = "I know an old lady who swallowed a bird.\n" \
      "How absurd to swallow a bird!\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die.\n"
    assert_equal expected, song.verse(3)
  end

  def test_cat
    expected = "I know an old lady who swallowed a cat.\n" \
      "Imagine that, to swallow a cat!\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. " \
      "Perhaps she'll die.\n"
    assert_equal expected, song.verse(4)
  end

  def test_dog
    expected = "I know an old lady who swallowed a dog.\n" \
      "What a hog, to swallow a dog!\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. " \
      "Perhaps she'll die.\n"
    assert_equal expected, song.verse(5)
  end

  def test_goat
    expected = "I know an old lady who swallowed a goat.\n" \
      "Just opened her throat and swallowed a goat!\n" \
      "She swallowed the goat to catch the dog.\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. " \
      "Perhaps she'll die.\n"
    assert_equal expected, song.verse(6)
  end

  def test_cow
    expected = "I know an old lady who swallowed a cow.\n" \
      "I don't know how she swallowed a cow!\n" \
      "She swallowed the cow to catch the goat.\n" \
      "She swallowed the goat to catch the dog.\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. " \
      "Perhaps she'll die.\n"
    assert_equal expected, song.verse(7)
  end

  def test_horse
    expected = "I know an old lady who swallowed a horse.\n" \
      "She's dead, of course!\n"
    assert_equal expected, song.verse(8)
  end

  def test_multiple_verses
    expected = ''
    expected << "I know an old lady who swallowed a fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    expected << "I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    expected << "I know an old lady who swallowed a bird.\n" \
      "How absurd to swallow a bird!\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    assert_equal expected, song.verses(1, 3)
  end

  def test_the_whole_song
    assert_equal song.verses(1, 8), song.sing
  end

  # def test_verse_raises_argument_error_for_zero
  #   assert_raises(ArgumentError){ song.verse(0) }
  # end

  # def test_verses_raises_argument_error_for_less_than_zero
  #   assert_raises(ArgumentError){ song.verse(-2, 5) }
  # end
end
