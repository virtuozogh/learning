function love.conf(c)
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

--State change
function state()
  math.randomseed(os.time())
  random = math.random(0 , 9)
  random2 = math.random(10 - random)
  x_degree = random * 1
  y_degree = random2 * 150
end

math.randomseed(os.time())
  random = math.random(0 , 9)
  random2 = math.random(10 - random)
  x_degree = random * 1
  y_degree = random2 * 1

function love.update(dt)
    if love.keyboard.isDown("w") and paddle.paddleY ~= 0 then
      paddle.paddleY = paddle.paddleY - addY
    end
    if love.keyboard.isDown("s") and paddle.paddleY ~= 500 then
      paddle.paddleY = paddle.paddleY + addY
    end
    if c.circleX >= 790 then
      -- opp and adj
      -- pointing into the hypotenuse
      -- we convert the new hypotenuse into the opposite
      x_degree = -math.sqrt(x_degree^2 + y_degree^2)
      c.circleX = c.circleX + x_degree
      c.circleY = c.circleY + y_degree
    elseif c.circleX < 0 then
      x_degree = math.sqrt(x_degree^2 + y_degree^2)
      c.circleX = c.circleX + x_degree
      c.circleY = c.circleY + y_degree
    elseif c.circleY < 0 then
      y_degree = math.sqrt(x_degree^2 + y_degree^2)
      c.circleX = c.circleX + x_degree
      c.circleY = c.circleY + y_degree
    elseif c.circleY >= 590 then
      y_degree = -math.sqrt(x_degree^2 + y_degree^2)
      c.circleX = c.circleX + x_degree
      c.circleY = c.circleY + y_degree
    else 
      c.circleX = c.circleX + x_degree
      c.circleY = c.circleY + y_degree
    end
    if not collision(paddle, c) then
      c.circleX = c.circleX + y_degree
    end
end

function love.draw()
  love.graphics.rectangle("fill", paddle.paddleX, paddle.paddleY, paddle.width, paddle.height)
  love.graphics.rectangle("fill", c.circleX, c.circleY, 10, 10)
end