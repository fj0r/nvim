let g:terminal_height = 20
let g:terminal_key = '<c-t>'
"let g:terminal_fixheight = 1
tnoremap <Esc> <c-\><c-n>
let g:terminal_close = 1
let g:terminal_list = 0

for i in ['zsh', 'bash']
    if executable(i)
        let g:terminal_shell = i
        break
    endif
endfor

