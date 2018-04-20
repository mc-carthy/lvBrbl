local splash = {}

function splash:load()
    print(self.tag .. ' hello')
end

function splash:exit()
    print(self.tag .. ' bye')
end

return splash