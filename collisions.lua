function checkWalls(a, b)

  if a.x < b.x or a.x + a.width > b.x + b.width then

    return true 

  else 

    return false

  end

end


function checkCeiling(a, b)

  if a.y < b.y then

    return true

  else

    return false

  end

end


function checkFloor(a, b)

  if a.y > b.y + b.height then

    return true

  else

    return false

  end

end


function checkCollision(a, b)

  if a.x + a.width > b.x and a.x < b.x + b.width and a.y +    a.height > b.y and a.y < b.y + b.height then

    return true

  else

    return false

  end

end
