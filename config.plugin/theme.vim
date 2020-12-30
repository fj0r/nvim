set termguicolors

let g:gruvbox_material_background = "hard"
let g:gruvbox_material_sign_column_background = "none"
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

hi Visual guibg=#003333

set cursorline " 突出显示当前行
"set cursorcolumn " 突出显示当前列
"autocmd InsertLeave,WinEnter * set cursorcolumn
"autocmd InsertEnter,WinLeave * set nocursorcolumn


set lazyredraw "Don’t update screen during macro and script execution.

" 高亮冗余空格 :NOTE:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
