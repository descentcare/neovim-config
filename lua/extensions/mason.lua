--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]

local mason = require("mason")

mason.setup({
    registries = {
        'github:mason-org/mason-registry',
        'github:crashdummyy/mason-registry',
    },
})
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",             -- LSP for Lua language
        "ts_ls",              -- LSP for Typescript
        "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
        "cssls",              -- LSP for CSS
        "pyright",            -- LSP for Python
        "roslyn",             -- LSP for C#
        "rzls",               -- LSP for CSHTML
--      "gopls",              -- LSP for Go
  }
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup(
    {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}
