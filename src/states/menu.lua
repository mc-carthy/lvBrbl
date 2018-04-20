local menu = {}

function menu:load()
    print(self.tag .. ' hello')
end

function menu:exit()
    print(self.tag .. ' bye')
end

return menu