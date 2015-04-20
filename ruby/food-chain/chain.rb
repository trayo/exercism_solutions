class FoodChainSong
  VERSES = [
    ["fly",    "I don't know why she swallowed the fly. Perhaps she'll die."],
    ["spider", "It wriggled and jiggled and tickled inside her."],
    ["bird",   "How absurd to swallow a bird!"],
    ["cat",    "Imagine that, to swallow a cat!"],
    ["dog",    "What a hog, to swallow a dog!"],
    ["goat",   "Just opened her throat and swallowed a goat!"],
    ["cow",    "I don't know how she swallowed a cow!"],
    ["horse",  "She's dead, of course!"]
  ]

  def verse(number)
    song = ""
    song << "I know an old lady who swallowed a #{VERSES[number-1].first}.\n#{VERSES[number-1].last}\n"

    return song if number >= VERSES.length || number == 1

    (number-1).step(1, -1) do |i|
      if i == 2
        song << "She swallowed the #{VERSES[i].first} to catch the #{spider}.\n"
      else
        song << "She swallowed the #{VERSES[i].first} to catch the #{VERSES[i-1].first}.\n"
      end
    end

    song << "#{VERSES[0].last}\n"
    song
  end

  def verses(lower, upper)
    (lower..upper).reduce("") do |song, i|
      song << "#{verse(i)}\n"
    end
  end

  def sing
    verses(1, 8)
  end

  private

  def spider
    "spider that wriggled and jiggled and tickled inside her"
  end
end
