require 'utils'

local nvim = require 'nvim'
local themes = {
    'atelier-sulphurpool',
    'atlas',
    'black-metal-bathory',
    'black-metal-gorgoroth',
    'classic-dark',
    'default-dark',
    'gruvbox-dark-hard',
    'gruvbox-light-medium',
    'horizon-dark',
    'mexico-light',
    'mocha',
}

math.randomseed(os.time())
local random_theme = themes[math.ceil(#themes * math.random())]
_G.BASE16_THEME = nvim.env.BASE16_THEME or random_theme
