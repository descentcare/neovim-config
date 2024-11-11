local theme = "ofirkai"
require("ofirkai").setup({
    theme = nil
})

require("meadow").setup({
    color_saturation = 80,
    color_value = 80,
})

cmd("color " .. theme)
