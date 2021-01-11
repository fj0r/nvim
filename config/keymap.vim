" <leader>
let g:mapleader=" "

" 插入模式下 kj 映射为 ESC，两次按键间隔不能超过 100毫秒
if $VIM_DUAL_ESC
  inoremap kj <ESC>
  autocmd InsertEnter * set timeoutlen=150
  autocmd InsertLeave * set timeoutlen=1000
endif

"go to end of parenthesis/brackets/quotes without switching insert mode
inoremap <C-e> <C-o>A

" j k 在屏幕行间上下移动；gj gk 在物理行间上下移动
"noremap j gj
"noremap k gk
"noremap gj j
"noremap gk k

" move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <M-j> <C-W><S-j>
nnoremap <M-k> <C-W><S-k>
nnoremap <M-h> <C-W><S-h>
nnoremap <M-l> <C-W><S-l>
" move between tabs
nnoremap <M-q> :tabprevious<CR>
nnoremap <M-w> :tabnext<CR>

" Go to home and end using capitalized directions
nnoremap H ^
nnoremap L $

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <M-f> <C-Right>
cnoremap <M-b> <C-Left>

" 去掉搜索高亮
nnoremap <silent><leader>/ :nohls<CR>
" NOTE:
nnoremap <silent><leader>p :set paste!<CR>

nnoremap M :marks<CR>
" Quickly close the current window
nnoremap <leader>q :q<CR>
command! -nargs=0  Q :qall
" Quickly save the current file
nnoremap <leader>w :w<CR>
command! -nargs=0  W :wall
" reload file
command! -nargs=0  E :e!

nnoremap <expr><silent><Esc>
    \ len(filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"'))
    \ ? ":ccl<CR>" : "\<Esc>"

" 快速编辑自定义宏
nnoremap <leader>xm  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
