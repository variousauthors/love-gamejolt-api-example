# Love Gamejolt-API Integration: Example App

This project is a small app written in LOVE2D, using nomoon's boilerplate project structure. Run it from
the command-line, passing your own username and token, and it will post a high-score to one of my projects
on GameJolt.

```
git clone git@github.com:variousauthors/love-gamejolt-api-example.git
love love-gamejolt-api-example/ [username] [token]
```

If you see: `UPLOADING SCORE...` then the library works. Otherwise, figure out why it doesn't
work and send me a pull request.

## The Important Bits

Here is the code that matters:

```lua
    -- instantiate your GJ connection
    local gj = GameJolt(69075, "41aec52658ec6053ed1031803240a2bd") -- an unpublished test project of mine

    local username = arg[2]
    local token = arg[3]

    -- set the username and token, and make a requiest
    gj.connect_user(username, token)
    gj.add_score("100 points", 100)
```

## License

LÖVE2D Boilerplate is licensed under the Apache License, version 2 (see [LICENSE.md](LICENSE.md)).
