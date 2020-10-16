function love.conf(c)
  c.console = true
  c.window.width = 800
  c.window.height = 600
end 

function love.load() 
  paddle = {
    paddleX = 100,
    paddleY = 250,
    width = 20,
    height = 100
  }
  addX = 10
  addY = 10
  c = {
    circleX = 800 / 2,
    circleY = 600 / 2
  } 
end

function collision(a, b)
  local a_left = a.paddleX
  local a_right = a.paddleX + a.width 
  
  local b_left = b.circleX 
  local b_right = b.circleX + 10
  
  if a_right > b_left and
  a_left < b_right then
    return true
  else
    return false
  end
end

function love.update(dt)
    if love.keyboard.isDown("w") and paddle.paddleY ~= 0 then
      paddle.paddleY = paddle.paddleY - addY
    end
    if love.keyboard.isDown("s") and paddle.paddleY ~= 500 then
      paddle.paddleY = paddle.paddleY + addY
    end
    if not collision(paddle, c) then
      c.circleX = c.circleX - 200 * dt
    end
end

function love.draw()
  love.graphics.rectangle("fill", paddle.paddleX, paddle.paddleY, paddle.width, paddle.height)
  love.graphics.rectangle("fill", c.circleX, c.circleY, 10, 10)
end