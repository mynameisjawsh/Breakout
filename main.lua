require("collisions")

require("player")
require("ball")
require("brick")

Screen = {}
Screen.x = 0
Screen.y = 0
Screen.width = love.graphics.getWidth()
Screen.height = love.graphics.getHeight()

local showCursor = false

function love.load()

  love.mouse.setVisible(showCursor)

  Player:load()
  Ball:load()
  Brick:load()

  Brick:init(8, 16)

end


function love.update(dt)

  Player:update(dt)
  Ball:update(dt)
  Brick:update(dt)

end


function love.draw()

  Player:draw()
  Ball:draw()
  Brick:draw()

end


function love.keypressed(key)

  if key == "escape" then 

    love.event.quit()

  end

end
