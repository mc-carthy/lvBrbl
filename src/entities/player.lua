local Class = require('src.modules.class')

local player = Class:extend('player')

local speed = 100

function player:new(x, y, w, h)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
end

function player:move(dt)
    local right = love.keyboard.isDown('right')
    local left = love.keyboard.isDown('left')

    if right and not left then
        self.x = self.x + speed * dt
    elseif left and not right then
        self.x = self.x - speed * dt
    end
end

function player:draw()
    love.graphics.setColor(191, 0, 0, 255)
    love.graphics.rectangle('fill', self.x, self.y, self.w, self.h)
end

return player