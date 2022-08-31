-- 当没有找到格式化程序时，将按照如下方式自动格式化
vim.g.neoformat_basic_format_align = 1
vim.g.neoformat_basic_format_trim = 1
vim.g.neoformat_basic_format_retab = 0
vim.g.neoformat_only_msg_on_error = 1

vim.cmd([[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]])

-- 自动格式化
-- vim.cmd([[
-- au BufWritePre * try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry
-- ]])
-- vim.keybinds.gmap("n", "<leader>cf", "<cmd>Neoformat<CR>", vim.keybinds.opts)
