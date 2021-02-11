command! Gca  Gcommit
command! Gcaa Gcommit --amend

command! Gps  Gpush
command! Gpsf Gpush -f
command! Gpl  Gpull

command! Gs   Gstatus
command! Gl   Glog
command! Gd   Gdiffsplit
command! Gb   Gblame

command! Gc   G checkout
command! Gn   G checkout -b

command! Gm   G merge
command! Gr   Grebase

nnoremap <Leader>s  :<C-u>Gstatus<CR>
nnoremap <Leader>v  :<C-u>Glog<CR>

