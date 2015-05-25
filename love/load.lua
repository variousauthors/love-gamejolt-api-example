function love.load()
    require('game/controls')
    require('game/sounds')

    local username = arg[2]
    local token = arg[3]
    local gj = GameJolt(69075, "41aec52658ec6053ed1031803240a2bd")

    gj.connect_user(username, token)
    gj.add_score("100 points", 100)
end
