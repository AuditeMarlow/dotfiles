"/**
" * itchyny/lightline.vim
" */
set showtabline=2
let g:lightline = {
\   'colorscheme': 'base16_gruvbox_dark_medium',
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['gitbranch', 'cocstatus', 'readonly', 'filename']
\     ]
\   },
\   'tabline': {
\     'left': [['buffers']]
\   },
\   'component_function': {
\     'cocstatus': 'coc#status',
\     'filename': 'LightlineFilename',
\     'gitbranch': 'fugitive#head'
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers'
\   },
\   'component_type': {
\      'buffers': 'tabsel'
\   },
\ }

let g:lightline.separator = {
\   'left': '', 'right': ''
\ }

let g:lightline.subseparator = {
\   'left': '', 'right': ''
\ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
