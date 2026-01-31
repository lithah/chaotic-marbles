for i = 1,stage.ammount do
  buttonVar = {}
  local buttonVar = button["level" .. i]
  buttonVar = world:newRectangleCollider(80, 30,110,60) 
buttonVar:setCollisionClass("button")
buttonVar:setType("static") -- averigua como hacer esto funciona!!!!




  if clicked == true and lvlDetect == 1 then
        if ball.hitbox:enter("blockup") or ball.hitbox:enter("blockdown") then
            

            if block.hitboxupn1:enter("ball") or block.hitboxdownn1:enter("ball") then
                block.hitboxupn1:destroy() block.hitboxdownn1:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl1exist = false
            end
            if block.hitboxupn2:enter("ball") or block.hitboxdownn2:enter("ball") then
                block.hitboxupn2:destroy() block.hitboxdownn2:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl2exist = false
            end
            if block.hitboxupn3:enter("ball") or block.hitboxdownn3:enter("ball") then
                block.hitboxupn3:destroy() block.hitboxdownn3:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl3exist = false
            end
            if block.hitboxupn4:enter("ball") or block.hitboxdownn4:enter("ball") then
                block.hitboxupn4:destroy() block.hitboxdownn4:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl4exist = false
            end
            if block.hitboxupn5:enter("ball") or block.hitboxdownn5:enter("ball") then
                block.hitboxupn5:destroy() block.hitboxdownn5:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl5exist = false
            end
            if block.hitboxupn6:enter("ball") or block.hitboxdownn6:enter("ball") then
                block.hitboxupn6:destroy() block.hitboxdownn6:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl6exist = false
            end
            if block.hitboxupn7:enter("ball") or block.hitboxdownn7:enter("ball") then
                block.hitboxupn7:destroy() block.hitboxdownn7:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl7exist = false
            end

            if block.hitboxupn8:enter("ball") or block.hitboxdownn8:enter("ball") then
                block.hitboxupn8:destroy() block.hitboxdownn8:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl8exist = false
            end
            if block.hitboxupn9:enter("ball") or block.hitboxdownn9:enter("ball") then
                block.hitboxupn9:destroy() block.hitboxdownn9:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl9exist = false
            end
            if block.hitboxupn10:enter("ball") or block.hitboxdownn10:enter("ball") then
                block.hitboxupn10:destroy() block.hitboxdownn10:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl10exist = false
            end
            if block.hitboxupn11:enter("ball") or block.hitboxdownn11:enter("ball") then
                block.hitboxupn11:destroy() block.hitboxdownn11:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl11exist = false
            end
            if block.hitboxupn12:enter("ball") or block.hitboxdownn12:enter("ball") then
                block.hitboxupn12:destroy() block.hitboxdownn12:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl12exist = false
            end
            if block.hitboxupn13:enter("ball") or block.hitboxdownn13:enter("ball") then
                block.hitboxupn13:destroy() block.hitboxdownn13:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl13exist = false
            end
            if block.hitboxupn14:enter("ball") or block.hitboxdownn14:enter("ball") then
                block.hitboxupn14:destroy() block.hitboxdownn14:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl14exist = false
            end

            if block.hitboxupn16:enter("ball") or block.hitboxdownn16:enter("ball") then
                block.hitboxupn16:destroy() block.hitboxdownn16:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl16exist = false
            end
            if block.hitboxupn17:enter("ball") or block.hitboxdownn17:enter("ball") then
                block.hitboxupn17:destroy() block.hitboxdownn17:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl17exist = false
            end
            if block.hitboxupn18:enter("ball") or block.hitboxdownn18:enter("ball") then
                block.hitboxupn18:destroy() block.hitboxdownn18:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl18exist = false
            end
            if block.hitboxupn19:enter("ball") or block.hitboxdownn19:enter("ball") then
                block.hitboxupn19:destroy() block.hitboxdownn19:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl19exist = false
            end
            if block.hitboxupn20:enter("ball") or block.hitboxdownn20:enter("ball") then
                block.hitboxupn20:destroy() block.hitboxdownn20:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl20exist = false
            end
            if block.hitboxupn21:enter("ball") or block.hitboxdownn21:enter("ball") then
                block.hitboxupn21:destroy() block.hitboxdownn21:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl21exist = false
            end
            if block.hitboxupn22:enter("ball") or block.hitboxdownn22:enter("ball") then
                block.hitboxupn22:destroy() block.hitboxdownn22:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl22exist = false
            end

            if block.hitboxupn23:enter("ball") or block.hitboxdownn23:enter("ball") then
                block.hitboxupn23:destroy() block.hitboxdownn23:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl23exist = false
            end
            if block.hitboxupn24:enter("ball") or block.hitboxdownn24:enter("ball") then
                block.hitboxupn24:destroy() block.hitboxdownn24:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl24exist = false
            end
            if block.hitboxupn25:enter("ball") or block.hitboxdownn25:enter("ball") then
                block.hitboxupn25:destroy() block.hitboxdownn25:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl25exist = false
            end
            if block.hitboxupn26:enter("ball") or block.hitboxdownn26:enter("ball") then
                block.hitboxupn26:destroy() block.hitboxdownn26:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl26exist = false
            end
            if block.hitboxupn27:enter("ball") or block.hitboxdownn27:enter("ball") then
                block.hitboxupn27:destroy() block.hitboxdownn27:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl27exist = false
            end
            if block.hitboxupn28:enter("ball") or block.hitboxdownn28:enter("ball") then
                block.hitboxupn28:destroy() block.hitboxdownn28:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl28exist = false
            end
            if block.hitboxupn29:enter("ball") or block.hitboxdownn29:enter("ball") then
                block.hitboxupn29:destroy() block.hitboxdownn29:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl29exist = false
            end


            if block.hitboxupn30:enter("ball") or block.hitboxdownn30:enter("ball") then
                block.hitboxupn30:destroy() block.hitboxdownn30:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl30exist = false
            end
            if block.hitboxupn31:enter("ball") or block.hitboxdownn31:enter("ball") then
                block.hitboxupn31:destroy() block.hitboxdownn31:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl31exist = false
            end
            if block.hitboxupn32:enter("ball") or block.hitboxdownn32:enter("ball") then
                block.hitboxupn32:destroy() block.hitboxdownn32:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl32exist = false
            end
            if block.hitboxupn33:enter("ball") or block.hitboxdownn33:enter("ball") then
                block.hitboxupn33:destroy() block.hitboxdownn33:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl33exist = false
            end
            if block.hitboxupn34:enter("ball") or block.hitboxdownn34:enter("ball") then
                block.hitboxupn34:destroy() block.hitboxdownn34:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl34exist = false
            end
            if block.hitboxupn35:enter("ball") or block.hitboxdownn35:enter("ball") then
                block.hitboxupn35:destroy() block.hitboxdownn35:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl35exist = false
            end
            if block.hitboxupn36:enter("ball") or block.hitboxdownn36:enter("ball") then
                block.hitboxupn36:destroy() block.hitboxdownn36:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl36exist = false
            end

            -- Bloques 37 al 43 (Fila 6)
            if block.hitboxupn37:enter("ball") or block.hitboxdownn37:enter("ball") then
                block.hitboxupn37:destroy() block.hitboxdownn37:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl37exist = false
            end
            if block.hitboxupn38:enter("ball") or block.hitboxdownn38:enter("ball") then
                block.hitboxupn38:destroy() block.hitboxdownn38:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl38exist = false
            end
            if block.hitboxupn39:enter("ball") or block.hitboxdownn39:enter("ball") then
                block.hitboxupn39:destroy() block.hitboxdownn39:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl39exist = false
            end
            if block.hitboxupn40:enter("ball") or block.hitboxdownn40:enter("ball") then
                block.hitboxupn40:destroy() block.hitboxdownn40:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl40exist = false
            end
            if block.hitboxupn41:enter("ball") or block.hitboxdownn41:enter("ball") then
                block.hitboxupn41:destroy() block.hitboxdownn41:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl41exist = false
            end
            if block.hitboxupn42:enter("ball") or block.hitboxdownn42:enter("ball") then
                block.hitboxupn42:destroy() block.hitboxdownn42:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl42exist = false
            end
            if block.hitboxupn43:enter("ball") or block.hitboxdownn43:enter("ball") then
                block.hitboxupn43:destroy() block.hitboxdownn43:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl43exist = false
            end


            if block.hitboxupn44:enter("ball") or block.hitboxdownn44:enter("ball") then
                block.hitboxupn44:destroy() block.hitboxdownn44:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl44exist = false
            end
            if block.hitboxupn45:enter("ball") or block.hitboxdownn45:enter("ball") then
                block.hitboxupn45:destroy() block.hitboxdownn45:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl45exist = false
            end
            if block.hitboxupn46:enter("ball") or block.hitboxdownn46:enter("ball") then
                block.hitboxupn46:destroy() block.hitboxdownn46:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl46exist = false
            end
            if block.hitboxupn47:enter("ball") or block.hitboxdownn47:enter("ball") then
                block.hitboxupn47:destroy() block.hitboxdownn47:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl47exist = false
            end
            if block.hitboxupn48:enter("ball") or block.hitboxdownn48:enter("ball") then
                block.hitboxupn48:destroy() block.hitboxdownn48:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl48exist = false
            end
            if block.hitboxupn49:enter("ball") or block.hitboxdownn49:enter("ball") then
                block.hitboxupn49:destroy() block.hitboxdownn49:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl49exist = false
            end
            if block.hitboxupn50:enter("ball") or block.hitboxdownn50:enter("ball") then
                block.hitboxupn50:destroy() block.hitboxdownn50:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl50exist = false
            end


            if block.hitboxupn51:enter("ball") or block.hitboxdownn51:enter("ball") then
                block.hitboxupn51:destroy() block.hitboxdownn51:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl51exist = false
            end
            if block.hitboxupn52:enter("ball") or block.hitboxdownn52:enter("ball") then
                block.hitboxupn52:destroy() block.hitboxdownn52:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl52exist = false
            end
            if block.hitboxupn53:enter("ball") or block.hitboxdownn53:enter("ball") then
                block.hitboxupn53:destroy() block.hitboxdownn53:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl53exist = false
            end
            if block.hitboxupn54:enter("ball") or block.hitboxdownn54:enter("ball") then
                block.hitboxupn54:destroy() block.hitboxdownn54:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl54exist = false
            end
            if block.hitboxupn55:enter("ball") or block.hitboxdownn55:enter("ball") then
                block.hitboxupn55:destroy() block.hitboxdownn55:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl55exist = false
            end
            if block.hitboxupn56:enter("ball") or block.hitboxdownn56:enter("ball") then
                block.hitboxupn56:destroy() block.hitboxdownn56:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl56exist = false
            end
            if block.hitboxupn57:enter("ball") or block.hitboxdownn57:enter("ball") then
                block.hitboxupn57:destroy() block.hitboxdownn57:destroy()
                score = score + 100 
                blockDestroyed = blockDestroyed + 1 blockl57exist = false
            end
        end
