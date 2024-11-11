require("fzf-lua").setup({
    winopts = {
        layout = "horizontal",
    },
    keymap = {
        builtin = {
            true,
            ["<A-j>"]  = "preview-page-down",
            ["<A-k>"]    = "preview-page-up",
        }
    },
    awesome_colorschemes = {
        live_preview = true,
    },
})
