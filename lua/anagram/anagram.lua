local Anagram = {}

function Anagram.new(word)
  print(word)
  Chars = {}
  for i = 1, #word do
    Chars.i = word:sub(i, i)
  end

  for k,v in pairs (Chars) do
    print(k)
    print(v)
  end

  return Anagram
end

function Anagram.match(words)
  for i = 1, 2 do
    print(i)
    -- print(word[i])
  end

  matches = {}
  -- matches[1] = 'tan'

  return matches
end

return Anagram
