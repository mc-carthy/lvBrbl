local Class = require('src/modules/class')

local input = Class:extend('Input Manager')

function input:new()
    self.inputs = {}
end

function input:add(id, event, key, func)
    assert(self.inputs[id] == nil, 'Input ID: ' .. id .. ' already exists')
    if not key then return end
    if not self.inputs[key] then
        self.inputs[key] = {}
    end
    if not self.inputs[key][event] then
        self.inputs[key][event] = {}
    end
    table.insert(self.inputs[key][event], 
        {
            name = id,
            fn = func
        }
    )
end

function input:check(key, event)
    if self.inputs[key] then
        if self.inputs[key][event] then
            for k, v in pairs(self.inputs[key][event]) do
                v.fn()
            end
        end
    end
end

return input