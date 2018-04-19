local class = {}

function class:new() end

function class:extend(name) 
    local t = {}
    t.name = name
    t.__call = class.call
    t.__index = t
    setmetatable(t, self)
    return t
end

function class:__call(...)
    local t = setmetatable({}, self)
    t:new(...)
    return t
end

return class