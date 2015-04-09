local Hamming = {}

function Hamming.compute(strand_A, strand_B)
  difference = 0

  for i = 1, math.min(#strand_A, #strand_B) do
    if strand_A:sub(i, i) ~= strand_B:sub(i, i) then
      difference = difference + 1
    end
  end

  return difference
end

return Hamming
