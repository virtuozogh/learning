function love.conf(c)
  c.console = true
  c.window.width = 800
  c.window.height = 600
end 

function love.load() 
  paddleX = 100
  paddleY = 250
  addX = 10
  addY = 10
  
  circleX = 800 / 2
  circleY = 600 / 2
end

function love.update(dt)
    if love.keyboard.isDown("w") and paddleY ~= 0 then
      paddleY = paddleY - addY
    end
    if love.keyboard.isDown("s") and paddleY ~= 500 then
      paddleY = paddleY + addY
    end
    
    if circleX ~= 790 then
      circleX = circleX + 10
    elseif circleX ~= 0 then
      circleX = circleX - 10
    end
end

function love.draw()
  love.graphics.rectangle("fill", paddleX, paddleY, 20, 100)
  love.graphics.circle("fill", circleX, circleY, 10)
end