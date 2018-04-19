local Class = require('src.modules.class')

local player = Class:extend('player')

function player:new(x, y, w, h)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
end

function player:draw()
    love.graphics.setColor(191, 0, 0, 255)
    love.graphics.rectangle('fill', self.x, self.y, self.w, self.h)
end

return player