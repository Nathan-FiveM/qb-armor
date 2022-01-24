fx_version 'cerulean'
game 'gta5'

author 'Les'
description 'qb-armor will allow you to save armor values to be applied after login.'
version '1.0.0'

server_scripts { 
    'server.lua',
    '@oxmysql/lib/MySQL.lua'
}
client_script 'client.lua'

lua54 'yes'
