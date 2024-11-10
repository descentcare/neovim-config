--[[
  File: init.lua
  Description: Entry point file for neovim
]]

vim.g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys

-- Bootsraping plugin manager
require "lazy-bootstrap"

-- Settings
require "settings"

-- Plugin management {{{
local lazy = require("lazy")
lazy.setup("plugins")
-- }}}

require "keybindings"

require "colorscheme"
