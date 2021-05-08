command!                                                                Gc   Git commit
command!                                                                Gca  Git commit --amend

command! -complete=customlist,fugitive#PushComplete                     Gp   Git push
command! -complete=customlist,fugitive#PushComplete                     Gpf  Git push -f
command! -complete=customlist,fugitive#PullComplete                     Gl   Git pull
command! -complete=customlist,fugitive#FetchComplete                    Gf   Git fetch

command! -bar -bang -nargs=* -complete=customlist,fugitive#EditComplete Gd   Gvdiffsplit <f-args>
command! -complete=customlist,fugitive#BlameComplete                    Gb   Git blame

command! -complete=customlist,fugitive#ReadComplete -nargs=1            Gc   Git checkout <args>
command! -nargs=1                                                       Gn   Git checkout -b <args>

nnoremap <Leader>s                                                      :<C-u>Gstatus<CR>
nnoremap <Leader>v                                                      :<C-u>Glog<CR>

