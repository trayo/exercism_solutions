local RNA = { C = "G", G = "C", A = "U", T = "A" }

function to_rna(string)
  local new_string = ""
  for letter in string:gmatch(".") do new_string = new_string .. RNA[letter] end
  return new_string
end

return to_rna
