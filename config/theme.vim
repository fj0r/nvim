set t_Co=256
"set termguicolors

set background=dark
colorscheme kuroi

"set background=light
"colorscheme solarized


set cursorline " 突出显示当前行
"set cursorcolumn " 突出显示当前列
"autocmd InsertLeave,WinEnter * set cursorcolumn
"autocmd InsertEnter,WinLeave * set nocursorcolumn


set lazyredraw "Don’t update screen during macro and script execution.

" 高亮冗余空格 :NOTE:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
