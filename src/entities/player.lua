local Class = require('src.modules.class')

local player = Class:extend('player')

function player:new(x, y, w, h)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    self.speedX = 100
end

function player:move(dt)
    local right = love.keyboard.isDown('right') and 1 or 0
    local left = love.keyboard.isDown('left') and -1 or 0
    local moveX = self.speedX * (right + left) * dt
    self.x = self.x + moveX
end

function player:draw()
    love.graphics.setColor(191, 0, 0, 255)
    love.graphics.rectangle('fill', self.x, self.y, self.w, self.h)
end

return player