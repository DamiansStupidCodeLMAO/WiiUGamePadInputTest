function love.load()
    gamepad = love.joystick.getJoysticks()[1]
    bg = love.graphics.newTexture("WiiUGradientBG.png")
    top = love.graphics.newTexture("WiiUTop.png")
    touch = {x=0,y=0}
    touchtime = 0
    font = love.graphics.newFont("standard", 16)
    fontMid = love.graphics.newFont("standard", 32)
    fontBig = love.graphics.newFont("standard", 64) 
    fontXL = love.graphics.newFont("standard", 128)
    fontXL:setLineHeight(0.75)
end

function int2bool(int) --should work with any flavor of number but whatever
    return int>0 
end

function stencilTop()
    love.graphics.rectangle("fill",0,0,width,24*(height/480))
    love.graphics.ellipse("fill", width/2, 24*(height/480), width/2, 16)
end

function love.draw(screen)
    love.graphics.setFont(fontMid)
    local width, height = love.graphics.getDimensions()
    love.graphics.setLineWidth(5*(width/854))
    love.graphics.setColor(1.25,1.25,1.25,1)
    love.graphics.draw(bg,0,0,0,width/3,height/2)
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(top,0,0,0,width/854,height/480)
    love.graphics.printf("Gamepad Input Test", 0, 0, width/(width/854), "center", 0, width/854)
    love.graphics.setColor(0.25,0.25,0.3,1)
    --i'm sorry in advance to anyone who reads this janky ass code. no i'm not fixing it i'm not making a quality product here
    love.graphics.circle("line", (width/854)*64, (height/480)*96, (width/854)*50)
    love.graphics.circle("line", (width-((width/854)*64)), (height/480)*96, (width/854)*50)
    if not gamepad:isGamepadDown("leftstick") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.circle("fill", (width/854)*(64+(gamepad:getGamepadAxis("leftx")*30)), (height/480)*(96+(gamepad:getGamepadAxis("lefty")*-30)), (width/854)*20)
    if not gamepad:isGamepadDown("rightstick") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.circle("fill", width-((width/854)*(64-(gamepad:getGamepadAxis("rightx")*30))), (height/480)*(96+(gamepad:getGamepadAxis("righty")*-30)), (width/854)*20)
    love.graphics.setColor(0,0,0,1)
    love.graphics.setFont(fontMid)
    if gamepad:isGamepadDown("leftstick") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(1,1,1,1) end
    love.graphics.print("", (width/854)*(48+(gamepad:getGamepadAxis("leftx")*30)), (height/480)*(72+(gamepad:getGamepadAxis("lefty")*-30)), 0, (width/854))
    if gamepad:isGamepadDown("rightstick") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(1,1,1,1) end
    love.graphics.print("", width-(width/854)*(80-(gamepad:getGamepadAxis("rightx")*30)), (height/480)*(72+(gamepad:getGamepadAxis("righty")*-30)), 0, (width/854))
    love.graphics.setFont(fontBig)
    if not int2bool(gamepad:getGamepadAxis("triggerleft")) then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("", (width/854)*128, 32*(height/480), 0, (width/854))
    if not gamepad:isGamepadDown("leftshoulder") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("", (width/854)*128, 88*(height/480), 0, (width/854))
    if not int2bool(gamepad:getGamepadAxis("triggerright")) then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("", width-((width/854)*192), 32*(height/480), 0, (width/854))
    if not gamepad:isGamepadDown("rightshoulder") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("", width-((width/854)*192), 88*(height/480), 0, (width/854))
    love.graphics.setFont(fontXL)
    if not gamepad:isGamepadDown("a") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n", width-(144*(width/854)), 144*(height/480), 0, (width/854)/3)
    if not gamepad:isGamepadDown("b") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n", width-(144*(width/854)), 144*(height/480), 0, (width/854)/3)
    if not gamepad:isGamepadDown("x") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n", width-(144*(width/854)), 144*(height/480), 0, (width/854)/3)
    if not gamepad:isGamepadDown("y") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n", width-(144*(width/854)), 144*(height/480), 0, (width/854)/3)
    if not gamepad:isGamepadDown("start") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n\n\n", width-(96*(width/854)), 128*(height/480), 0, (width/854)/3)
    if not gamepad:isGamepadDown("back") then love.graphics.setColor(0.25,0.25,0.3,1) else love.graphics.setColor(0.75,0.75,0.8,1) end
    love.graphics.print("\n\n\n\n\n", width-(96*(width/854)), 128*(height/480), 0, (width/854)/3)
    love.graphics.setColor(0.25,0.25,0.3,1)
    love.graphics.print("\n", 16*(width/854), 128*(height/480), 0, (width/854))
    love.graphics.setColor(0.75,0.75,0.8,1)
    if gamepad:isGamepadDown("dpup") then
        love.graphics.print("", 16*(width/854), 128*(height/480), 0, (width/854))
    end
    if gamepad:isGamepadDown("dpdown") then
        love.graphics.print("", 16*(width/854), 128*(height/480), 0, (width/854))
    end
    if gamepad:isGamepadDown("dpleft") then
        love.graphics.print("", 16*(width/854), 128*(height/480), 0, (width/854))
    end
    if gamepad:isGamepadDown("dpright") then
        love.graphics.print("", 16*(width/854), 128*(height/480), 0, (width/854))
    end
    love.graphics.setFont(fontMid)
    if screen == "gamepad" then
        love.graphics.setColor(0.25,0.25,0.25,touchtime)
        love.graphics.circle("fill", touch.x, touch.y, 10)
        love.graphics.setColor(0.25,0.25,0.25,1)
        love.graphics.printf("Tap the screen to test touch.", 0, height-96, width, "center")
        love.graphics.printf(" - Exit", 0, height-56, width, "center")
    elseif screen == "tv" then
        love.graphics.setColor(0.25,0.25,0.25,1)
        love.graphics.setLineWidth(2*(width/854))
        love.graphics.rectangle("line", width/2-427, height/2-240, 854, 480)
        love.graphics.setColor(0.25,0.25,0.25,touchtime)
        love.graphics.circle("fill", touch.x+(width/2-427), touch.y+(height/2-240), 10)
        love.graphics.setColor(0.25,0.25,0.25,1)
        love.graphics.printf("Use the Wii U GamePad to test controls.", 0, height-96, width, "center")
    end
end

function love.touchpressed()
    touchlock = true
end

function love.touchreleased()
    touchlock = false
end

function love.touchmoved(id, x, y, dx, dy, pressure)
        touch = {x = x, y = y}
        touchtime = 1
end

function love.update(dt)
    if not touchlock and touchtime > 0 then
        touchtime = touchtime - dt*6
    end
end
