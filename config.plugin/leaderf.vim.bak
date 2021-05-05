let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'

let g:Lf_ShowHidden= 1
let g:Lf_ShowDevIcons = 0
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

if &ambiwidth == 'single'
    let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2" }
endif

let g:Lf_WildIgnore = {
    \ 'dir': ['.svn','.git','.hg'],
    \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \ }

let g:Lf_RgConfig = [
    \ "--glob=!.git/*",
    \ "--hidden"
  \ ]

let g:Lf_ShortcutF = "<leader>d"
noremap <leader>m :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" asyncTasks
noremap <leader>t :Leaderf --nowrap task<CR>
" --pcre2 for look-behind
noremap <leader>g :<C-U><C-R>=printf("Leaderf rg --wd-mode=Ac --pcre2 '(NOTE\|OPTIMIZE\|TODO\|HACK\|XXX\|FIXME\|BUG)(?=:)'")<CR><CR>

"noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>

let g:Lf_CommandMap = {
    \ '<C-x>': ['<C-s>'],
    \ '<C-]>': ['<C-v>'],
    \ '<C-T>': ['<C-t>'],
    \ '<C-s>': ['<C-x>'],
    \ '<C-v>': ['<C-]>'],
    \ }

let g:Lf_NormalMap = {
    \ "_":        [["<C-j>", "j"],
    \              ["<C-k>", "k"]],
    \ "Rg":       [["<ESC>", ':exec g:Lf_py "rgExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"rgExplManager.accept('h')\"<CR>"]],
    \ "File":     [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"fileExplManager.accept('h')\"<CR>"]],
    \ "Buffer":   [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"bufExplManager.accept('h')\"<CR>"]],
    \ "Mru":      [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"mruExplManager.accept('h')\"<CR>"]],
    \ "Tag":      [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"tagExplManager.accept('h')\"<CR>"]],
    \ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>'],
    \              ["s", ":exec g:Lf_py \"functionExplManager.accept('h')\"<CR>"]],
    \ }

noremap <leader>r :Leaderf rg --wd-mode=Ac<CR>
noremap go :<C-U>Leaderf rg --recall<CR>
noremap gb :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap gf :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>

" should use `Leaderf gtags --update` first {{{
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
" }}}

