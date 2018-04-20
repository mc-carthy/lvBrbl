require('src.utils.debug')

Game = require('src.game')(320, 240)
Game.SM:loadAll('src/states/list')
Game.SM:start('splash')
local Player = require('src.entities.player')

function love.load()
    Game:setDefaults('src/defaults')
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