w = {}
function w.ballBounce()

if paddle.hitbox3:enter("ball") and MovementR == 1 or paddle.hitbox2:enter("ball") and MovementR == 1 then
            world:setGravity(speed+bounceRNG,-speed)
        ball.hitbox:setLinearVelocity(vx,-vy)
        bounce = 1
        acb = 0
        sfx.paddlehit:play()
    end

if paddle.hitbox1:enter("ball") and MovementR == 1 then -- paleta 3 lados R
            world:setGravity(-speed-bounceRNG-50,-speed)
        ball.hitbox:setLinearVelocity(-vx,-vy)
        bounce = 1
        acb = 0
        sfx.paddlehit:play()
    end

    if paddle.hitbox1:enter("ball") and MovementL == 1 or paddle.hitbox2:enter("ball") and MovementL == 1 then
            world:setGravity(-speed-bounceRNG,-speed)
        ball.hitbox:setLinearVelocity(-vx,-vy)
        bounce = 1
        acb = 0
        sfx.paddlehit:play()
    end

if paddle.hitbox3:enter("ball") and MovementL == 1 then --paleta 3 lados L
                world:setGravity(speed+bounceRNG+50,-speed)
        ball.hitbox:setLinearVelocity(vx,-vy)
        bounce = 1
        acb = 0
        sfx.paddlehit:play()
    end




 if clicked == true then
        if ball.hitbox:enter("walltop") and MovementR == 1 then
            world:setGravity(speed+bounceRNG,speed)
        ball.hitbox:setLinearVelocity(vx,vy)
        bounce = 0
        acb = 0
        sfx.paddlehit:play()
        end
                if ball.hitbox:enter("walltop") and MovementL == 1 then
            world:setGravity(-speed-bounceRNG,speed)
        ball.hitbox:setLinearVelocity(-vx,vy)
        bounce = 0
        acb = 0
        sfx.paddlehit:play()
        end
        if ball.hitbox:enter("wallsideA") and bounce == 0 then --topbounce
            world:setGravity(speed+bounceRNG,speed)
        ball.hitbox:setLinearVelocity(vx,vy)
        MovementL = 0
        MovementR = 1
        acb = 0
        sfx.paddlehit:play()
    end
            if ball.hitbox:enter("wallsideA") and bounce == 1 then --downbounce
            world:setGravity(speed+bounceRNG,-speed)
        ball.hitbox:setLinearVelocity(vx,-vy)
        MovementL = 0
        MovementR = 1
        acb = 0 
        sfx.paddlehit:play()
    end
        if ball.hitbox:enter("wallsideB") and bounce == 0 then

            world:setGravity(-speed-bounceRNG,speed)
        ball.hitbox:setLinearVelocity(-vx,vy)
        MovementL = 1
        MovementR = 0
        acb = 0
        sfx.paddlehit:play()
    end
           if ball.hitbox:enter("wallsideB") and bounce == 1 then

            world:setGravity(-speed-bounceRNG,-speed)
        ball.hitbox:setLinearVelocity(-vx,-vy)
        MovementL = 1
        MovementR = 0
        acb = 0
        sfx.paddlehit:play()
    end
if ball.hitbox:enter("blockup") and MovementR == 1 then
            world:setGravity(speed,-speed)
        ball.hitbox:setLinearVelocity(vx,-vy)
        sfx.paddlehit:play()
        acb = acb + 1
end
if ball.hitbox:enter("blockup") and MovementL == 1 then
            world:setGravity(-speed,-speed)
        ball.hitbox:setLinearVelocity(-vx,-vy)
        sfx.paddlehit:play()
        acb = acb + 1
end

if ball.hitbox:enter("blockdown") and MovementR == 1 then
            world:setGravity(speed,speed)
        ball.hitbox:setLinearVelocity(vx,vy)
        sfx.paddlehit:play()
        acb = acb + 1
end
if ball.hitbox:enter("blockdown") and MovementL == 1 then
            world:setGravity(-speed,speed)
        ball.hitbox:setLinearVelocity(-vx,vy)
        sfx.paddlehit:play()
        acb = acb + 1
end

if acb >= 2 and MovementR == 1 and bounce == 0 then
    world:setGravity(-speed,speed)
    ball.hitbox:setLinearVelocity(-vx,vy)

    MovementL = 1
    MovementR = 0
    acb = 0

end
if acb >= 2 and MovementL == 1 and bounce == 0 then
    world:setGravity(speed,speed)
    ball.hitbox:setLinearVelocity(vx,vy)

        MovementL = 0
        MovementR = 1
    acb = 0

end

if acb >= 2 and MovementR == 1 and bounce == 1 then
    world:setGravity(-speed,-speed)
    ball.hitbox:setLinearVelocity(-vx,-vy)

            MovementL = 1
        MovementR = 0
    acb = 0


end
if acb >= 2 and MovementL == 1 and bounce == 1 then
    world:setGravity(speed,-speed)
    ball.hitbox:setLinearVelocity(vx,-vy)

            MovementL = 0
        MovementR = 1
    acb = 0


end



sfx.paddlehit:setPitch(math.random(5,40)/10)



end
end
return w