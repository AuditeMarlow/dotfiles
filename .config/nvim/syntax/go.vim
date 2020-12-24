setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal noexpandtab
setlocal foldmethod=syntax

NeomakeDisable

command! -bang A call go#alternate#Switch(<bang>0, 'edit')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')
command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
