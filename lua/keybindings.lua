require "helpers/globals"
require "helpers/keyboard"

local wk = require("which-key")

-- Global {{{
wk.add({
  { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover information"},
  { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to declaration" },
  { "gr", "<cmd>FzfLua lsp_references<cr>", desc = "Go to references"},
  { "dm", "<cmd>%s/\\r//g<cr>", desc = "Delete carriage return"},
})
-- }}}

-- LSP {{{
wk.add({
  {
    { "<leader>l", group = "LSP" },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename symbol" },
  }
})
 -- }}}

-- Telescope {{{
wk.add({
  {
    { "<leader>fn", "<cmd>Nerdy<cr>", desc = "Search Nerd Font glyphs" },
  }
})
-- }}}

-- Fzf-lua {{{
wk.add({
    { "<leader>f", group = "FzfLua" },
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find files" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Grep in files" },
    { "<leader>fj", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
    { "<leader>fp", "<cmd>FzfLua oldfiles<cr>", desc = "Oldfiles" },
    { "<leader>fq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix list" },
    { "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "Previous Telescope window" },
    { "<leader>fz", "<cmd>FzfLua<cr>", desc = "Open FzfLua" },
})
-- }}}

-- File Explorer {{{
wk.add({
    { "<leader>n", "<cmd>Neotree toggle left<cr>", desc = "Toggle file explorer" },
})
-- }}}

-- Trouble {{{
wk.add({
    { "<leader>x", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle trouble" },
})
-- }}}

-- FTerm {{{
wk.add({
    { "<A-i>", "<cmd>lua require('FTerm').toggle()<cr>", desc = "Toggle terminal", mode = 'n' },
    {
        "<A-i>",
        "<c-\\><c-n><cmd>lua require('FTerm').toggle()<cr>",
        desc = "Toggle terminal",
        mode = 't'
    },
})
-- }}}
