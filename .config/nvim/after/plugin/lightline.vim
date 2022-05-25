"/**
" * itchyny/lightline.vim
" */
set showtabline=2
let g:lightline = {
\   'colorscheme': 'base16_gruvbox_dark_hard',
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
\     'gitbranch': 'FugitiveHead'
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers'
\   },
\   'component_type': {
\      'buffers': 'tabsel'
\   },
\ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
