function love.load()
  circleX = 800 / 2
  circleY = 600 / 2
  addX = 10
  addY = -10
end

function love.update(dt)
  if love.keyboard.isDown("w") then
    circleY = circleY + addY
  elseif love.keyboard.isDown("a") then
    circleX = circleX - addX
  elseif love.keyboard.isDown("d") then
    circleX = circleX + addX
  elseif love.keyboard.isDown("s") then
    circleY = circleY - addY
  end
end

function love.draw()
  love.graphics.circle("fill", circleX, circleY, 10)
end
