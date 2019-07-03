" Set leader keys
let mapleader = "\\"
let maplocalleader = ","

" config binds
nnoremap <leader>ev :Files ~/.config/nvim<cr>
nnoremap <leader>init :so ~/.config/nvim/init.vim<cr>

" vim-plug binds
nnoremap <leader>install :PlugInstall<cr>
nnoremap <leader>update :PlugUpdate<cr>
nnoremap <leader>clean :PlugClean<cr>

" buffer binds
nnoremap <silent><leader>bd :bufdo bd<cr>
nnoremap <silent><c-h> :bp!<cr>
nnoremap <silent><c-l> :bn!<cr>

" location list binds
nnoremap <localleader>n :lnext<cr>
nnoremap <localleader>m :lprev<cr>

" Open terminal & terminal applications
nnoremap <leader>term :vsplit<cr>:terminal<cr>i

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" PHP specific binds
function! PhpCsFixerFixFile()
    silent !php-cs-fixer fix "%"
    e!
endfunction

autocmd FileType php nmap <leader>pf :call PhpCsFixerFixFile()<cr>

" Go specific binds
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
