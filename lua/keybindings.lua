require "helpers/globals"
require "helpers/keyboard"

local wk = require("which-key")

-- Global {{{
wk.add({
  { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover information"},
  { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to declaration" },
  { "gr", "<cmd>Telescope lsp_references<cr>", desc = "Go to references"},
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
    { "<leader>f", group = "Telescope" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep in files" },
    { "<leader>fj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
    { "<leader>fp", "<cmd>Telescope oldfiles<cr>", desc = "Oldfiles" },
    { "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix list" },
    { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Previous Telescope window" },
    { "<leader>fs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace symbols" },
    { "<leader>ft", "<cmd>Telescope<cr>", desc = "Open Telescope" },
  }
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
    { "<A-i>", "<c-\\><c-n><cmd>lua require('FTerm').toggle()<cr>", desc = "Toggle terminal", mode = 't' },
})
-- }}}
