local Words = {}

function Words:new(phrase)
  self.words = {}
  self.phrase = phrase
  return self
end

function Words:count()
  for word in self.phrase:gmatch("%w+") do
    word = word:lower()

    if not self.words[word] then self.words[word] = 0 end

    self.words[word] = self.words[word] + 1
  end

  return self.words
end

return Words

