let g:nvim_home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &rtp.=','.g:nvim_home

let g:nvim_preset = exists('$NVIM_PRESET') ? $NVIM_PRESET: 'core'
let g:nvim_setup_plugins = exists('$NVIM_SETUP_PLUGINS')

if g:nvim_setup_plugins
    exec 'source' globpath(resolve(expand(g:nvim_home.'/config.plugin')), '__init__.vim')

else
    for fpath in split(globpath(resolve(expand(g:nvim_home.'/config')), '*.vim'), '\n')
        exe 'source' fpath
    endfor

    for fpath in split(globpath(resolve(expand(g:nvim_home.'/config.plugin')), '*.vim'), '\n')
        exe 'source' fpath
    endfor

    let s:coc_conf_files = split(globpath(resolve(expand(g:nvim_home.'/config.coc')), '*.vim'), '\n')
    for fpath in s:coc_conf_files
        exe 'source' fpath
    endfor

    "let &rtp.=','.g:nvim_home.'/config.lua'
    for fpath in split(globpath(resolve(expand(g:nvim_home.'/config.lua')), '*.lua'), '\n')
        exe 'luafile' fpath
    endfor
endif

" vim: set fdl=0 fdm=marker:
