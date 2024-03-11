I recreated a thing, Nah serioulsy sick of players AFK walking in corners soo now they have to interact with a mini game. 

Default is 10 mins can be changed in config.cfg line 2

  ```lua
      timeAFK = 600, -- 10 minutes in seconds 
  ```

Use PS-UI if they fail the skill check player will be kicked after 90secs, Can be changed in client.lua line 22

  ```lua
    Citizen.Wait(90000) -- milliseconds
  ```
If you do not want admins or certain players to be kicked then you can add there Rockstar licence in the config.lua

  ```lua
    licenseID = {
      ["license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"] = true, -- Your rockstar License
      ["license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"] = true, -- Admin rockstar License
      ["license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"] = true, -- Admin rockstar License
      ["license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"] = true, -- Admin rockstar License
    },
  ```

Must remove -main of file name, Should look like this obs_afk

## Dependencies

[ps-ui](https://github.com/Project-Sloth/ps-ui)
[okokNotify](https://okok.tebex.io/package/4724993)

notifications can be changed easy by adding the exports from your notification script on line 15 and 21 
Simply replace okokNotify 

#

Enjoy guys !!!