end

  if ball.hitbox:enter("blockup") or ball.hitbox:enter("blockdown") then
  if block.hitboxupn1:enter("ball") or block.hitboxdownn1:enter("ball") then
    block.hitboxupn1:destroy()
    block.hitboxdownn1:destroy()
score = score + 100  
blockDestroyed = blockDestroyed + 1 blockl1exist = false blockl1exist = false

  end
  if block.hitboxupn2:enter("ball") or block.hitboxdownn2:enter("ball") then
    block.hitboxupn2:destroy()
    block.hitboxdownn2:destroy()
    score = score + 100  
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
     if block.hitboxupn3:enter("ball") or block.hitboxdownn3:enter("ball") then
    block.hitboxupn3:destroy()
    block.hitboxdownn3:destroy() score = score + 100  
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

     end
      if block.hitboxupn4:enter("ball") or block.hitboxdownn4:enter("ball") then
    block.hitboxupn4:destroy()
    block.hitboxdownn4:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

      end
         if block.hitboxupn5:enter("ball") or block.hitboxdownn5:enter("ball") then
    block.hitboxupn5:destroy()
    block.hitboxdownn5:destroy() score = score + 100  
     blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
           if block.hitboxupn6:enter("ball") or block.hitboxdownn6:enter("ball") then
    block.hitboxupn6:destroy()
    block.hitboxdownn6:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
             if block.hitboxupn7:enter("ball") or block.hitboxdownn7:enter("ball") then
    block.hitboxupn7:destroy()
    block.hitboxdownn7:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false
             end

             if block.hitboxupn8:enter("ball") or block.hitboxdownn8:enter("ball") then
    block.hitboxupn8:destroy()
    block.hitboxdownn8:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false


  end
  if block.hitboxupn9:enter("ball") or block.hitboxdownn9:enter("ball") then
    block.hitboxupn9:destroy()
    block.hitboxdownn9:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
     if block.hitboxupn10:enter("ball") or block.hitboxdownn10:enter("ball") then
    block.hitboxupn10:destroy()
    block.hitboxdownn10:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

     end
      if block.hitboxupn11:enter("ball") or block.hitboxdownn11:enter("ball") then
    block.hitboxupn11:destroy()
    block.hitboxdownn11:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

      end
         if block.hitboxupn12:enter("ball") or block.hitboxdownn12:enter("ball") then
    block.hitboxupn12:destroy()
    block.hitboxdownn12:destroy() score = score + 100   
    blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
           if block.hitboxupn13:enter("ball") or block.hitboxdownn13:enter("ball") then
    block.hitboxupn13:destroy()
    block.hitboxdownn13:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

  end
             if block.hitboxupn14:enter("ball") or block.hitboxdownn14:enter("ball") then
    block.hitboxupn14:destroy()
    block.hitboxdownn14:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end            
     if block.hitboxupn15:enter("ball") or block.hitboxdownn15:enter("ball") then
    block.hitboxupn15:destroy()
    block.hitboxdownn15:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end

 if block.hitboxupn16:enter("ball") or block.hitboxdownn16:enter("ball") then
    block.hitboxupn16:destroy()
    block.hitboxdownn16:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end

             if block.hitboxupn17:enter("ball") or block.hitboxdownn17:enter("ball") then
    block.hitboxupn17:destroy()
    block.hitboxdownn17:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn18:enter("ball") or block.hitboxdownn18:enter("ball") then
    block.hitboxupn18:destroy()
    block.hitboxdownn18:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn19:enter("ball") or block.hitboxdownn19:enter("ball") then
    block.hitboxupn19:destroy()
    block.hitboxdownn19:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn20:enter("ball") or block.hitboxdownn20:enter("ball") then
    block.hitboxupn20:destroy()
    block.hitboxdownn20:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn21:enter("ball") or block.hitboxdownn21:enter("ball") then
    block.hitboxupn21:destroy()
    block.hitboxdownn21:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn22:enter("ball") or block.hitboxdownn22:enter("ball") then
    block.hitboxupn22:destroy()
    block.hitboxdownn22:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

             end
              if block.hitboxupn23:enter("ball") or block.hitboxdownn23:enter("ball") then
    block.hitboxupn23:destroy()
    block.hitboxdownn23:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false
              end
              if block.hitboxupn51:enter("ball") or block.hitboxdownn51:enter("ball") then
