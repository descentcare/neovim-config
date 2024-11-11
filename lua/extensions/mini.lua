--[[
  File: mini.lua
  Description: mini.nvim plugins configuration
  See: https://github.com/echasnovski/mini.nvim?tab=readme-ov-file
]]

-- Statusline
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md
require('mini.statusline').setup()

require('mini.indentscope').setup({
    delay = 0,
    symbol = '',
})

-- Files {{{
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md
--require('mini.files').setup({
--  windows = {
--    preview = true,
--    width_preview = 80,
--  }
--})
-- }}}

-- Comments
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md
require('mini.comment').setup()

-- Autopairs
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md
require('mini.pairs').setup()
