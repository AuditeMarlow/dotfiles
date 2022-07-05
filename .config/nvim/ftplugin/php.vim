let g:php_folding = 1

setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal foldlevel=5

nnoremap <leader>fmt <plug>PhpFmt
" autocmd BufWritePost *.php silent! call PhpFixFile()
" autocmd FileType php nmap <leader>pf :call PhpFixFile()<cr>
