let g:lightline = {
  \   'colorscheme': 'gruvbox_material',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'filename', 'readonly', 'modified' ],
  \              [ 'gitdiff' ]
  \     ]
  \   },
  \   'component_function': {
  \     'gitbranch': 'FugitiveHead',
  \     'filename': 'LightlineFilename',
  \   },
  \   'inactive': {
  \     'left': [ [ 'absolutepath', 'gitversion' ] ],
  \   },
  \   'component_expand': {
  \     'gitdiff': 'lightline#gitdiff#get',
  \   },
  \   'component_type': {
  \     'gitdiff': 'middle',
  \   },
  \}

if 0
    let g:lightline.separator = {
      \   'left': '', 'right': ''
      \}
    let g:lightline.subseparator = {
      \   'left': '', 'right': ''
      \}
endif

let g:lightline.tabline = {
  \   'left': [ ['tabs']  ],
  \   'right': [ ['close']  ]
  \}
set showtabline=1  " Show tabline
set guioptions-=e  " Don't use GUI tabline

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"gitdiff
let g:lightline#gitdiff#indicator_added = 'A: '
let g:lightline#gitdiff#indicator_deleted = 'D: '
let g:lightline#gitdiff#separator = ' '
