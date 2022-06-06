--[[  
    - Player 1
    - Player 2
    - Grid 3 x 3

]]

function love.load()
    love.window.setTitle("Tic Tac Toe")
end

function love.draw()    
    drangrid()
end

function drangrid()
    love.graphics.rectangle("fill", 316, 130, 15, 410)
    love.graphics.rectangle("fill", 472, 130, 15, 410)

    love.graphics.rectangle("fill", 150, 266, 410, 15)
    love.graphics.rectangle("fill", 150, 332, 410, 15)
end
