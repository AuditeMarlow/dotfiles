setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal noexpandtab
setlocal foldmethod=syntax

command! -bang A call go#alternate#Switch(<bang>0, 'edit')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')
command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

nnoremap <leader>b <Plug>(go-build)
nnoremap <leader>c <Plug>(go-coverage)
nnoremap <leader>run <Plug>(go-run)
nnoremap <leader>rn <Plug>(go-rename)
nnoremap <leader>tt <Plug>(go-test)

"/**
" * fatih/vim-go
" */
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
" let g:go_fmt_command = "goimports"
" let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "locationlist"
let g:go_metalinter_autosave = 1
