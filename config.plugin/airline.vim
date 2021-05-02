if g:nvim_preset == 'core'
	let g:airline_extensions = [ "branch" ]
	let g:airline_highlighting_cache = 1
else
	let g:airline_extensions = [
		\"branch", "fugitiveline", "keymap",
		\"mundo", "quickfix", "term",
		\"whitespace", "wordcount"
		\]
endif

" base16_gruvbox_dark_hard badwolf
let g:airline_theme='base16_gruvbox_dark_hard'

let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'jsformatter'
