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
end

love.keypressed = function(pressed_key)
  if pressed_key == "w" then
    y1 = y1 - 10
    y2 = y2 - 10
    y3 = y3 - 10
    y4 = y4 - 10
  end
end

love.update = function(dt)
  seconds = seconds + dt
end