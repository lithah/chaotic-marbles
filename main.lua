    anim8 = require "lib/anim8"
    wf = require "lib/windfield"
    bouncer = require "ballBounce"
    gen = require "levelGen"
    destroy = require "blockDestroyer"
    UI = require "menuScript"
    UIdraw = require "menuDraw"
    blockcolocator = require "drawingLvl"
    bufflogic = require "powerup"

      math.randomseed(os.time())

function love.load()
      world = wf.newWorld(100,100, true)
    world:addCollisionClass("ball")
    world:addCollisionClass("paddleBorder", {ignores = {"ball"}})
    world:addCollisionClass("button", {ignores = {"ball"}})
    world:addCollisionClass("setter", {ignores = {"ball"}})
    world:addCollisionClass("walltop")
    world:addCollisionClass("wallsideA")
    world:addCollisionClass("wallsideB")
    world:addCollisionClass("blockup")
    world:addCollisionClass("blockdown")
    world:addCollisionClass("paddle")
    world:addCollisionClass("destroyer", {ignores = {"ball","paddle"}})
    world:addCollisionClass("powerups", {ignores = {"ball"}})

love.graphics.setDefaultFilter("nearest", "nearest") 
 
music = {}
music.selection = math.random(1,2)

menu = {}
menu.screen = 1
  menu.sprite1 = love.graphics.newImage('images/menu1.png')
 menu.sprite1:setFilter("nearest","nearest")
menu.sprite2 = love.graphics.newImage('images/menu2.png')
 menu.sprite2:setFilter("nearest","nearest")
 menu.settings = love.graphics.newImage('images/smenu.png')
 menu.settings:setFilter("nearest","nearest")

button = {}

music.one = love.audio.newSource('music/Megalopolis_Relaxing_Teknoaxe.mp3', "stream")
music.two = love.audio.newSource('music/Alexvnder - Underwater.mp3', "stream")
if music.selection == 1 then
music.one:play()
elseif music.selection == 2 then
  music.two:play()
end

border = {}
border.hitboxup = world:newRectangleCollider(0,-10,800,20)
 border.hitboxdown = world:newRectangleCollider(0, 600, 800,10)
 border.hitboxleft = world:newRectangleCollider(-10, 0, 10,800)
 border.hitboxright = world:newRectangleCollider(800, 0, 10,800)



 border.hitboxup:setType("static")
   border.hitboxup:setCollisionClass("walltop")
 border.hitboxdown:setType("static")
 border.hitboxleft:setType("static")
   border.hitboxleft:setCollisionClass("wallsideA")
 border.hitboxright:setType("static")
   border.hitboxright:setCollisionClass("wallsideB")

   text = {}
text.default = love.graphics.newFont("fonts/PixelifySans.ttf",30)
love.graphics.setFont(text.default) 

ball = {}
 ball.created = 0
 ball.sprite = love.graphics.newImage('images/ball.png')
 ball.posX = 150
 ball.posY = 150
  





setter = {}
setter.isDone = false
setter.sprite = ball.sprite

block = {}
clicked = false

bg = {}
bg.one = love.graphics.newImage('images/bg1.png')
bg.two = love.graphics.newImage('images/bg2.png')
  bg.selection = math.random(1,2)


block.created = false

paddle = {}
paddle.generated = 0
 paddle.sprite = love.graphics.newImage('images/paddle.png')
 paddle.enlargeSprite = love.graphics.newImage('images/enlarge.png')


sfx = {}
sfx.select = love.audio.newSource('sounds/select.wav', "static")
sfx.dead = love.audio.newSource('sounds/dead.wav', "static")
sfx.paddlehit = love.audio.newSource('sounds/paddleHit.mp3', "static")
sfx.click = love.audio.newSource('sounds/click.wav', "static")
sfx.win = love.audio.newSource('sounds/levelWon.wav', "static")
sfx.melt = love.audio.newSource('sounds/melt.wav', "static")
sfx.expand = love.audio.newSource('sounds/expand.wav', "static")
sfx.contract = love.audio.newSource('sounds/contract.wav', "static")

powerups = {}
powerups.chance = 0

speed = {}
speed = 100
stage = {}
stage.ammount = 35

lives = 3
bounce = 0 -- 0 down, 1 up

MovementR = 1
MovementL = 0

blockDestroyed = 0
score = 0
tba = 1.3 -- Time before Action; made to prevent the game from autostarting when selected; its 1:48; and i
-- hope to have this done before 2:30am (status:i don't remember; but im pretty sure it wasn't done lol)
acb = 0 -- After collision bounce; to prevent the ball from penetrating the stucture in every hit
-- to use it; detect when too much blocks has been broken without colliding with the top or the sides
-- this has been done yet, im way to lazy to delete this, and it was 2:18 AM

