-- test run
local number = 0
love.draw = function()
  love.graphics.print("Hello world!", 400, 300)
  love.graphics.print(number, 400, 500)
  while number < 10 do
    number = number + 1
  end
end

-- geometry
love.draw = function()
  love.graphics.print("o", 400, 300)
  love.graphics.polygon("fill", 50, 500, 400, 50, 700, 500)
end

-- 350 is center of x

-- 300 center of y

-- rectangle
love.draw = function()
  local rectangle = {100, 100, 100, 200, 200, 200, 200, 100}
  love.graphics.polygon('line', rectangle)
end
-- bow tie
love.draw = function()
  local rectangle = {100, 100, 100, 200, 200, 100, 200, 200}
  love.graphics.polygon('line', rectangle)
end

-- 5 point shape
love.draw = function()
  local shape = {100, 100, 150, 200, 200, 200, 250, 100, 175, 50}
  love.graphics.polygon("fill", shape)
end

love.keypressed = function(pressed_key)
  love.draw = function()
    print("key was pressed", pressed_key)
    love.graphics.print(pressed_key, 400, 300)
  end
end

love.update = function(dt)
  print(dt)
end
-- 
local current_color = {1, 1, 1, 1}

love.draw = function()
  local square = {100, 100, 100, 200, 200, 200, 200, 100}

  -- Initialize the square with the default color (white)
  love.graphics.setColor(current_color)
  -- Draw the square
  love.graphics.polygon('fill', square)
end


love.keypressed = function(pressed_key)
  if pressed_key == 'b' then
    -- Blue
    current_color = {0, 0, 1, 0.5}
  elseif pressed_key == 'g' then
    -- Green
    current_color = {0, 1, 0, 1}
  elseif pressed_key == 'r' then
    -- Red
    current_color = {1, 0, 0, 1}
  elseif pressed_key == 'w' then
    -- White
    current_color = {1, 1, 1, 1}
  elseif pressed_key == "escape" then
    love.event.quit()
  end
end

local current_color = {1, 1, 1, 1}
local seconds = 0

love.draw = function()
  local square = {seconds * 10, 100, seconds * 10, 200, 200, 200, 200, 100}

  -- Print a counter clock
  local clock_display = 'Seconds: ' .. math.floor(seconds)
  love.graphics.print(clock_display, 0, 0, 0, 2, 2)

  -- Initialize the square with the default color (white)
  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)
end


love.keypressed = function(pressed_key)
  if pressed_key == 'b' then
    -- Blue
    current_color = {0, 0, 1, 1}
  elseif pressed_key == 'g' then
    -- Green
    current_color = {0, 1, 0, 1}
  elseif pressed_key == 'r' then
    -- Red
    current_color = {1, 0, 0, 1}
  elseif pressed_key == 'w' then
    -- White
    current_color = {1, 1, 1, 1}
  end
  if pressed_key == 'escape' then
    love.event.quit()
  end
end

love.update = function(dt)
  -- Add up all the delta time as we get it
  seconds = seconds + dt
end

