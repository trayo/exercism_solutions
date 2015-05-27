local HelloWorld = {}

function HelloWorld.hello(input)
  if not input or input == "" then input = "world" end
  return "Hello, " .. input .. "!"
end

return HelloWorld
