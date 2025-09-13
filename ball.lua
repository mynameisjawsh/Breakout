Ball = {}

function Ball:load()

  self.x = Screen.width / 2
  self.y = Screen.height / 2
  self.width = 20
  self.height = 20
  self.speed = 200
  self.yVel = self.speed
  self.xVel = 0

end


function Ball:update(dt)

  self.y = self.y + self.yVel * dt 
  self.x = self.x + self.xVel * dt


  if checkCollision(self, Player) then

    self.yVel = -self.yVel

    local middleBall = self.x + self.width / 2
    local middlePlayer = Player.x + Player.width / 2
    local collisionPosition = middleBall - middlePlayer

    self.xVel = collisionPosition * 6

  end

  if checkWalls(self, Screen) then

    self.xVel = -self.xVel

  end

  if checkCeiling(self, Screen) then

    self.yVel = -self.yVel

  end

  if checkFloor(self, Screen) then

    self:load()

  end

end


function Ball:draw()

  love.graphics.setColor(1, 1, 1)

  love.graphics.rectangle("fill", self.x, self.y, self.width,  self.height)

end
