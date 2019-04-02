" Set leader keys
let mapleader = "\\"
let maplocalleader = "\\\\"

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
