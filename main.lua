require('src.utils.debug')

local Game = require('src.game')(320, 240)

function love.load()
end

function love.update(dt)

end

function love.draw()

end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end