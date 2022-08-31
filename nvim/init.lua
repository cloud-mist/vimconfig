--
--      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
--      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
--      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
--      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
--      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
--      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
--
--                                              MY_VIMRC
require("plugins")
require("tools.impatient")
require("tools.filetype")
-- Basic
require("basic.basic")
require("basic.keymap")
require("basic.compileRun")
require("basic.alg")
-- cmp&lsp
require("cmp.nvim-cmp")
require("cmp.luasnip")
require("lsp.lsp-installer")
require("lsp.lsp-config")
require("lsp.fidget")
require("lsp.lsp_signature")
--- lsp.lang
require("lsp.lang.mdpre")
require("lsp.lang.vimtex")
-- tool
require("tools.fterm")
require("tools.gitsign")
require("tools.neoformat")
require("tools.telescope")
require("tools.colorizer")
require("tools.comment")
-- beautify
require("beautify.dashboard")
require("beautify.onedark-theme")
require("beautify.lualine")
require("beautify.treesitter")
require("beautify.indentline")

--
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.loaded_perl_provider = 0 -- not load perl

--
-- viml
--
vim.cmd([[
" rainbow-ts
"hi rainbowcol1 guifg=#787878
hi rainbowcol1 guifg=#708090

" fcitx
let s:fcitx_cmd = executable("fcitx5-remote") ? "fcitx5-remote" : "fcitx-remote"
autocmd InsertLeave * let b:fcitx = system(s:fcitx_cmd) | call system(s:fcitx_cmd.' -c')
autocmd InsertEnter * if exists('b:fcitx') && b:fcitx == 2 | call system(s:fcitx_cmd.' -o') | endif

" 退出时将光标设为Beam
autocmd VimLeave * set guicursor=a:ver25

" Config File Highlight
autocmd BufRead,BufNewFile config,conf,*rc setf dosini

]])
