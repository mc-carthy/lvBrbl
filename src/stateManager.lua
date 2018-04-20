local Class = require('src/modules/class')
local sm = Class:extend('State Manager')

function sm:start(state)
    self.current = self.list[state]
    self.current:load()
end

function sm:loadAll(filename)
    self.list = require(filename)
    self:setTags()
end

function sm:setTags()
    for k, v in pairs(self.list) do
        v.tag = k
    end
end

function sm:switch(newState)
    self.current:exit()
    self.current = self.list[newState]
    self.current:load()
end

return sm