block.hitboxupn51:destroy()
block.hitboxdownn51:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
if block.hitboxupn52:enter("ball") or block.hitboxdownn52:enter("ball") then
block.hitboxupn52:destroy()
block.hitboxdownn52:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
if block.hitboxupn53:enter("ball") or block.hitboxdownn53:enter("ball") then
block.hitboxupn53:destroy()
block.hitboxdownn53:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
if block.hitboxupn54:enter("ball") or block.hitboxdownn54:enter("ball") then
block.hitboxupn54:destroy()
block.hitboxdownn54:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
if block.hitboxupn55:enter("ball") or block.hitboxdownn55:enter("ball") then
block.hitboxupn55:destroy()
block.hitboxdownn55:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
 
if block.hitboxupn56:enter("ball") or block.hitboxdownn56:enter("ball") then
block.hitboxupn56:destroy()
block.hitboxdownn56:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false

end
if block.hitboxupn57:enter("ball") or block.hitboxdownn57:enter("ball") then
block.hitboxupn57:destroy()
block.hitboxdownn57:destroy() score = score + 100   blockDestroyed = blockDestroyed + 1 blockl1exist = false
end
end

  block.hitboxupn1 = world:newRectangleCollider(s1, t1a,60,10)
        block.hitboxupn1:setCollisionClass("blockup")
        block.hitboxupn1:setType("static") blockl1exist = true
        block.hitboxdownn1 = world:newRectangleCollider(s1, t1b,60,10)
        block.hitboxdownn1:setCollisionClass("blockdown")
        block.hitboxdownn1:setType("static") blockl1exist = true

        block.hitboxupn2 = world:newRectangleCollider(s2, t1a,60,10)
        block.hitboxupn2:setCollisionClass("blockup")
        block.hitboxupn2:setType("static") blockl2exist = true
        block.hitboxdownn2 = world:newRectangleCollider(s2, t1b,60,10)
        block.hitboxdownn2:setCollisionClass("blockdown")
        block.hitboxdownn2:setType("static") blockl2exist = true

        block.hitboxupn3 = world:newRectangleCollider(s3, t1a,60,10)
        block.hitboxupn3:setCollisionClass("blockup")
        block.hitboxupn3:setType("static") blockl3exist = true
        block.hitboxdownn3 = world:newRectangleCollider(s3, t1b,60,10)
        block.hitboxdownn3:setCollisionClass("blockdown")
        block.hitboxdownn3:setType("static") blockl3exist = true

        block.hitboxupn4 = world:newRectangleCollider(s4, t1a,60,10)
        block.hitboxupn4:setCollisionClass("blockup")
        block.hitboxupn4:setType("static") blockl4exist = true
        block.hitboxdownn4 = world:newRectangleCollider(s4, t1b,60,10)
        block.hitboxdownn4:setCollisionClass("blockdown")
        block.hitboxdownn4:setType("static") blockl4exist = true

        block.hitboxupn5 = world:newRectangleCollider(s5, t1a,60,10)
        block.hitboxupn5:setCollisionClass("blockup")
        block.hitboxupn5:setType("static") blockl5exist = true
        block.hitboxdownn5 = world:newRectangleCollider(s5, t1b,60,10)
        block.hitboxdownn5:setCollisionClass("blockdown")
        block.hitboxdownn5:setType("static") blockl5exist = true

        block.hitboxupn6 = world:newRectangleCollider(s6, t1a,60,10)
        block.hitboxupn6:setCollisionClass("blockup")
        block.hitboxupn6:setType("static") blockl6exist = true
        block.hitboxdownn6 = world:newRectangleCollider(s6, t1b,60,10)
        block.hitboxdownn6:setCollisionClass("blockdown")
        block.hitboxdownn6:setType("static") blockl6exist = true

        block.hitboxupn7 = world:newRectangleCollider(s7, t1a,60,10)
        block.hitboxupn7:setCollisionClass("blockup")
        block.hitboxupn7:setType("static") blockl7exist = true
        block.hitboxdownn7 = world:newRectangleCollider(s7, t1b,60,10)
        block.hitboxdownn7:setCollisionClass("blockdown")
        block.hitboxdownn7:setType("static") blockl7exist = true

        block.hitboxupn8 = world:newRectangleCollider(s1, t2b,60,10) 
        block.hitboxupn8:setCollisionClass("blockup")
        block.hitboxupn8:setType("static") blockl8exist = true
        block.hitboxdownn8 = world:newRectangleCollider(s1, t2a,60,10)
        block.hitboxdownn8:setCollisionClass("blockdown")
        block.hitboxdownn8:setType("static") blockl8exist = true

        block.hitboxupn9 = world:newRectangleCollider(s2, t2b,60,10)
        block.hitboxupn9:setCollisionClass("blockup")
        block.hitboxupn9:setType("static") blockl9exist = true
        block.hitboxdownn9 = world:newRectangleCollider(s2, t2a,60,10)
        block.hitboxdownn9:setCollisionClass("blockdown")
        block.hitboxdownn9:setType("static") blockl9exist = true

        block.hitboxupn10 = world:newRectangleCollider(s3, t2b,60,10)
        block.hitboxupn10:setCollisionClass("blockup")
        block.hitboxupn10:setType("static") blockl10exist = true
        block.hitboxdownn10 = world:newRectangleCollider(s3, t2a,60,10)
        block.hitboxdownn10:setCollisionClass("blockdown")
        block.hitboxdownn10:setType("static") blockl10exist = true

        block.hitboxupn11 = world:newRectangleCollider(s4, t2b,60,10)
        block.hitboxupn11:setCollisionClass("blockup")
        block.hitboxupn11:setType("static") blockl11exist = true
        block.hitboxdownn11 = world:newRectangleCollider(s4, t2a,60,10)
        block.hitboxdownn11:setCollisionClass("blockdown")
        block.hitboxdownn11:setType("static") blockl11exist = true

        block.hitboxupn12 = world:newRectangleCollider(s5, t2b,60,10)
        block.hitboxupn12:setCollisionClass("blockup")
        block.hitboxupn12:setType("static") blockl12exist = true
        block.hitboxdownn12 = world:newRectangleCollider(s5, t2a,60,10)
        block.hitboxdownn12:setCollisionClass("blockdown")
        block.hitboxdownn12:setType("static") blockl12exist = true

        block.hitboxupn13 = world:newRectangleCollider(s6, t2b,60,10)
        block.hitboxupn13:setCollisionClass("blockup")
        block.hitboxupn13:setType("static") blockl13exist = true
        block.hitboxdownn13 = world:newRectangleCollider(s6, t2a,60,10)
        block.hitboxdownn13:setCollisionClass("blockdown")
        block.hitboxdownn13:setType("static") blockl13exist = true

        block.hitboxupn14 = world:newRectangleCollider(s7, t2b,60,10)
        block.hitboxupn14:setCollisionClass("blockup")
        block.hitboxupn14:setType("static") blockl14exist = true
        block.hitboxdownn14 = world:newRectangleCollider(s7, t2a,60,10)
        block.hitboxdownn14:setCollisionClass("blockdown")
        block.hitboxdownn14:setType("static") blockl14exist = true

        block.hitboxupn16 = world:newRectangleCollider(s1, t3a,60,10)
        block.hitboxupn16:setCollisionClass("blockup")
        block.hitboxupn16:setType("static") blockl16exist = true
        block.hitboxdownn16 = world:newRectangleCollider(s1, t3b,60,10)
        block.hitboxdownn16:setCollisionClass("blockdown")
        block.hitboxdownn16:setType("static") blockl16exist = true

        block.hitboxupn17 = world:newRectangleCollider(s2, t3a,60,10)
        block.hitboxupn17:setCollisionClass("blockup")
        block.hitboxupn17:setType("static") blockl17exist = true
        block.hitboxdownn17 = world:newRectangleCollider(s2, t3b,60,10)
        block.hitboxdownn17:setCollisionClass("blockdown")
        block.hitboxdownn17:setType("static") blockl17exist = true

        block.hitboxupn18 = world:newRectangleCollider(s3, t3a,60,10)
        block.hitboxupn18:setCollisionClass("blockup")
        block.hitboxupn18:setType("static") blockl18exist = true
        block.hitboxdownn18 = world:newRectangleCollider(s3, t3b,60,10)
        block.hitboxdownn18:setCollisionClass("blockdown")
        block.hitboxdownn18:setType("static") blockl18exist = true

        block.hitboxupn19 = world:newRectangleCollider(s4, t3a,60,10)
        block.hitboxupn19:setCollisionClass("blockup")
        block.hitboxupn19:setType("static") blockl19exist = true
        block.hitboxdownn19 = world:newRectangleCollider(s4, t3b,60,10)
        block.hitboxdownn19:setCollisionClass("blockdown")
        block.hitboxdownn19:setType("static") blockl19exist = true

        block.hitboxupn20 = world:newRectangleCollider(s5, t3a,60,10)
        block.hitboxupn20:setCollisionClass("blockup")
        block.hitboxupn20:setType("static") blockl20exist = true
        block.hitboxdownn20 = world:newRectangleCollider(s5, t3b,60,10)
        block.hitboxdownn20:setCollisionClass("blockdown")
        block.hitboxdownn20:setType("static") blockl20exist = true

        block.hitboxupn21 = world:newRectangleCollider(s6, t3a,60,10)
        block.hitboxupn21:setCollisionClass("blockup")
        block.hitboxupn21:setType("static") blockl21exist = true
        block.hitboxdownn21 = world:newRectangleCollider(s6, t3b,60,10)
        block.hitboxdownn21:setCollisionClass("blockdown")
        block.hitboxdownn21:setType("static") blockl21exist = true

        block.hitboxupn22 = world:newRectangleCollider(s7, t3a,60,10)
        block.hitboxupn22:setCollisionClass("blockup")
        block.hitboxupn22:setType("static") blockl22exist = true
        block.hitboxdownn22 = world:newRectangleCollider(s7, t3b,60,10)
        block.hitboxdownn22:setCollisionClass("blockdown")
        block.hitboxdownn22:setType("static") blockl22exist = true

        block.hitboxupn23 = world:newRectangleCollider(s1, 320-80,60,10)
        block.hitboxupn23:setCollisionClass("blockup")
        block.hitboxupn23:setType("static") blockl23exist = true
        block.hitboxdownn23 = world:newRectangleCollider(s1, 320-70,60,10)
        block.hitboxdownn23:setCollisionClass("blockdown")
        block.hitboxdownn23:setType("static") blockl23exist = true

        block.hitboxupn24 = world:newRectangleCollider(s2, 320-80,60,10)
        block.hitboxupn24:setCollisionClass("blockup")
        block.hitboxupn24:setType("static") blockl24exist = true
        block.hitboxdownn24 = world:newRectangleCollider(s2, 320-70,60,10)
        block.hitboxdownn24:setCollisionClass("blockdown")
        block.hitboxdownn24:setType("static") blockl24exist = true

        block.hitboxupn25 = world:newRectangleCollider(s3, 320-80,60,10)
        block.hitboxupn25:setCollisionClass("blockup")
        block.hitboxupn25:setType("static") blockl25exist = true
        block.hitboxdownn25 = world:newRectangleCollider(s3, 320-70,60,10)
        block.hitboxdownn25:setCollisionClass("blockdown")
        block.hitboxdownn25:setType("static") blockl25exist = true

        block.hitboxupn26 = world:newRectangleCollider(s4, 320-80,60,10)
        block.hitboxupn26:setCollisionClass("blockup")
        block.hitboxupn26:setType("static") blockl26exist = true
        block.hitboxdownn26 = world:newRectangleCollider(s4, 320-70,60,10)
        block.hitboxdownn26:setCollisionClass("blockdown")
        block.hitboxdownn26:setType("static") blockl26exist = true

        block.hitboxupn27 = world:newRectangleCollider(s5, 320-80,60,10)
        block.hitboxupn27:setCollisionClass("blockup")
        block.hitboxupn27:setType("static") blockl27exist = true
        block.hitboxdownn27 = world:newRectangleCollider(s5, 320-70,60,10)
        block.hitboxdownn27:setCollisionClass("blockdown")
        block.hitboxdownn27:setType("static") blockl27exist = true

        block.hitboxupn28 = world:newRectangleCollider(s6, 320-80,60,10)
        block.hitboxupn28:setCollisionClass("blockup")
        block.hitboxupn28:setType("static") blockl28exist = true
        block.hitboxdownn28 = world:newRectangleCollider(s6, 320-70,60,10)
        block.hitboxdownn28:setCollisionClass("blockdown")
        block.hitboxdownn28:setType("static") blockl28exist = true

        block.hitboxupn29 = world:newRectangleCollider(s7, 320-80,60,10)
        block.hitboxupn29:setCollisionClass("blockup")
        block.hitboxupn29:setType("static") blockl29exist = true
        block.hitboxdownn29 = world:newRectangleCollider(s7, 320-70,60,10)
        block.hitboxdownn29:setCollisionClass("blockdown")
        block.hitboxdownn29:setType("static") blockl29exist = true

        block.hitboxupn30 = world:newRectangleCollider(s1, 320-105,60,10)
        block.hitboxupn30:setCollisionClass("blockup")
        block.hitboxupn30:setType("static") blockl30exist = true
        block.hitboxdownn30 = world:newRectangleCollider(s1, 320-95,60,10)
        block.hitboxdownn30:setCollisionClass("blockdown")
        block.hitboxdownn30:setType("static") blockl30exist = true

        block.hitboxupn31 = world:newRectangleCollider(s2, 320-105,60,10)
        block.hitboxupn31:setCollisionClass("blockup")
        block.hitboxupn31:setType("static") blockl31exist = true
        block.hitboxdownn31 = world:newRectangleCollider(s2, 320-95,60,10)
        block.hitboxdownn31:setCollisionClass("blockdown")
        block.hitboxdownn31:setType("static") blockl31exist = true

        block.hitboxupn32 = world:newRectangleCollider(s3, 320-105,60,10)
        block.hitboxupn32:setCollisionClass("blockup")
        block.hitboxupn32:setType("static") blockl32exist = true
        block.hitboxdownn32 = world:newRectangleCollider(s3, 320-95,60,10)
        block.hitboxdownn32:setCollisionClass("blockdown")
        block.hitboxdownn32:setType("static") blockl32exist = true

        block.hitboxupn33 = world:newRectangleCollider(s4, 320-105,60,10)
        block.hitboxupn33:setCollisionClass("blockup")
        block.hitboxupn33:setType("static") blockl33exist = true
        block.hitboxdownn33 = world:newRectangleCollider(s4, 320-95,60,10)
        block.hitboxdownn33:setCollisionClass("blockdown")
        block.hitboxdownn33:setType("static") blockl33exist = true

        block.hitboxupn34 = world:newRectangleCollider(s5, 320-105,60,10)
        block.hitboxupn34:setCollisionClass("blockup")
        block.hitboxupn34:setType("static") blockl34exist = true
        block.hitboxdownn34 = world:newRectangleCollider(s5, 320-95,60,10)
        block.hitboxdownn34:setCollisionClass("blockdown")
        block.hitboxdownn34:setType("static") blockl34exist = true

        block.hitboxupn35 = world:newRectangleCollider(s6, 320-105,60,10)
        block.hitboxupn35:setCollisionClass("blockup")
        block.hitboxupn35:setType("static") blockl35exist = true
        block.hitboxdownn35 = world:newRectangleCollider(s6, 320-95,60,10)
        block.hitboxdownn35:setCollisionClass("blockdown")
        block.hitboxdownn35:setType("static") blockl35exist = true

         block.hitboxupn36 = world:newRectangleCollider(s7, 320-105,60,10)
        block.hitboxupn36:setCollisionClass("blockup")
        block.hitboxupn36:setType("static") blockl36exist = true
        block.hitboxdownn36 = world:newRectangleCollider(s7, 320-95,60,10)
        block.hitboxdownn36:setCollisionClass("blockdown")
        block.hitboxdownn36:setType("static") blockl36exist = true

        block.hitboxupn37 = world:newRectangleCollider(s1, 320-130,60,10) 
        block.hitboxupn37:setCollisionClass("blockup")
        block.hitboxupn37:setType("static") blockl37exist = true
        block.hitboxdownn37 = world:newRectangleCollider(s1, 320-120,60,10)
        block.hitboxdownn37:setCollisionClass("blockdown")
        block.hitboxdownn37:setType("static") blockl37exist = true

        block.hitboxupn38 = world:newRectangleCollider(s2, 320-130,60,10) 
        block.hitboxupn38:setCollisionClass("blockup")
        block.hitboxupn38:setType("static") blockl38exist = true
        block.hitboxdownn38 = world:newRectangleCollider(s2, 320-120,60,10)
        block.hitboxdownn38:setCollisionClass("blockdown")
        block.hitboxdownn38:setType("static") blockl38exist = true

        block.hitboxupn39 = world:newRectangleCollider(s3, 320-130,60,10) 
        block.hitboxupn39:setCollisionClass("blockup")
        block.hitboxupn39:setType("static") blockl39exist = true
        block.hitboxdownn39 = world:newRectangleCollider(s3, 320-120,60,10)
        block.hitboxdownn39:setCollisionClass("blockdown")
        block.hitboxdownn39:setType("static") blockl39exist = true

        block.hitboxupn40 = world:newRectangleCollider(s4, 320-130,60,10) 
        block.hitboxupn40:setCollisionClass("blockup")
        block.hitboxupn40:setType("static") blockl40exist = true
        block.hitboxdownn40 = world:newRectangleCollider(s4, 320-120,60,10)
        block.hitboxdownn40:setCollisionClass("blockdown")
        block.hitboxdownn40:setType("static") blockl40exist = true

        block.hitboxupn41 = world:newRectangleCollider(s5, 320-130,60,10) 
        block.hitboxupn41:setCollisionClass("blockup")
        block.hitboxupn41:setType("static") blockl41exist = true
        block.hitboxdownn41 = world:newRectangleCollider(s5, 320-120,60,10)
        block.hitboxdownn41:setCollisionClass("blockdown")
        block.hitboxdownn41:setType("static") blockl41exist = true

        block.hitboxupn42 = world:newRectangleCollider(s6, 320-130,60,10) 
        block.hitboxupn42:setCollisionClass("blockup")
        block.hitboxupn42:setType("static") blockl42exist = true
        block.hitboxdownn42 = world:newRectangleCollider(s6, 320-120,60,10)
        block.hitboxdownn42:setCollisionClass("blockdown")
        block.hitboxdownn42:setType("static") blockl42exist = true

        block.hitboxupn43 = world:newRectangleCollider(s7, 320-130,60,10) 
        block.hitboxupn43:setCollisionClass("blockup")
        block.hitboxupn43:setType("static") blockl43exist = true
        block.hitboxdownn43 = world:newRectangleCollider(s7, 320-120,60,10)
        block.hitboxdownn43:setCollisionClass("blockdown")
        block.hitboxdownn43:setType("static") blockl43exist = true

        block.hitboxupn44 = world:newRectangleCollider(s1, 320-155,60,10)
        block.hitboxupn44:setCollisionClass("blockup")
        block.hitboxupn44:setType("static") blockl44exist = true
        block.hitboxdownn44 = world:newRectangleCollider(s1, 320-145,60,10)
        block.hitboxdownn44:setCollisionClass("blockdown")
        block.hitboxdownn44:setType("static") blockl44exist = true

        block.hitboxupn45 = world:newRectangleCollider(s2, 320-155,60,10) 
        block.hitboxupn45:setCollisionClass("blockup")
        block.hitboxupn45:setType("static") blockl45exist = true
        block.hitboxdownn45 = world:newRectangleCollider(s2, 320-145,60,10)
        block.hitboxdownn45:setCollisionClass("blockdown")
        block.hitboxdownn45:setType("static") blockl45exist = true

        block.hitboxupn46 = world:newRectangleCollider(s3, 320-155,60,10) 
        block.hitboxupn46:setCollisionClass("blockup")
        block.hitboxupn46:setType("static") blockl46exist = true
        block.hitboxdownn46 = world:newRectangleCollider(s3, 320-145,60,10)
        block.hitboxdownn46:setCollisionClass("blockdown")
        block.hitboxdownn46:setType("static") blockl46exist = true

        block.hitboxupn47 = world:newRectangleCollider(s4, 320-155,60,10) 
        block.hitboxupn47:setCollisionClass("blockup")
        block.hitboxupn47:setType("static") blockl47exist = true
        block.hitboxdownn47 = world:newRectangleCollider(s4, 320-145,60,10)
        block.hitboxdownn47:setCollisionClass("blockdown")
        block.hitboxdownn47:setType("static") blockl47exist = true

        block.hitboxupn48 = world:newRectangleCollider(s5, 320-155,60,10) 
        block.hitboxupn48:setCollisionClass("blockup")
        block.hitboxupn48:setType("static") blockl48exist = true
        block.hitboxdownn48 = world:newRectangleCollider(s5, 320-145,60,10)
        block.hitboxdownn48:setCollisionClass("blockdown")
        block.hitboxdownn48:setType("static") blockl48exist = true

        block.hitboxupn49 = world:newRectangleCollider(s6, 320-155,60,10) 
        block.hitboxupn49:setCollisionClass("blockup")
        block.hitboxupn49:setType("static") blockl49exist = true
        block.hitboxdownn49 = world:newRectangleCollider(s6, 320-145,60,10)
        block.hitboxdownn49:setCollisionClass("blockdown")
        block.hitboxdownn49:setType("static") blockl49exist = true

        block.hitboxupn50 = world:newRectangleCollider(s7, 320-155,60,10) 
        block.hitboxupn50:setCollisionClass("blockup")
        block.hitboxupn50:setType("static") blockl50exist = true
        block.hitboxdownn50 = world:newRectangleCollider(s7, 320-145,60,10)
        block.hitboxdownn50:setCollisionClass("blockdown")
        block.hitboxdownn50:setType("static") blockl50exist = true

        -- CORRECCIÓN: Bloques 51 al 57 (Última fila)
        block.hitboxupn51 = world:newRectangleCollider(s1, 320-180,60,10)
        block.hitboxupn51:setCollisionClass("blockup")
        block.hitboxupn51:setType("static") blockl51exist = true
        block.hitboxdownn51 = world:newRectangleCollider(s1, 320-170,60,10)
        block.hitboxdownn51:setCollisionClass("blockdown")
        block.hitboxdownn51:setType("static") blockl51exist = true

        block.hitboxupn52 = world:newRectangleCollider(s2, 320-180,60,10)
        block.hitboxupn52:setCollisionClass("blockup")
        block.hitboxupn52:setType("static") blockl52exist = true
        block.hitboxdownn52 = world:newRectangleCollider(s2, 320-170,60,10)
        block.hitboxdownn52:setCollisionClass("blockdown")
        block.hitboxdownn52:setType("static") blockl52exist = true

        block.hitboxupn53 = world:newRectangleCollider(s3, 320-180,60,10)
        block.hitboxupn53:setCollisionClass("blockup")
        block.hitboxupn53:setType("static") blockl53exist = true
        block.hitboxdownn53 = world:newRectangleCollider(s3, 320-170,60,10)
        block.hitboxdownn53:setCollisionClass("blockdown")
        block.hitboxdownn53:setType("static") blockl53exist = true

        block.hitboxupn54 = world:newRectangleCollider(s4, 320-180,60,10)
        block.hitboxupn54:setCollisionClass("blockup")
        block.hitboxupn54:setType("static") blockl54exist = true
        block.hitboxdownn54 = world:newRectangleCollider(s4, 320-170,60,10)
        block.hitboxdownn54:setCollisionClass("blockdown")
        block.hitboxdownn54:setType("static") blockl54exist = true

        block.hitboxupn55 = world:newRectangleCollider(s5, 320-180,60,10)
        block.hitboxupn55:setCollisionClass("blockup")
        block.hitboxupn55:setType("static") blockl55exist = true
        block.hitboxdownn55 = world:newRectangleCollider(s5, 320-170,60,10)
        block.hitboxdownn55:setCollisionClass("blockdown")
        block.hitboxdownn55:setType("static") blockl55exist = true

        block.hitboxupn56 = world:newRectangleCollider(s6, 320-180,60,10)
        block.hitboxupn56:setCollisionClass("blockup")
        block.hitboxupn56:setType("static") blockl56exist = true
        block.hitboxdownn56 = world:newRectangleCollider(s6, 320-170,60,10)
        block.hitboxdownn56:setCollisionClass("blockdown")
        block.hitboxdownn56:setType("static") blockl56exist = true

        block.hitboxupn57 = world:newRectangleCollider(s7, 320-180,60,10)
        block.hitboxupn57:setCollisionClass("blockup")
        block.hitboxupn57:setType("static") blockl57exist = true
        block.hitboxdownn57 = world:newRectangleCollider(s7, 320-170,60,10)
        block.hitboxdownn57:setCollisionClass("blockdown")
        block.hitboxdownn57:setType("static") blockl57exist = true