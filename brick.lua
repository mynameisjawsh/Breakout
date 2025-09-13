Brick = {}

function Brick.new(x, y, width, height, health)

  local instance = {}
  setmetatable(instance, { __index = Brick })

  instance.x = x 
  instance.y = y 
  instance.width = width 
  instance.height = height 
  instance.health = health

  return instance

end


function Brick:load()

  self.brickWidth = 65
  self.brickHeight = 20
  self.paddingX, self.paddingY = 10, 10

end


function Brick:init(rows, cols)

  bricks = {}

  local startX, startY = 50, 50
  local brickHealth = 1

  for r = 0, rows - 1 do
    for c = 0, cols - 1 do

      local x = startX + (c * (self.brickWidth +
                               self.paddingX))
      local y = startY + (r * (self.brickHeight +
                               self.paddingY))

      local newBrick = Brick.new(x, y, self.brickWidth,
                                 self.brickHeight,
                                 self.brickHealth)
      table.insert(bricks, newBrick)

    end
  end

end


function Brick:update(dt)

  for i, brick in ipairs(bricks) do

    if checkCollision(brick, Ball) then

      table.remove(bricks, i)

    end

  end

end


function Brick:draw()

  for i, brick in ipairs(bricks) do

    love.graphics.setColor(1, 1, 1)

    love.graphics.rectangle("fill", brick.x, brick.y,
                            brick.width, brick.height)

  end

end
