" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_lagadath")
  finish
endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! Whid lua require'lagadath'.whid()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_lagadath = 1
