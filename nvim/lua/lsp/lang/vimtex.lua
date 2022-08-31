--- Vimtex ---
vim.cmd([[
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
let g:tex_flavor = "latex"
let g:vimtex_view_general_options = '-shell-escape '
let g:vimtex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"
let g:vimtex_compiler_progname = "nvr"
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_quickfix_mode = 1
let g:vimtex_motion_enabled = 0
]])
