
GRID_WIDTH = 450
GRID_HEIGHT = 450

MARGIN_LEFT = 120
MARGIN_TOP = 105

GRID_ROW_X = MARGIN_LEFT
GRID_ROW_Y = (GRID_HEIGHT/3) + MARGIN_TOP
GRID_ROW_YY = (GRID_HEIGHT/3*2) + MARGIN_TOP
GRID_ROW_WIDTH = GRID_WIDTH
GRID_ROW_HEIGHT = 4

GRID_COL_X = (GRID_WIDTH/3) + MARGIN_LEFT
GRID_COL_XX = (GRID_WIDTH/3*2) + MARGIN_LEFT
GRID_COL_Y = MARGIN_TOP
GRID_COL_WIDTH = 4
GRID_COL_HEIGHT = GRID_HEIGHT

imagePlayer_1 = love.graphics.newImage("Images/o.png")
imagePlayer_2 = love.graphics.newImage("Images/x.png")

function love.load()
    love.window.setTitle("Tic Tac Toe")

    font = love.graphics.newFont("Fonts/SourceSansPro-Regular.ttf", 48)
    love.graphics.setFont(font)
end

function love.draw()    
    drawBoard()
    love.graphics.setColor(love.math.colorFromBytes(247, 101, 140))
    love.graphics.print("Player 1", 80, 5)
    love.graphics.print("Player 2", 400, 5)
    love.graphics.draw(imagePlayer_1, 260, 15, 0, 0.8, 0.8)
    love.graphics.draw(imagePlayer_2, 580, 17, 0, 0.7, 0.7)

    drawBoardHover() 
    
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(imagePlayer_1, MARGIN_LEFT + 12, MARGIN_TOP + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_1, GRID_COL_X + 12, MARGIN_TOP + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_1, GRID_COL_XX + 12, MARGIN_TOP + 15, 0, 2, 2)

    love.graphics.draw(imagePlayer_2, MARGIN_LEFT + 15, GRID_ROW_Y + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_2, GRID_COL_X + 15, GRID_ROW_Y + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_2, GRID_COL_XX + 15, GRID_ROW_Y + 15, 0, 2, 2)

    love.graphics.draw(imagePlayer_2, MARGIN_LEFT + 15, GRID_ROW_YY + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_2, GRID_COL_X + 15, GRID_ROW_YY + 15, 0, 2, 2)
    love.graphics.draw(imagePlayer_2, GRID_COL_XX + 15, GRID_ROW_YY + 15, 0, 2, 2)

    --love.graphics.draw(imagePlayer_2, GRID_COL_X, MARGIN_TOP, 0, 2, 2)
end

function drawBoard()
    drawBoxes()
    drawGrid()

    drawSquare(MARGIN_LEFT, MARGIN_TOP)
    drawSquare(GRID_COL_X, MARGIN_TOP)
    drawSquare(GRID_COL_XX, MARGIN_TOP)
    
    drawSquare(MARGIN_LEFT, GRID_ROW_Y)
    drawSquare(GRID_COL_X, GRID_ROW_Y)
    drawSquare(GRID_COL_XX, GRID_ROW_Y)
    
    drawSquare(MARGIN_LEFT, GRID_ROW_YY)
    drawSquare(GRID_COL_X, GRID_ROW_YY)
    drawSquare(GRID_COL_XX, GRID_ROW_YY)
 end

function drawBoxes()
    local borderRadius = 10
    love.graphics.setColor(love.math.colorFromBytes(34, 40, 42))
    love.graphics.rectangle("fill", 40, 80, 620, 500, borderRadius, borderRadius)
    
    love.graphics.rectangle("fill", 40, 10, 300, 60, borderRadius, borderRadius)
    love.graphics.rectangle("fill", 360, 10, 300, 60, borderRadius, borderRadius)
end 

function drawGrid()
    love.graphics.setColor(255, 255, 255)

    love.graphics.rectangle("fill", GRID_ROW_X, GRID_ROW_Y, GRID_ROW_WIDTH, GRID_ROW_HEIGHT)
    love.graphics.rectangle("fill", GRID_ROW_X, GRID_ROW_YY, GRID_ROW_WIDTH, GRID_ROW_HEIGHT)

    love.graphics.rectangle("fill", GRID_COL_X, GRID_COL_Y, GRID_COL_WIDTH, GRID_COL_HEIGHT)
    love.graphics.rectangle("fill", GRID_COL_XX, GRID_COL_Y, GRID_COL_WIDTH, GRID_COL_HEIGHT)
end

function drawSquare(x, y)
    love.graphics.setColor(love.math.colorFromBytes(41, 54, 61))
    love.graphics.rectangle("fill", x + 7, y + 7, 140, 140, 5, 5)
end

function drawBoardHover()
    local mousePosX, mousePosY = love.mouse.getPosition()
    
    if mousePosX > MARGIN_LEFT and mousePosX < GRID_COL_XX + 148 then

        if mousePosY > MARGIN_TOP and mousePosY < GRID_ROW_Y then

            if mousePosX > MARGIN_LEFT and mousePosX < GRID_COL_X then
                drawHover(MARGIN_LEFT, MARGIN_TOP)

            elseif mousePosX > GRID_COL_X and mousePosX < GRID_COL_XX then
                drawHover(GRID_COL_X, MARGIN_TOP)

            elseif mousePosX > GRID_COL_XX and  mousePosX < GRID_COL_XX + GRID_HEIGHT then
                drawHover(GRID_COL_XX, MARGIN_TOP)

            end

        elseif mousePosY >  GRID_ROW_Y and mousePosY < GRID_ROW_YY then

            if mousePosX > MARGIN_LEFT and mousePosX < GRID_COL_X then
                drawHover(MARGIN_LEFT, GRID_ROW_Y)        

            elseif mousePosX > GRID_COL_X and mousePosX < GRID_COL_XX then
                drawHover(GRID_COL_X, GRID_ROW_Y)        

            elseif mousePosX > GRID_COL_XX and  mousePosX < GRID_COL_XX + GRID_HEIGHT then
                drawHover(GRID_COL_XX, GRID_ROW_Y)

            end

        elseif mousePosY >  GRID_ROW_YY and mousePosY < GRID_ROW_YY + 148 then

            if mousePosX > MARGIN_LEFT and mousePosX < GRID_COL_X then
                drawHover(MARGIN_LEFT, GRID_ROW_YY)

            elseif mousePosX > GRID_COL_X and mousePosX < GRID_COL_XX then
                drawHover(GRID_COL_X, GRID_ROW_YY)

            elseif mousePosX > GRID_COL_XX and  mousePosX < GRID_COL_XX + GRID_HEIGHT then
                  drawHover(GRID_COL_XX, GRID_ROW_YY)
            end
        end
    end
end

function drawHover(x, y)
    love.graphics.setColor(love.math.colorFromBytes(123,94,198))
    love.graphics.rectangle("fill", x + 7, y + 7, 140, 140, 5, 5)
end