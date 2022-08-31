local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = {
        "c", "cpp", "go", "gomod", "lua", "python", "haskell", "html", "css",
        "rust", "json", "yaml", "toml", "bash", "fish", "help", "rust", "ruby",
        "latex", "bibtex", "vim", "markdown", "make", "scala"
    },
    sync_install = false,
    highlight = {
        enable = true,
        disable = {"html", "txt", "latex"},
        additional_vim_regex_highlighting = false
    },
    indent = {enable = true, disable = {"yaml"}},
    incremental_selection = {enable = true},

    rainbow = {enable = true, extended_mode = true, max_file_lines = nil}
}