menu.created = 0
block.selection = math.random(1,4)
igclicked = 0
isPaused = false
paddle.moveable = "mouse"
pdp = false
pdpa = false
pdpb = false
button.settingsDone = 0
button.backDone = 0
button.back = love.graphics.newImage('images/backbutton.png')
button.play = love.graphics.newImage('images/playbutton.png')

settings = {}
settings.sprite = love.graphics.newImage('images/settings.png')
pmstatus = 0
pmtimer = .01
blockEscape = 0
destroyer = {}
destroyer.created = 0
levelUnlocked = 1
creatorTools = {}
creatorTools.status = false
creatorTools.msg = "false"
creatorTools.regularizer = 0.02
ctu = .002 -- Creator tools unlock; prevents spamming of the key; a workaround used all round this 
--game because i haven't figured another way to do it lol.
msd = .002 -- Music and Sound Definer; prevents spamming of the key; a workaround used all round this 
--game because i haven't figured another way to do it lol.
mim = false --Music is muted
powerups.value = 0
powerups.counter = 0
powerups.exist = false
powerups.selection = 0
powerups.sprite = love.graphics.newImage('images/powerups.png')
powerups.melt = false
powerups.enlarge = false
pwm = 3 -- powerup Melt's duration
pwe = 10 -- powerup Enlarge's duration
end






function love.update(dt) ----------------------------------------------------------------------------
print(pwe)
if paddle.moveable == "keyboard" and paddle.hitbox2 and menu.screen == 3 then
pddtPosX,pddtPosY = paddle.hitbox2:getPosition()
love.mouse.setPosition(pddtPosX,pddtPosY)
end

if powerups.melt == true then
pwm = pwm - dt
end
if pwm <= 0 then
  pwm = 0
  powerups.melt = false
  powerups.selection = 0
    pwm = 3
end


if powerups.enlarge == true and pwe == 5 then
  sfx.expand:play()
end
if powerups.enlarge == true then
pwe = pwe - dt
end
if pwe <= 0 then
  sfx.contract:play()
  paddle.generated = 0
  pwe = 0
  powerups.enlarge = false
  powerups.selection = 0
    pwe = 10
    
end
  

bufflogic.PowerUpLogic()

  if love.keyboard.isDown("m") and msd >= 0 and mim == true then
  sfx.select:setVolume(0)
sfx.dead:setVolume(0)
sfx.paddlehit:setVolume(0)
sfx.click:setVolume(0)
sfx.win:setVolume(0)
music.one:setVolume(0)
music.two:setVolume(0)
msd = msd - dt
mim = false
end
 if love.keyboard.isDown("m") and msd >= 0 and mim == false then
  sfx.select:setVolume(1)
sfx.dead:setVolume(1)
sfx.paddlehit:setVolume(1)
sfx.click:setVolume(1)
sfx.win:setVolume(1)
music.one:setVolume(1)
music.two:setVolume(1)
msd = msd - dt
mim = true
 end
if msd <= 0 and not love.keyboard.isDown("m") then
msd = .002
end

  if not music.one:isPlaying() then
music.two:play()
  end
  if not music.two:isPlaying() then
music.one:play()
  end

  if destroyer.created == 0 and love.keyboard.isDown("escape") then
 destroyer.hitbox = world:newRectangleCollider(10000, 10000,400,300)
  destroyer.hitbox:setCollisionClass("destroyer")
  destroyer.hitbox:setFixedRotation(true)
destroyer.created = 1
end
  if blockTotal and blockDestroyed then
destroy.blockDestroyer()
  end
if destroyer.created == 1 then
destroyer.hitbox:setPosition(400,300)
end
if not love.keyboard.isDown("escape") and destroyer.created == 1 then
  destroyer.hitbox:destroy()
  destroyer.created = 0
  destroyer.allowdisable = 1
end

UI.menu(dt)
if menu.screen == 4 then
  
if love.keyboard.isDown("lshift") and ctu == 0.02 and creatorTools.status == false then
creatorTools.status = true
creatorTools.msg = "true"
sfx.select:play()
ctu = ctu - dt
end

if love.keyboard.isDown("lshift") and ctu == 0.02 and creatorTools.status == true then
creatorTools.status = false
creatorTools.msg = "false"
sfx.select:play()
ctu = ctu - dt
end
if ctu <= 1 and not love.keyboard.isDown("lshift") then
  ctu = 0.02
end

  if pmtimer <= .01 and pmtimer >=0 then
   if love.keyboard.isDown("1") and pmstatus == 0  then
     paddle.moveable = "keyboard"
       pmtimer = pmtimer-dt
     pmstatus = 1
     sfx.select:play()

    elseif love.keyboard.isDown("1") and pmstatus == 1 then
  paddle.moveable = "mouse"
  pmstatus = 0
    pmtimer = pmtimer-dt
     sfx.select:play()
    end
    end
        if pmtimer <=0 and not love.keyboard.isDown("1") then
