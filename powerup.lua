f = {}

function f.PowerUpLogic()

if powerups.exist == true then
    pwPosX,pwPosY = powerups.hitbox:getPosition()
        if powerups.hitbox:enter("paddle") then
    powerups.hitbox:destroy()
end
     if pwPosY >= 590 then
    powerups.hitbox:destroy()
    powerups.exist = false
     powerups.value = 0
end
end
if powerups.value >= 10 and powerups.exist == false then
      sfx.win:play()
  print("powerup")
powerups.hitbox = world:newRectangleCollider(powerups.posX, powerups.posY,20,20)
powerups.exist = true
  powerups.hitbox:setCollisionClass("powerup")
  powerups.hitbox:setFixedRotation(true)
  powerups.hitbox:setType("kinematic")
  powerups.hitbox:setLinearVelocity(0,150)
  if powerups.hitbox:enter("paddle") then
print("poggers")
  end
end



end
return f