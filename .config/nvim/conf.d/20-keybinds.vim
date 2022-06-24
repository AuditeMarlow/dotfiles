" Set leader keys
let mapleader = "\\"

" config binds
nnoremap <leader>ev :Files ~/.config/nvim<cr>
nnoremap <leader>init :so ~/.config/nvim/init.vim<cr>

" vim-plug binds
nnoremap <leader>install :PlugInstall<cr>
nnoremap <leader>update :PlugUpdate<cr>
nnoremap <leader>clean :PlugClean<cr>

" buffer binds
nnoremap <silent><leader>bd :bufdo bd!<cr>

" location list binds
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lm :lprev<cr>

" Open terminal & terminal applications
nnoremap <leader>term :vsplit<cr>:terminal<cr>i

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Remove trailing whitespace
nnoremap <silent> <leader>tws :%s/\s\+$//e<cr>

" tagbar binds
nmap <leader>tb :TagbarToggle<cr>

" Stop terminal modes from being a pain in the ass
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif
