vim.opt.list = true

require("indent_blankline").setup {
    filetype_exclude = {"markdown", "txt", "dashboard", "help"},
    show_current_context = true,
    show_first_indent_level = false,
    use_treesitter = true,
    space_char_blankline = " ",
    show_end_of_line = true
}
