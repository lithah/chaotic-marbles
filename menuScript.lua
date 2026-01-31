w = {}
  ttl = 1
function w.menu(dt)
 

  if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 390 and mPosX <= 470 and mPosY >=450 and mPosY <= 550 then
menu.screen = 2
sfx.click:play()
  end
if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 740 and mPosX <=780 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 4
  menu.backDone = 0
  sfx.click:play()
end
if love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 740 and mPosX <=780 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 4
  menu.backDone = 0
  sfx.click:play()
end
  if love.mouse.isDown(1) and menu.screen == 4 and mPosX >= 30 and mPosX <=80 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 1
  menu.settingsDone = 0
  sfx.click:play()
end
 if menu.screen == 4 and button.backDone == 0 then -- menu script -------------------------------------
  button.backDone = 1
end
if menu.screen == 1 and button.settingsDone == 0 then
button.settingsDone = 1
end

if menu.screen == 2 and menu.created == 0 then
menu.created = 1
end

if love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 740 and mPosX <=780 and mPosY >= 480 and mPosY <= 510 then
menu.screen = 1
sfx.click:play()
end
if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 20 and mPosX <=60 and mPosY >= 540 and mPosY <= 580 and ttl <= 0 then
love.event.quit()
end

if levelUnlocked >= 1 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 80 and mPosX <=190 and mPosY >=30 and mPosY <= 90  then
  menu.screen = 3
gen.levelGen(1)
sfx.click:play()

end
if levelUnlocked >= 2 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 210 and mPosX <=320 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(2)
sfx.click:play()
end
if levelUnlocked >= 3 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 340 and mPosX <=440 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(3)
sfx.click:play()
end
if destroyer.allowdisable == 1 then -- escape key script ---------------------------------------------
    menu.screen = 2
    menu.created = 0
    blockDestroyed = 0
    sfx.select:play()
    score = 0
    if ball.created == 1 then
    ball.hitbox:destroy()
    setter.hitbox:destroy()
    setter.isDone = false
    end
    igclicked = 0
  tba = 1.3
  ball.created = 0
  clicked = false
end

if creatorTools.status == true and menu.screen == 3 then -- creator tools ----------------------------------
lvlDetect = 1000
level = 1000
love.graphics.draw(block.sprite,mPosX, mPosY,0,1,1)
if love.keyboard.isDown("lshift") and creatorTools.regularizer >= 0 then -- levelbuilding script ------------------------------
 creatorTools.regularizer = creatorTools.regularizer - dt
  block.hitboxup = world:newRectangleCollider(mPosX, mPosY-5,60,10)
  block.hitboxup:setCollisionClass("blockup")
block.hitboxup:setType("static")
  block.hitboxdown = world:newRectangleCollider(mPosX, mPosY+5,60,10)
  block.hitboxdown:setCollisionClass("blockdown")
  block.hitboxdown:setType("static")
  print ("PosX: ".. mPosX .. " PosY: ".. mPosY)
  end
  if creatorTools.regularizer <= 0 and not love.keyboard.isDown("lshift") then
    creatorTools.regularizer = 0.002
end
end

if menu.screen == 1 then
 ttl = ttl - dt
end
if menu.screen == 2 or menu.screen == 3 or menu.screen == 4 then
  ttl = 1
end
if ttl <= 0 then
  ttl = 0
end
if menu.screen == 3 and tba >= 1 then
tba = tba-dt
end
if tba <= 1 then
  tba = 0
end

end
return w