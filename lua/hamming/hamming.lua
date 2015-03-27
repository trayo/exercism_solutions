local Hamming = {}

function Hamming.compute(strand_A, strand_B)
  difference = 0
  shorter_strand = #strand_A < #strand_B and #strand_A or #strand_B

  for i = 1, shorter_strand do
    if strand_A:sub(i,i) ~= strand_B:sub(i,i) then
      difference = difference + 1
    end
  end

  return difference
end

return Hamming
