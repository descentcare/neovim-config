--[[
  File: telescope.lua
  Description: Telescope plugin configuration
  See: https://github.com/nvim-telescope/telescope.nvim
]]
local telescope = require("telescope")
telescope.setup({
    defaults = {
        layout_strategy = 'vertical',
        layout_config = {
            vertical = {
                width = 0.99,
                height = 0.99,
                preview_height = 0.70,
                preview_cutoff = 0
            },
        },
    },
    pickers = {
        find_files = {
        }
    }
})

