local Anagram = {}

function Anagram:new(word)
  self.word = word:lower()

  local chars = getChars(self.word)
  table.sort(chars)
  self.wordChars = chars
  return self
end

function Anagram:match(words)
  matches = {}

  for _, anagram in pairs(words) do
    if anagram:lower() ~= self.word and sameCharacters(getChars(anagram:lower()), self.wordChars) then
      table.insert(matches, anagram)
    end
  end

  return matches
end

function sameCharacters(anagramChars, wordChars)
  table.sort(anagramChars)

  for i=1, math.max(#anagramChars, #wordChars) do
    if anagramChars[i] ~= wordChars[i] then return false end
  end

  return true
end

function getChars(word)
  chars = {}
  for i = 1, #word do
    chars[i] = word:sub(i, i)
  end
  return chars
end

return Anagram
