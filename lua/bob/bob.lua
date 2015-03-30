local Bob = {}

function Bob.hey(saying)
  if string.match(saying, "?") then
    return "Sure"
  elseif saying == "" then
    return "Fine, be that way."
  elseif string.match(saying, "%u%u") then
    return "Whoa, chill out!"
  else
    return "Whatever"
  end
end

return Bob

