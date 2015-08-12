local Robot = {}
Robot.__index = Robot

function Robot:new()
  local robot = {}
  setmetatable(robot, Robot)
  robot.name = generate_name()
  return robot
end

function Robot:reset()
  self.name = generate_name()
end

function generate_name()
  return letter()..letter()..number()..number()..number()
end

function letter()
  -- 65 is A, 90 is Z in ascii
  return string.char(math.random(65, 90))
end

function number()
  return math.random(0,9)
end

return Robot

