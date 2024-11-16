require("fzf-lua").setup({
    winopts = {
        height = 0.8,
        width = 0.8,
        row = 0,
        col = 1,
        preview = {
            layout = "vertical",
            vertical = "down:80%",
            wrap = "wrap",
        },
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
