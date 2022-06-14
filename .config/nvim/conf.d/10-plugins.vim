call plug#begin('~/.config/nvim/plugged')
  Plug 'SirVer/ultisnips'
  Plug 'chr4/nginx.vim'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'edkolev/tmuxline.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'hashivim/vim-vagrant'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'jvirtanen/vim-hcl'
  Plug 'jwalton512/vim-blade'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'majutsushi/tagbar'
  Plug 'mattn/emmet-vim'
  Plug 'mattn/webapi-vim'
  Plug 'morhetz/gruvbox'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'posva/vim-vue'
  Plug 'rafaqz/ranger.vim'
  Plug 'rust-lang/rust.vim'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-test/vim-test'
call plug#end()

let g:table_mode_corner=' | '

"/**
" * edkolev/tmuxline.vim
" */
nmap <leader>tr \init:Tmuxline<cr>

let g:tmuxline_theme = 'lightline'
let g:tmuxline_preset = 'minimal'
let g:tmuxline_status_justify = 'left'
let g:tmuxline_powerline_separators = 0

"/**
" * justinmk/vim-sneak
" */
let g:sneak#label = 1

nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

"/**
" * ludovicchabant/vim-gutentags
" */
let g:gutentags_ctags_tagfile = '.tags'

"/**
" * majutsushi/tagbar
" */
nmap <leader>tb :TagbarToggle<cr>

"/**
" * mattn/emmet-vim
" */
let g:user_emmet_leader_key='<C-e>'

"/**
" * posva/vim-vue
" */
autocmd FileType vue syntax sync fromstart

"/**
" * rafaqz/ranger.vim
" */
let g:ranger_terminal = "st"

map <leader>rr :RangerEdit<cr>
map <leader>rv :RangerVSplit<cr>
map <leader>rs :RangerSplit<cr>
map <leader>rt :RangerTab<cr>
map <leader>ri :RangerInsert<cr>
map <leader>ra :RangerAppend<cr>
map <leader>rc :set operatorfunc=RangerChangeOperator<cr>g@

"/**
" * SirVer/ultisnips
" */
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"