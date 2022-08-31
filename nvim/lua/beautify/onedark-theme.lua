require("onedark").setup {
    style = "warm",
    transparent = false,
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    -- toggle theme style
    toggle_style_key = "<leader>ts", -- Default keybinding to toggle
    toggle_style_list = {"dark", "darker", "warm", "warmer"},
    --
    code_style = {
        comments = "italic",
        keywords = "none",
        functions = "italic",
        strings = "none",
        variables = "none"
    },
    --
    highlights = {Number = {fmt = "bold"}, TSNumber = {fmt = "bold"}}
}

require("onedark").load()
