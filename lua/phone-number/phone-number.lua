local PhoneNumber = {}

function PhoneNumber:new(phone_number)
  phone_number = phone_number:gsub("[%s()-.]", "")

  if invalid_number(phone_number) then
    phone_number = "0000000000"
  elseif has_country_code(phone_number) then
    phone_number = phone_number:sub(2)
  end

  self.number = phone_number
  return self
end

function PhoneNumber:areaCode()
  return self.number:sub(1,3)
end

function invalid_number(number)
  return #number <= 9 or #number >= 11 and number:sub(1,1) ~= "1"
end

function has_country_code(number)
  return number:sub(1,1) == "1" and #number == 11
end

setmetatable(PhoneNumber,
  {
    __tostring = function (t)
      n = t.number
      return string.format("(%s) %s-%s", n:sub(1,3), n:sub(4,6), n:sub(7))
    end
  }
)

return PhoneNumber
