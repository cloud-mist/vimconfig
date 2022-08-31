-- {{{
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

local function map(mode, shortcut, command) keymap(mode, shortcut, command, opts) end

local function nmap(shortcut, command) map("", shortcut, command) end

local function nnmap(shortcut, command) map("n", shortcut, command) end

local function vnmap(shortcut, command) map("v", shortcut, command) end

local function ignore_snmap(shortcut, command)
    keymap("n", shortcut, command, opts) -- normanl
    keymap("x", shortcut, command, opts) -- visual
    keymap("o", shortcut, command, opts) -- operator-pending

    -- keymap("i", shortcut, command, opts) -- insert   no!!!
    -- keymap("t", shortcut, command, opts) -- termianl
    -- keymap("l", shortcut, command, opts) -- insert,command-line,lang-arg no!!!
end
-- }}}
-- ==================
-- ### BASIC  MAP ###
-- ==================
-- mapleader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- copy
nnmap("Y", "y$") -- copy current line
vnmap("Y", '"+y') -- copy to clipboard

ignore_snmap("l", "u") -- undo
nmap("<LEADER>rc", ":e ~/.config/nvim/init.lua<CR>")
nmap("<LEADER><CR>", ":nohlsearch<CR>")

-- search
ignore_snmap("-", "N")
ignore_snmap("=", "n")

-- Indent
nmap("<", "<<")
nmap(">", ">>")

--  ==  MOVE ==
--       ^
--       u
--   < n   i >
--       e
--       v
--

ignore_snmap("n", "h")
ignore_snmap("e", "j")
ignore_snmap("u", "k")
ignore_snmap("i", "l")

-- Insert
ignore_snmap("k", "i")
ignore_snmap("K", "I")

-- move quickly
ignore_snmap("U", "5k")
ignore_snmap("E", "5j")
ignore_snmap("W", "5w")
ignore_snmap("B", "5b")

ignore_snmap("N", "0") -- 移动到当前行首
ignore_snmap("I", "$") -- 移动到当前行尾

-- 重载，保存,退出
nmap("R", ":source ~/.config/nvim/init.lua<CR>")
nmap("S", ":w<CR>")
nmap("Q", ":q<CR>")

--                   ==  WINDOW  ==
-- 分屏- 键位映射
nmap("s", "<Nop>")
nmap("si", ":set splitright<CR>:vsplit<CR>")
nmap("sn", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>")
nmap("su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>")
nmap("se", ":set splitbelow<CR>:split<CR>")

-- 焦点移动
nmap("<LEADER>u", "<C-w>k")
nmap("<LEADER>e", "<C-w>j")
nmap("<LEADER>n", "<C-w>h")
nmap("<LEADER>i", "<C-w>l")

-- 窗口大小调整
nmap("<up>", "<cmd>res -5<CR>")
nmap("<down>", "<cmd>res +5<CR>")
nmap("<left>", "<cmd>vertical resize+5<CR>")
nmap("<right>", "<cmd>vertical resize-5<CR>")

-- 横竖切换
nmap("sh", "<C-w>t<C-w>K")
nmap("sv", "<C-w>t<C-w>H")

-- Tab management
nmap("tu", "<cmd>tabe<CR>")
nmap("tn", "<cmd>-tabnext<CR>")
nmap("ti", "<cmd>+tabnext<CR>")
nmap("tmn", "<cmd>-tabmove<CR>")
nmap("tmi", "<cmd>+tabmove<CR>")

-- ===================
-- ### PLUGIN  MAP ###
-- ===================
map("t", "<Esc>", "<C-\\><C-n>") -- terminal-mode
nmap("<C-g>", ":tabe<CR>:term lazygit<CR>") -- Lazygit

-- telescope
nnmap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnmap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnmap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnmap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