pmtimer = 0.01
    end

  end
        bounceRNG = math.random(60,120)
mPosX, mPosY = love.mouse.getPosition()
function BlockColor()
block.selection = math.random(1,4)
end

if block.selection == 1 then 
block.sprite = love.graphics.newImage('images/block1.png')
elseif block.selection == 2 then 
block.sprite = love.graphics.newImage('images/block2.png')
elseif block.selection == 3 then 
block.sprite = love.graphics.newImage('images/block3.png')
elseif block.selection == 4 then 
block.sprite = love.graphics.newImage('images/block4.png')
end
if menu.screen == 3 then

if paddle.generated == 0 and powerups.enlarge == false then
    if paddle.hitbox1 then
    paddle.hitbox1:destroy()
paddle.hitbox2:destroy()
paddle.hitbox3:destroy()
  end

paddle.hitbox1 = world:newRectangleCollider(mPosX-30,410+60, 20,20)
paddle.hitbox2 = world:newRectangleCollider(mPosX,410+60, 40,20)
paddle.hitbox3 = world:newRectangleCollider(mPosX+30,410+60, 20,20)

  paddle.hitbox1:setType("kinematic")
paddle.hitbox2:setType("kinematic")
paddle.hitbox3:setType("kinematic")

  paddle.hitbox1:setCollisionClass("paddle")
paddle.hitbox2:setCollisionClass("paddle")
paddle.hitbox3:setCollisionClass("paddle")

paddle.hitbox1:setFixedRotation(true)
paddle.hitbox2:setFixedRotation(true)
paddle.hitbox3:setFixedRotation(true)
    if paddle.moveable == "keyboard" then
    pdp = false
  end

paddle.generated = 1
end
if paddle.generated == 0 and powerups.enlarge == true then
    if paddle.hitbox1 then
    paddle.hitbox1:destroy()
paddle.hitbox2:destroy()
paddle.hitbox3:destroy()
  end

paddle.hitbox1 = world:newRectangleCollider(mPosX-30,410+60, 40,20)
paddle.hitbox2 = world:newRectangleCollider(mPosX,410+60, 60,20)
paddle.hitbox3 = world:newRectangleCollider(mPosX+30,410+60, 40,20)

  paddle.hitbox1:setType("kinematic")
paddle.hitbox2:setType("kinematic")
paddle.hitbox3:setType("kinematic")

  paddle.hitbox1:setCollisionClass("paddle")
paddle.hitbox2:setCollisionClass("paddle")
paddle.hitbox3:setCollisionClass("paddle")

paddle.hitbox1:setFixedRotation(true)
paddle.hitbox2:setFixedRotation(true)
paddle.hitbox3:setFixedRotation(true)

    if paddle.moveable == "keyboard" then
    pdp = false
  end

paddle.generated = 1
end
if clicked == false and setter.isDone == false then
    setter.hitbox = world:newRectangleCollider(mPosX, 455, 10,10)
    setter.hitbox:setCollisionClass("setter")
    setter.hitbox:setType("kinematic")
setter.isDone = true
end
if ball.created == 0 and tba == 0 and igclicked == 2 then
    if clicked == true then
      sPosX, sPosY = setter.hitbox:getPosition()
    ball.hitbox = world:newCircleCollider(sPosX, sPosY, 5)
ball.hitbox:setCollisionClass("ball")
vx,vy = ball.hitbox:getLinearVelocity()
 ball.created = 1
end 

end
if isPaused == false then
  if paddle.moveable == "mouse" then
paddle.hitbox1:setPosition(mPosX-30,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+30,410+60)

  end
 if paddle.moveable == "keyboard" then
  if pdp == false then
  paddle.hitbox1:setPosition(mPosX-30,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+30,410+60)
pdp = true
  end
if love.keyboard.isDown("a") then
paddle.hitbox1:setLinearVelocity(-400,0)
paddle.hitbox2:setLinearVelocity(-400,0)
paddle.hitbox3:setLinearVelocity(-400,0)
setter.hitbox:setLinearVelocity(-400,0)
end
if love.keyboard.isDown("d") then
paddle.hitbox1:setLinearVelocity(400,0)
paddle.hitbox2:setLinearVelocity(400,0)
paddle.hitbox3:setLinearVelocity(400,0)
setter.hitbox:setLinearVelocity(400,0)


end
if not love.keyboard.isDown("a") and not love.keyboard.isDown("d") or love.keyboard.isDown("a") and love.keyboard.isDown("d") then
paddle.hitbox1:setLinearVelocity(0,0)
paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end

