let g:nvim_preset = exists('$NVIM_PRESET') ? $NVIM_PRESET: 'core'

let g:nvim_home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &rtp.=','.g:nvim_home

for fpath in split(globpath(resolve(expand(g:nvim_home.'/config')), '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(resolve(expand(g:nvim_home.'/config.plugin')), '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(resolve(expand(g:nvim_home.'/config.lua')), '*.lua'), '\n')
  execute 'luafile' fpath
endfor
" vim: set fdl=0 fdm=marker:
