Player = {}

function Player:load()

  self.x = Screen.width / 2
  self.y = Screen.height - 50
  self.width = 100
  self.height = 20

end


function Player:update(dt)

  local mouseX, mouseY = love.mouse.getPosition()

  self.x = mouseX - (self.width / 2)


  if checkWalls(self, Screen) then

    if self.x < Screen.x then

      self.x = Screen.x

    elseif self.x + self.width > Screen.width then

      self.x = Screen.width - self.width

    end

  end

end


function Player:draw()

  love.graphics.setColor(1, 1, 1)

  love.graphics.rectangle("fill", self.x, self.y, self.width,  self.height)

end
