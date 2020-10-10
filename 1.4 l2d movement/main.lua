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
  love.graphics.polygon("line", 50, 500, 400, 50, 700, 500)
end

-- 350 is center of x

-- 300 center of y
