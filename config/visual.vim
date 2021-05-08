set termguicolors

set guicursor+=a:blinkon0
"set cursorline
"set cursorcolumn
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

set lazyredraw "Don’t update screen during macro and script execution.

" 高亮冗余空格 :NOTE:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
