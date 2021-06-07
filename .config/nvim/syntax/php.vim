let g:php_folding = 1

setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal foldlevel=5

function! PhpTest()
    let methodName = substitute(tagbar#currenttag('%s', ''), '(.*)', '\1', '')
    execute '24sp +set\ nonumber\ norelativenumber term://docker-compose exec workspace phpunit '.expand('%:.').' --filter '.methodName
endfunction

command! PhpTest call PhpTest()
