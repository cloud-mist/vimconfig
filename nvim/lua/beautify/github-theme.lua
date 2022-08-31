-- Example config in Lua
require("github-theme").setup(
    {
        theme_style = "dimmed",
        function_style = "italic",
        comment_style = "NONE",
        sidebars = {"qf", "vista_kind", "terminal", "packer"},
        colors = {hint = "orange", error = "#ff0000"}
    }
)

require("lualine").setup {
    options = {
        theme = "github_dimmed"
    }
}
