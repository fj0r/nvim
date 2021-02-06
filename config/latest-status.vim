" 记忆最后编辑状态
if empty(glob(g:nvim_plugged.'/vim-workspace'))
	autocmd BufReadPost *
	    \ if line("'\"") > 1 && line("'\"") <= line("$") |
	    \   exe "normal! g`\"" |
	    \ endif
endif
