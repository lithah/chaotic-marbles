w = {}
msgbg = 5
function w.menuDraw(dt)

  if menu.screen == 3 then
    if bg.selection == 1 then
 love.graphics.draw(bg.one,0,0,0,10,10)
    end
     if bg.selection == 2 then
 love.graphics.draw(bg.two,0,0,0,10,10)
    end
   end 
    if menu.screen == 1 then
 love.graphics.draw(menu.sprite1,0,0,0,10,10)
 love.graphics.draw(button.play,370,450,0,3,3)
  love.graphics.draw(settings.sprite,740,540,0,1,1) 
  love.graphics.draw(button.back,20,540,0,1,1) 
  end
  

  if menu.screen == 3 then
    love.graphics.print("Score: ".. score,10,0)
  love.graphics.print("Lives: ".. lives,10,30)
  if love.keyboard.isDown("space") then
msgbg = -1
  end
if msgbg >= 0 and creatorTools.status == false then
   love.graphics.setColor(1,1,1,.4)
 love.graphics.print("Press 'space' to start",300,500,0,.5,.5)
  love.graphics.setColor(1,1,1,1)
end
if msgbg >= 0 and creatorTools.status == true then
   love.graphics.setColor(1,1,1,.4)
 love.graphics.print("Press 'lshift' to create a block",280,500,0,.5,.5)
  love.graphics.setColor(1,1,1,1)
end

  
  end
  if menu.screen == 4 then
    love.graphics.draw(menu.settings,0,0,0,10,10) 
    love.graphics.draw(button.back,30,530,0,1,1) 
     love.graphics.setColor(0,0,0,1)
   love.graphics.print("Settings",200,0,0,3,3)
   love.graphics.setColor(1,1,1,1)
   love.graphics.print("Press '1' to switch method of paddle control",450,160,0,.5,.5)
   love.graphics.print("'keyboard' allows control of the paddle with wasd keys",450,180,0,.4,.4)
   love.graphics.print("'mouse' allows control of the paddle with mouse cursor",450,190,0,.4,.4)
   love.graphics.print("Press 'lshift' to enter level creator mode",450,210,0,.5,.5)
   love.graphics.print("Press 'm' to mute",450,250,0,.5,.5)
 love.graphics.setColor(0,1,0,1)
love.graphics.print("Control Mode: "..paddle.moveable,20,160)
love.graphics.print("Creator Tools: "..creatorTools.msg,20,200)
love.graphics.print("Mute",20,240)
love.graphics.setColor(1,1,1,1)


  end

 if menu.screen == 2 then
  destroyer.allowdisable = 0
   love.graphics.draw(menu.sprite2,0,0,0,10,10)
  love.graphics.draw(button.back,740,480,0,1,1) 
    love.graphics.draw(settings.sprite,740,540,0,1,1) 
  for i = 1, stage.ammount do
    stage.posX = {115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,115,245,375,505,635,}
    stage.posY = {40,120,200,280,360,440,520}
    if i >=1 and i <=5 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[1])
    end
if i >=6 and i <=10 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[2])
    end
    if i >=11 and i <=15 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[3])
    end    
    if i >=16 and i <=20 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[4])
    end
        if i >=21 and i <=25 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[5])
    end
            if i >=26 and i <=30 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[6])
    end
                if i >=31 and i <=35 then
    stage.numerator = love.graphics.print("-"..i.."-",stage.posX[i],stage.posY[7])
    end
  end
end
  if love.keyboard.isDown("up") then
world:draw()
end
end
return w