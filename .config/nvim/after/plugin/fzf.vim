"/**
" * junegunn/fzf.vim
" */
let g:fzf_layout = { 'down': '40%' }

" Hide statusline
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Augment Ag command with hidden preview window that can be enabled with "?" key
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \   fzf#vim#with_preview('right:40%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('right:40%:hidden', '?'), <bang>0)

" Same as above but for the Files command
command! -bang -nargs=* Files
  \ call fzf#vim#files(<q-args>,
  \   fzf#vim#with_preview('right:40%:hidden', '?'),
  \   <bang>0)


function! Search()
  let pattern = input('Search pattern: ')

  execute 'Rg '.pattern
endfunction

function! SearchBang()
  let pattern = input('Search pattern: ')

  execute 'Rg! '.pattern
endfunction

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :call Search()<cr>
" nnoremap <c-b> :Buffers<cr>
" nnoremap <c-x>p :Files ./vendor<cr>
" nnoremap <c-x>n :Files ./node_modules<cr>
