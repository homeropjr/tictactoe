
GRID_WIDTH = 450
GRID_HEIGHT = 450
MARGIN_LEFT = 180
MARGIN_TOP = 125

function love.load()
    love.window.setTitle("Tic Tac Toe")
end

function love.draw()    
    local x, y = love.mouse.getPosition()

    if y >= MARGIN_TOP and y < (GRID_HEIGHT/3) + MARGIN_TOP then
        if  x >= MARGIN_LEFT and x <= (GRID_WIDTH/3) + MARGIN_LEFT then
            love.graphics.setColor(1, 0, 0, 3)
            love.graphics.rectangle("fill", MARGIN_LEFT, MARGIN_TOP, 150, 150)

        elseif x >= (GRID_WIDTH/3) + MARGIN_LEFT and x <= (GRID_WIDTH/3*2) + MARGIN_LEFT then
            love.graphics.setColor(0, 1, 0)
            love.graphics.rectangle("fill", (GRID_WIDTH/3) + MARGIN_LEFT, MARGIN_TOP, 150, 150)
        
        elseif x >= (GRID_WIDTH/3*2) + MARGIN_LEFT and x <= (GRID_WIDTH/3*3) + MARGIN_LEFT then        
            love.graphics.setColor(0, 0, 1)
            love.graphics.rectangle("fill", (GRID_WIDTH/3*2) + MARGIN_LEFT, MARGIN_TOP, 150, 150)        
        end

    elseif y >= (GRID_HEIGHT/3) + MARGIN_TOP and y <= (GRID_WIDTH/3*2) + MARGIN_LEFT then
        if  x >= MARGIN_LEFT and x <= (GRID_WIDTH/3) + MARGIN_LEFT then
            love.graphics.setColor(0.1, 1, 0.5)
            love.graphics.rectangle("fill", MARGIN_LEFT, (GRID_HEIGHT/3) + MARGIN_TOP, 150, 150)

        elseif x >= (GRID_WIDTH/3) + MARGIN_LEFT and x <= (GRID_WIDTH/3*2) + MARGIN_LEFT then
            love.graphics.setColor(0, 1, 0.6)
            love.graphics.rectangle("fill", (GRID_WIDTH/3) + MARGIN_LEFT, (GRID_HEIGHT/3) + MARGIN_TOP, 150, 150)
        
        elseif x >= (GRID_WIDTH/3*2) + MARGIN_LEFT and x <= (GRID_WIDTH/3*3) + MARGIN_LEFT then        
            love.graphics.setColor(0, 0, 1)
            love.graphics.rectangle("fill", (GRID_WIDTH/3*2) + MARGIN_LEFT, MARGIN_TOP, 150, 150)        
        end

    else       
        -- if  x >= MARGIN_LEFT and x <= (GRID_WIDTH/3) + MARGIN_LEFT then
        --     love.graphics.setColor(50, 50, 20)
        --     love.graphics.rectangle("fill", MARGIN_LEFT, MARGIN_TOP, 150, 150)

        -- elseif x >= (GRID_WIDTH/3) + MARGIN_LEFT and x <= (GRID_WIDTH/3*2) + MARGIN_LEFT then
        --     love.graphics.setColor(0, 1, 0)
        --     love.graphics.rectangle("fill", (GRID_WIDTH/3) + MARGIN_LEFT, MARGIN_TOP, 150, 150)
        
        -- elseif x >= (GRID_WIDTH/3*2) + MARGIN_LEFT and x <= (GRID_WIDTH/3*3) + MARGIN_LEFT then        
        --     love.graphics.setColor(0, 0, 1)
        --     love.graphics.rectangle("fill", (GRID_WIDTH/3*2) + MARGIN_LEFT, MARGIN_TOP, 150, 150)        
        -- end
    end

 
    drawboard()
end

function drawboard()    
    love.graphics.setColor(255, 255, 255)    

    love.graphics.rectangle("fill", MARGIN_LEFT, (GRID_HEIGHT/3) + MARGIN_TOP, GRID_WIDTH, 5)
    love.graphics.rectangle("fill", MARGIN_LEFT, (GRID_HEIGHT/3*2) + MARGIN_TOP, GRID_WIDTH, 5)

    love.graphics.rectangle("fill", (GRID_WIDTH/3) + MARGIN_LEFT, MARGIN_TOP, 5, GRID_HEIGHT)
    love.graphics.rectangle("fill", (GRID_WIDTH/3*2) + MARGIN_LEFT, MARGIN_TOP, 5, GRID_HEIGHT)    
end