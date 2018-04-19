require('src.utils.debug')

local Game = require('src.game')(320, 240)
local Player = require('src.entities.player')

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    player = Player(32, 32, 32, 32)
end

function love.update(dt)
    player:move(dt)
end

function love.draw()
    love.graphics.push()
        love.graphics.scale(game.ratio)
        player:draw()
        love.graphics.pop()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end