---   Compile & Run  ---
vim.cmd([[
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
		exec "w"
		if &filetype == 'c'
				set splitbelow
				exec "!g++ % -o %<"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'haskell'
				set splitbelow
				exec "!ghc %"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'cpp'
				set splitbelow
				exec "!g++ -std=c++11 % -Wall -o %<"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'sh'
				:!bash %
		elseif &filetype == 'python'
				set splitbelow
				:sp
				:res -5
				:term python3 %
		elseif &filetype == 'lua'
				set splitbelow
				:sp
				:res -5
				:term lua %
		elseif &filetype == 'ruby'
				set splitbelow
				:sp
				:res -5
				:term ruby %
		elseif &filetype == 'html'
				silent! exec "!".g:mkdp_browser." % &"
		elseif &filetype == 'markdown'
				exec "MarkdownPreview"
		elseif &filetype == 'asciidoc'
				silent! exec "!brave % &"
		elseif &filetype == 'rust'
				set splitbelow
				:sp
				:res -5
				:term cargo run
		elseif &filetype == 'tex'
				silent! exec "VimtexStop"
				silent! exec "VimtexCompile"
		elseif &filetype == 'go'
				set splitbelow
				:sp
                :res -5
				:term go run .
		elseif &filetype == 'scheme'
				set splitbelow
				:sp
				:res -5
				:term racket %
        elseif &filetype == 'scala'
				set splitbelow
				:sp
				:res -5
				:term scala %
		endif
endfunc

]])
