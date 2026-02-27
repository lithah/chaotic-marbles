f = {}

function f.PowerUpLogic()
  
if powerups.hitbox then
    pdPosX,pdPosY = paddle.hitbox2:getPosition()
end
if powerups.exist == true then
    pwPosX,pwPosY = powerups.hitbox:getPosition()


     if pwPosY >= 590 then
    powerups.hitbox:destroy()
    powerups.exist = false
     powerups.value = 0
end
    if pdPosX >= pwPosX - 40 and pdPosX <= pwPosX + 40 and pwPosY >= 455 then
      powerups.selection = math.random(1,2)
    powerups.hitbox:destroy()
    powerups.exist = false
     powerups.value = 0
end
if powerups.selection == 1 then -- penetrate throughout multiple blocks without rebound
powerups.melt = true
powerups.message = "Melt"
end
if powerups.selection == 2 then -- enlarge paddle temporarilly

paddle.generated = 0
powerups.enlarge = true
powerups.message = "Enlarge"
end



end

if powerups.value >= 10 and powerups.exist == false then
      sfx.win:play()
powerups.hitbox = world:newRectangleCollider(powerups.posX, powerups.posY,20,20)
powerups.exist = true
  powerups.hitbox:setCollisionClass("powerups")
  powerups.hitbox:setFixedRotation(true)
  powerups.hitbox:setType("kinematic")
  powerups.hitbox:setLinearVelocity(0,150)
  
end

end
return f