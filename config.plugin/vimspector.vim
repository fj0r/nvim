"let g:vimspector_enable_mappings = 'HUMAN'

nmap <F3>          <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader><F3>  <Plug>VimspectorAddFunctionBreakpoint
nmap <F4>          <Plug>VimspectorToggleBreakpoint

nmap <F5>          <Plug>VimspectorContinue
nmap <Leader><F5>  <Plug>VimspectorRunToCursor
nmap <F6>          <Plug>VimspectorStepOver
nmap <F7>          <Plug>VimspectorStepInto
nmap <F8>          <Plug>VimspectorStepOut

nmap <F9>          <Plug>VimspectorRestart
nmap <Leader><F9>  <Plug>VimspectorPause
nmap <F10>         <Plug>VimspectorStop
nmap <Leader><F10> :VimspectorReset<CR>

if &ambiwidth != 'single'
    sign define vimspectorBP text==>         texthl=WarningMsg
    sign define vimspectorBPCond text=?>     texthl=WarningMsg
    sign define vimspectorBPDisabled text=!> texthl=LineNr
    sign define vimspectorPC text=->         texthl=MatchParen
    sign define vimspectorPCBP text=->       texthl=MatchParen
endif

let g:vimspector_sign_priority = {
  \    'vimspectorBP':         999,
  \    'vimspectorBPCond':     999,
  \    'vimspectorBPDisabled': 999,
  \    'vimspectorPC':         999,
  \    'vimspectorPCBP':       999,
  \ }

