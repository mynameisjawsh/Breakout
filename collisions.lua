function checkWalls(a, b)

  if a.x < b.x or a.x + a.width > b.x + b.width then

    return true 

  else 

    return false

  end

end
