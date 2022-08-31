require("lualine").setup {
    options = {theme = "tokyonight"}
}

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}

vim.cmd [[ colorscheme tokyonight ]]
