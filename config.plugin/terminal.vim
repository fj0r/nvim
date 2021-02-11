let g:terminal_height = 20
let g:terminal_key = '<c-t>'
"let g:terminal_fixheight = 1
let g:terminal_close = 1
let g:terminal_list = 0

if !$VIM_N_DUAL_ESC
  tnoremap jk <c-\><c-n>
  tnoremap kj <c-\><c-n>
  autocmd TermEnter * set timeoutlen=150
  autocmd TermLeave * set timeoutlen=1000
else
  tnoremap <Esc> <c-\><c-n>
endif

for i in ['zsh', 'bash']
    if executable(i)
        let g:terminal_shell = i
        break
    endif
endfor

