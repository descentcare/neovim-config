require "helpers/globals"
require "helpers/keyboard"

local wk = require("which-key")

-- Global {{{
wk.add({
  { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover information"},
  { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to declaration" },
  { "dm", "<cmd>%s/\\r//g<cr>", desc = "Delete carriage return"},
})
-- }}}

-- LSP {{{
wk.add({
  {
    { "<leader>l", group = "LSP" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename symbol" },
    { "<leader>la", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Code action" },
    { "<leader>lu", "<cmd>FzfLua lsp_references<cr>", desc = "Go to usages"},
    { "<leader>li", "<cmd>FzfLua lsp_implementations<cr>", desc = "Implementations"},
    { "<leader>ld", "<cmd>FzfLua lsp_definitions<cr>", desc = "Definitions"},
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
    { "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "Previous FzfLua window" },
    { "<leader>fa", "<cmd>FzfLua awesome_colorschemes<cr>", desc = "Awesome Colorschemes" },
    { "<leader>fz", "<cmd>FzfLua<cr>", desc = "Open FzfLua" },
    { "<leader>fi", "<cmd>IconPickerNormal<cr>", desc = "Search Nerd Font glyphs" },
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
    { "<A-i>", "<c-\\><c-n><cmd>lua require('FTerm').toggle()<cr>",
        desc = "Toggle terminal", mode = 't' },
})
-- }}}
