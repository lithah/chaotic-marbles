w = {}


function w.levelGen(level)
--This script was originally humanmade; BUT, same as blockDestroyer.lua; it was horribly bad made
-- so i asked gemini to optimize it; i tried; but it didn't work; and as much as im trying to understand
-- arrays; list i can't seem to understand; in the meantime; this would do the trick ;/

block.ubicationSide = {180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540}
block.ubicationTopA = {315,290,265,240,215,190,165,140,0,0,0,0,0,0,265,240,215,265,240,215,265,240,215,265,240,215,265,240,215}
block.ubicationTopB = {325,300,275,250,225,200,175,150,0,0,0,0,0,0,275,250,225,275,250,225,275,250,225,275,250,225,275,250,225}

if creatorTools.status == false then
if level == 1 then
  blockTotal = 49
          lvlDetect = 1
      for i = 1, blockTotal do
        if i >=1 and i <=7 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[1], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[1], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                if i >=8 and i <=14 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[2], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[2], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
                        if i >=15 and i <=21 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[3], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[3], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
                                if i >=22 and i <=28 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[4], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[4], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
                                  if i >=29 and i <=35 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[5], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[5], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
                                          if i >=36 and i <=42 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[6], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[6], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
                                                  if i >=43 and i <=49 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[7], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[7], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 

        end
        end

        level = 1001

    end

if level == 2 then
  blockTotal = 26       
   lvlDetect = 2
      for i = 1, blockTotal do
        if i >=1 and i <=7 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[1], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[1], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
            if i >=8 and i <=14 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[7], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[7], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
            end
        
            if i >=15 and i <=17 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[1], block.ubicationTopA[i], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[1], block.ubicationTopB[i], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
            end

            if i >=18 and i <=20 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[3], block.ubicationTopA[i], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[3], block.ubicationTopB[i], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
            end
            if i >=21 and i <=23 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[5], block.ubicationTopA[i], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[5], block.ubicationTopB[i], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
            end
                        if i >=24 and i <=26 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[7], block.ubicationTopA[i], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[7], block.ubicationTopB[i], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
            end
            
        end

 
  level = 1002
end
if level == 3 then
    blockTotal = 21
    for i = 1, blockTotal do
                if i >=1 and i <=2 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[1], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[1], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                        if i >=3 and i <=5 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[2], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[2], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                        if i >=6 and i <=7 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[1], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[1], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                                if i >=8 and i <=14 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[3], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[3], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                                        if i >=15 and i <=16 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[5], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[5], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                                                if i >=17 and i <=19 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[4], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[4], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
                                                        if i >=20 and i <=21 then
        block["hitboxupn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopA[5], 60, 10)
        block["hitboxdownn" .. i] = world:newRectangleCollider(block.ubicationSide[i], block.ubicationTopB[5], 60, 10)
        block["hitboxupn" .. i]:setCollisionClass("blockup")
        block["hitboxupn" .. i]:setType("static") 
        block["hitboxdownn" .. i]:setCollisionClass("blockdown")
        block["hitboxdownn" .. i]:setType("static") 
                _G["blockl" .. i .. "exist"] = true 
        end
    end
    level = 1003
    lvlDetect = 3
end
end
end

return w