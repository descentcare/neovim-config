--[[
File: plugins.lua
Description: This file needed for loading plugin list into lazy.nvim and loading plugins
Info: Use <zo> and <zc> to open and close foldings
See: https://github.com/folke/lazy.nvim
]]

require "helpers/globals"

return {
  -- Mason {{{
      {
          "williamboman/mason.nvim",
          build = ":MasonUpdate",
          dependencies = {
              "williamboman/mason-lspconfig.nvim",
              "neovim/nvim-lspconfig",
          },
          config = function()
              require "extensions.mason"
          end
      },
  -- }}}

  -- Which key {{{
      {
          "folke/which-key.nvim",
          event = "VeryLazy",
          config = true,
          init = function()
              vim.o.timeout = true
              vim.o.timeoutlen = 300
          end,
      },
  -- }}}

  -- Telescope {{{
--    {
--        "nvim-telescope/telescope.nvim",
--        branch = "0.1.x",
--        lazy = false,
--        dependencies = {
--            "nvim-lua/plenary.nvim",
--            "ahmedkhalf/project.nvim",
--        },
--        config = function()
--            require "extensions.telescope"
--        end
--    },
  -- }}}

  -- CMP {{{
      {
          "hrsh7th/nvim-cmp",
          event = "InsertEnter",
          dependencies = {
              "L3MON4D3/LuaSnip",
              "saadparwaiz1/cmp_luasnip",
              "hrsh7th/cmp-nvim-lsp",
              "hrsh7th/cmp-path",
              "hrsh7th/cmp-emoji",
              "hrsh7th/cmp-nvim-lsp-signature-help",
              "hrsh7th/cmp-nvim-lua",
              "rafamadriz/friendly-snippets",
          },
          config = function()
              require "extensions.cmp"
          end
      },
  -- }}}

  -- LSP Kind {{{
      {
          "onsails/lspkind-nvim",
          lazy = true,
          config = function()
              require "extensions.lspkind"
          end
      },
  -- }}}

  -- Git Signs{{{
      {
          "lewis6991/gitsigns.nvim",
          lazy = false,
          config = function()
              require "extensions.gitsigns"
          end
      },
  -- }}}

  -- Trouble {{{
      {
          "folke/trouble.nvim",
          dependencies = "kyazdani42/nvim-web-devicons",
          config = function()
              require "extensions.trouble"
          end,
      },
  -- }}}

  -- TreeSitter {{{
      {
          "nvim-treesitter/nvim-treesitter",
          lazy = false,
          build = ":TSUpdate",
          event = { "BufReadPost", "BufNewFile" },
          config = function()
              require "extensions.treesitter"
          end
      },
  -- }}}

  -- Theme: Gruvbox {{{
      {
          "ellisonleao/gruvbox.nvim",
      },
  -- }}}

  -- Theme: Ofirkai {{{
      {
          "ofirgall/ofirkai.nvim",
      },
  -- }}}

  -- Theme: Meadow {{{
      {
          "kuznetsss/meadow.nvim",
      },
  -- }}}

  -- Themify {{{
      {
          "lmantw/themify.nvim",
          lazy = false,
          priority = 999,

          config = {}
      },
  -- }}}

  -- Mini.nvim {{{
      {
          "echasnovski/mini.nvim",
          version = false,
          config = function ()
              require("extensions.mini")
          end
      },
  -- }}}

  -- FTerm {{{
      {
          "numToStr/FTerm.nvim",
      },
  -- }}}

  -- tabby {{{
      {
          'nanozuki/tabby.nvim',
          dependencies = 'nvim-tree/nvim-web-devicons',
          config = function()
              require "extensions.tabby"
          end,
      },
  -- }}}

  -- icon-picker {{{
      {
          "ziontee113/icon-picker.nvim",
          dependencies = {
              "stevearc/dressing.nvim",
              "ibhagwan/fzf-lua",
          },
          config = function()
              require("icon-picker").setup({ disable_legacy_commands = true, })
          end,
      },
  -- }}}

  -- Neotree {{{
      {
          "nvim-neo-tree/neo-tree.nvim",
          branch = "v3.x",
          dependencies = {
              "nvim-lua/plenary.nvim",
              "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
              "MunifTanjim/nui.nvim",
              -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
          },
          config = function()
              require "extensions.neotree"
          end,
      },
  -- }}}

  -- Fzf-lua {{{
      {
          "ibhagwan/fzf-lua",
          -- optional for icon support
          dependencies = { "nvim-tree/nvim-web-devicons" },
          config = function()
              require "extensions.fzf"
          end
      },
  -- }}}

  -- Roslyn {{{
      {
          "seblj/roslyn.nvim",
          ft = "cs",
          opts = {
              -- your configuration comes here; leave empty for default settings
          }
      },
  -- }}}

  -- eyeliner {{{
      {
          'jinh0/eyeliner.nvim',
          config = function()
              require'eyeliner'.setup {
                  highlight_on_key = true
              }
          end
      },
  -- }}}
  -- OmniSharp {{{
      --{
          --'OmniSharp/omnisharp-vim',
      --},
  -- }}}
  }
