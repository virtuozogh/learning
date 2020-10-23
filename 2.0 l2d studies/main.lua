absX = 1280/2
absY = 720/2

require "ball"
require "draw"

local world = love.physics.newWorld(0, 0)

local test = {}
test.body = love.physics.newBody(world, 200, 200, 'dynamic')
test.body.setMass(test.body, 32)
test.shape = love.physics.newPolygonShape(0,0,0,20,20,20,20,0)
test.fixture = love.physics.newFixture(test.body, test.shape)

function love.load()
end

function love.update(dt)
  world:update(dt)
end

function love.draw()
  love.graphics.rectangle("fill", 0, 1, 1280, 10)
  love.graphics.rectangle("fill", 0, 710, 1280, 10)
  love.graphics.rectangle("line", test.body:getWorldPoints(test.shape:getPoints()))
  drawBall() 
end


