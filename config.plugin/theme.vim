set termguicolors

"material mix original
let g:gruvbox_material_palette = "material"
"hard medium soft
let g:gruvbox_material_background = "hard"
let g:gruvbox_material_sign_column_background = "none"
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

hi Visual guibg=#003333

set guicursor+=a:blinkon0
"set cursorline
"set cursorcolumn
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

set lazyredraw "Don’t update screen during macro and script execution.

" 高亮冗余空格 :NOTE:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
