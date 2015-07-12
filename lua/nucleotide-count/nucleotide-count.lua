local DNA = {}

function DNA:new(string)
  self.nucleotideCounts = { A = 0, T = 0, C = 0, G = 0 }

  for letter in string:gmatch(".") do
    self.nucleotideCounts[letter] = self.nucleotideCounts[letter] + 1
  end

  return self
end

function DNA:count(letter)
  if not letter:match("[ACGT]") then error("Invalid Nucleotide") end
  return self.nucleotideCounts[letter]
end

return DNA
