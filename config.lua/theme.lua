local nvim = require 'nvim'
local base16 = require 'base16'
base16(base16.themes[nvim.env.BASE16_THEME or "gruvbox-dark-soft"], true)
