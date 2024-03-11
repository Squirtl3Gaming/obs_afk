fx_version 'cerulean'
games {'gta5'}

lua54 'yes'

author 'Squirtle_gaming'
description 'obs_afk'
version '1.0.0'

client_scripts {
  'client.lua'
}

server_scripts {
  "server.lua"
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

dependencies {
  'ox_lib'
}
