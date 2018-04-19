local engine = {}

setmetatable(engine, {
    __index = engine,
    __call = function(t, ...) 
        t:init(...)
        return t
    end
})

function engine:init(w, h)
    game = {}
    game.gameWidth = w or 1024
    game.gameHeight = h or 720
    game.screenWidth = love.graphics.getWidth()
    game.screenHeight = love.graphics.getHeight()
    game.ratio = math.min((game.screenHeight / game.gameHeight), game.screenWidth / game.gameWidth)
    print(game.ratio)
end

return engine