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
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <M-j> <C-W><S-j>
noremap <M-k> <C-W><S-k>
noremap <M-h> <C-W><S-h>
noremap <M-l> <C-W><S-l>
" move between tabs
noremap <M-q> :tabprevious<CR>
noremap <M-w> :tabnext<CR>

" Go to home and end using capitalized directions
noremap H ^
noremap L $

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <M-f> <C-Right>
cnoremap <M-b> <C-Left>

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>
" NOTE:
noremap <silent><leader>p :set paste!<CR>

" 快速保存和退出
" Quickly close the current window
noremap <leader>q :q<CR>
command! -nargs=0  Q :qall
" Quickly save the current file
noremap <leader>w :w<CR>
command! -nargs=0  W :wall

nnoremap <expr><silent><Esc>
    \ len(filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"'))
    \ ? ":ccl<CR>" : "\<Esc>"

" 在Visual模式时，按Ctrl+c复制选择的内容
vmap <C-c> "+y

" 快速编辑自定义宏
noremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