paddle.posX, paddle.posY = paddle.hitbox2:getPosition()

if paddle.posX <= 0 and not love.keyboard.isDown("d") then
  paddle.hitbox1:setLinearVelocity(0,0)
  paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end

if paddle.posX >= 800 and not love.keyboard.isDown("a") then
  paddle.hitbox1:setLinearVelocity(0,0)
  paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end


end
    if setter.hitbox:exit("powerups") then
print("poggers")
  end

  if paddle.moveable == "mouse" then
setter.hitbox:setPosition(mPosX,460)
  end
  if paddle.moveable == "keyboard" then
 if pdpa == false then
  setter.hitbox:setPosition(mPosX,460)
  pdpa = true
 end
end
end

if love.keyboard.isDown("y") then
  score = score + 100
end

if border.hitboxdown:enter("ball") then
        lives = lives - 1
          ball.hitbox:destroy()
          sfx.dead:play()
  tba = 1.3
  ball.created = 0
  clicked = false
  igclicked = 0
    end


    if lives == 0 then --death script ---------------------------------------------------------------
         menu.screen = 2
    menu.created = 0
    blockDestroyed = 0
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
  lives = 3
    end

if blockDestroyed == blockTotal and lvlDetect == 1 then
  ball.hitbox:destroy()
  blockDestroyed = 0
  sfx.win:play()
  tba = 1.3
  igclicked = 0
  ball.created = 0
  clicked = false
  lvlDetect = 2
  gen.levelGen(2)
  BlockColor()
  levelUnlocked = levelUnlocked + 1
end

if blockDestroyed == blockTotal and lvlDetect == 2 then
  ball.hitbox:destroy()
  blockDestroyed = 0
  sfx.win:play()
  tba = 1.3
  ball.created = 0
  clicked = false
  igclicked = 0
  lvlDetect = 3
  gen.levelGen(3)
  BlockColor()
    levelUnlocked = levelUnlocked + 1
end

if ball.created == 1 then
ballX,ballY = ball.hitbox:getPosition()
bouncer.ballBounce()
end
vx = 150
vy = 150


if clicked == false and love.keyboard.isDown("space") and igclicked <= 2 then
    clicked = true

end
if love.keyboard.isDown("space") and tba == 0 then
    igclicked = igclicked + 1
    
end
if menu.screen == 3 then
pPosX,pPosY = paddle.hitbox2:getPosition()
    msgbg = msgbg - dt
end


world:update(dt)

end



end
function love.draw() -------------------------------------------------------------------------------
  
  UIdraw.menuDraw()   
  if setter.isDone == true and igclicked <= 2 and menu.screen == 3 then
love.graphics.draw(setter.sprite,pPosX,450,0,.45,.45,15,10)
end
blockcolocator.BlockDefinition()
  
if paddle.moveable == "mouse" and menu.screen == 3 then
  if powerups.enlarge == false then
 love.graphics.draw(paddle.sprite,mPosX-40,460,0,1,1)
elseif powerups.enlarge == true then
 love.graphics.draw(paddle.enlargeSprite,mPosX-50,460,0,1,1)
end

elseif paddle.moveable == "keyboard" and menu.screen == 3 then
if pdpb == false then
 if powerups.enlarge == false then
 love.graphics.draw(paddle.sprite,mPosX-40,460,0,1,1)
 end
if powerups.enlarge == true then
 love.graphics.draw(paddle.enlargeSprite,mPosX-50,460,0,1,1)
end
 pdpb = true 
end
if menu.screen == 3 and powerups.enlarge == false then
love.graphics.draw(paddle.sprite,pPosX-40,460,0,1,1)
end
if menu.screen == 3 and powerups.enlarge == true then
love.graphics.draw(paddle.enlargeSprite,pPosX-50,460,0,1,1)
end
end
if creatorTools.status == true then
love.graphics.draw(block.sprite,mPosX, mPosY,0,1,1)
end
 if ball.created == 1 then
 love.graphics.draw(ball.sprite,ballX,ballY,0,.45,.45,10,10)
 end

 if powerups.exist == true then
love.graphics.draw(powerups.sprite,pwPosX ,pwPosY,0,2,2,10,10)
 end
if powerups.melt == true or powerups.enlarge == true then
    love.graphics.print("PowerUp: ".. powerups.message,10,560)
 
end

end

-- TODO: hacer el codigo independiente de tus fps;
-- averiguar el scrolling hacia arriba (quisas pendiente, depende direccion proyecto),
-- mas niveles. 
-- hacer powerups (ej: laser: haz dos columnas fijas, sin gravedad, en medio de ellas, pon
-- un cuadrado con impulso, que ignore el techo y todo menos los bloques; si colisiona con el bloque;
-- lo destruyes)