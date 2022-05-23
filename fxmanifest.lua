fx_version 'cerulean'
game 'gta5'

author 'Booya#0001'
description 'Edits and additionals with Jerzy#9709\'s assistance. Original inspiration and editing from amir_expert#1911'
version 'Release'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    '@qb-apartments/config.lua',
    '@qb-garages/config.lua',
}

client_scripts {
    'client/main.lua',
    'client/animation.lua',
    'client/discordia.lua',
    'client/room_creation.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/discordia.lua',
    'server/room_creation.lua'
}

files {
    'html/*.html',
    'html/js/*.js',
    'html/img/*.png',
    'html/css/*.css',
    'html/fonts/*.ttf',
    'html/fonts/*.otf',
    'html/fonts/*.woff',
    'html/img/backgrounds/*.png',
    'html/img/apps/*.png',
}

lua54 'yes'

dependency '/assetpacks'