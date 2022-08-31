require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")

-- mapping
local function on_attach(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    local bufopts = {noremap = true, silent = true, buffer = bufnr}

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    -- lsp-config
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, bufopts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopts)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, bufopts)

end

-- Don't need config servers: to for
local servers = {
    -- Machine have, Don't reinstall
    "pyright", "clangd", "gopls", "rust_analyzer", "taplo", -- "tsserver", --    "hls",
    --
    -- not have,need lspinstaller
    "html", "prosemd_lsp", "texlab", "jsonls", "cssls", "metals"
}

for _, lsp in ipairs(servers) do lspconfig[lsp].setup {on_attach = on_attach} end

------------------------------ LANGUAGE -----------------------------
-- Need config

-- lua
-- {{{
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require"lspconfig".sumneko_lua.setup {
    on_attach = on_attach,
    cmd = {"lua-language-server"},
    filetypes = {"lua"},
    log_level = 2,
    root_dir = function() return vim.fn.getcwd() end,
    settings = {
        Lua = {
            runtime = {version = "LuaJIT", path = runtime_path},
            diagnostics = {globals = {"vim"}},
            workspace = {library = vim.api.nvim_get_runtime_file("", true)},
            telemetry = {enable = false}
        }
    }
}
-- }}}

-- hls

require'lspconfig'.hls.setup {
    on_attach = on_attach,
    cmd = {"haskell-language-server-wrapper", "--lsp"},
    filetypes = {"haskell", "lhaskell"}
}

-- tsserver
require'lspconfig'.tsserver.setup {
    on_attach = on_attach,
    cmd = {"typescript-language-server", "--stdio"},
    init_options = {hostInfo = "neovim"}
}

