local seconds = 0
x1 = 100
y1 = 100
x2 = 100
y2 = 200
x3 = 200
y3 = 200
x4 = 200
y4 = 100

love.draw = function()
  local square = {x1,y1,
x2,y2,
x3,y3,
x4,y4}
  
  love.graphics.polygon("fill", square)
  love.graphics.print(seconds, 10, 10)
end

local key_map = {
  w = function()
    y1 = y1 - 10
    y2 = y2 - 10
    y3 = y3 - 10
    y4 = y4 - 10
  end,
  a = function()
    x1 = x1 - 10
    x2 = x2 - 10
    x3 = x3 - 10
    x4 = x4 - 10
  end,
  s = function()
    y1 = y1 + 10
    y2 = y2 + 10
    y3 = y3 + 10
    y4 = y4 + 10
  end,
  d = function()
    x1 = x1 + 10
    x2 = x2 + 10
    x3 = x3 + 10
    x4 = x4 + 10
  end
}

love.keypressed = function(pressed_key)
  if key_map[pressed_key] then
    key_map[pressed_key]()
  end
end

love.update = function(dt)
  seconds = dt
  if dt == 0.1 then
    dt = 0
  end
end