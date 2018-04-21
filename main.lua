require('src.utils.debug')

Game = require('src.game')(320, 240)
Player = require('src.entities.player')

function love.load()
    Game:setDefaults('src/defaults')
    player = Player(32, 32, 32, 32)
    Game.Input:add('test', 'keypressed', 'h', function() print('Hello!') end)
    Game.Input:add('Quit Game', 'keypressed', 'escape', function() love.event.quit() end)
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
    Game.Input:check(key, 'keypressed')
end

function love.keyreleased(key)
    Game.Input:check(key, 'keyreleased')
end