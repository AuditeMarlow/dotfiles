call plug#begin('~/.config/nvim/plugged')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'SirVer/ultisnips'
    Plug 'adoy/vim-php-refactoring-toolbox'
    Plug 'airblade/vim-gitgutter'
    Plug 'chriskempson/base16-vim'
    Plug 'daviesjamie/vim-base16-lightline'
    Plug 'easymotion/vim-easymotion'
    Plug 'edkolev/tmuxline.vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'jwalton512/vim-blade'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'
    Plug 'mattn/emmet-vim'
    Plug 'mgee/lightline-bufferline'
    Plug 'mike-hearn/base16-vim-lightline'
    Plug 'morhetz/gruvbox'
    Plug 'neomake/neomake'
    Plug 'posva/vim-vue'
    Plug 'rafaqz/ranger.vim'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
call plug#end()

"/**
" * airblade/vim-gitgutter
" */
let g:gitgutter_map_keys = 0

"/**
" * easymotion/vim-easymotion
" */
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)<Paste>

" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"/**
" * edkolev/tmuxline.vim
" */
nmap <leader>tr \init:Tmuxline<cr>

let g:tmuxline_theme = 'lightline'
let g:tmuxline_preset = 'powerline'
let g:tmuxline_status_justify = 'left'

"/**
" * itchyny/lightline.vim
" */
set showtabline=2
let g:lightline = {
\   'colorscheme': 'base16_gruvbox_dark_medium',
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['gitbranch', 'readonly', 'filename']
\     ]
\   },
\   'tabline': {
\     'left': [['buffers']]
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\     'filename': 'LightlineFilename'
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

"/**
" * junegunn/fzf.vim
" */
" Hide statusline
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Augment Ag command with hidden preview window that can be enabled with "?" key
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 fzf#vim#with_preview('right:40%:hidden', '?'),
  \                 <bang>0)

" Same as above but for the Files command
command! -bang -nargs=* Files
  \ call fzf#vim#files(<q-args>,
  \                 fzf#vim#with_preview('right:40%:hidden', '?'),
  \                 <bang>0)

function! Search()
    let pattern = input('Search pattern: ')

    execute 'Ag '.pattern
endfunction

function! SearchBang()
    let pattern = input('Search pattern: ')

    execute 'Ag! '.pattern
endfunction

nnoremap <c-p> :Files<cr>
nnoremap <a-p> :Files!<cr>
nnoremap <c-f> :call Search()<cr>
nnoremap <a-f> :call SearchBang()<cr>
nnoremap <c-b> :Buffers<cr>
nnoremap <c-x>p :Files ./vendor<cr>
nnoremap <c-x>n :Files ./node_modules<cr>

"/**
" * ludovicchabant/vim-gutentags
" */
let g:gutentags_ctags_tagfile = '.tags'

"/**
" * majutsushi/tagbar
" */
nmap <leader>tt :TagbarToggle<cr>

"/**
" * mattn/emmet-vim
" */
let g:user_emmet_leader_key='<C-e>'

"/**
" * neomake/neomake
" */
let g:neomake_open_list = 2

let g:neomake_error_sign = {'text': ''}
let g:neomake_warning_sign = {'text': ''}
let g:neomake_info_sign = {'text': ''}
let g:neomake_message_sign = {'text': ''}

call neomake#configure#automake('rw')

"/**
" * posva/vim-vue
" */
autocmd FileType vue syntax sync fromstart

"/**
" * rafaqz/ranger.vim
" */
let g:ranger_terminal = "sakura -e"

map <leader>rr :RangerEdit<cr>
map <leader>rv :RangerVSplit<cr>
map <leader>rs :RangerSplit<cr>
map <leader>rt :RangerTab<cr>
map <leader>ri :RangerInsert<cr>
map <leader>ra :RangerAppend<cr>
map <leader>rc :set operatorfunc=RangerChangeOperator<cr>g@

"/**
" * Shougo/deoplete.nvim
" */
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#complete_method = "omnifunc"
let deoplete#tag#cache_limit_size = 25000000

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"/**
" * SirVer/ultisnips
" */
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
