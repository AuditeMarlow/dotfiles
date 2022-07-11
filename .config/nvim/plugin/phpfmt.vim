if exists('g:loaded_phpfmt') || &compatible
  finish
endif
let g:loaded_phpfmt = 1

command! -bar PhpFmt
      \ call phpfmt#fmt#format()

augroup vim-phpfmt
  autocmd!
  autocmd BufWritePost *.php
        \ call phpfmt#fmt#autoformat()
augroup END
