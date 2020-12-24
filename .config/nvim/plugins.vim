call plug#begin('~/.config/nvim/plugged')
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'SirVer/ultisnips'
    Plug 'adoy/vim-php-refactoring-toolbox'
    Plug 'airblade/vim-gitgutter'
    Plug 'chr4/nginx.vim'
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'edkolev/tmuxline.vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'justinmk/vim-sneak'
    Plug 'jwalton512/vim-blade'
    " Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'
    Plug 'mattn/emmet-vim'
    Plug 'mgee/lightline-bufferline'
    Plug 'mike-hearn/base16-vim-lightline'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neomake/neomake'
    Plug 'posva/vim-vue'
    Plug 'rafaqz/ranger.vim'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
call plug#end()

let g:table_mode_corner=' | '

"/**
" * airblade/vim-gitgutter
" */
let g:gitgutter_map_keys = 0

"/**
" * edkolev/tmuxline.vim
" */
nmap <leader>tr \init:Tmuxline<cr>

let g:tmuxline_theme = 'lightline'
let g:tmuxline_preset = 'powerline'
let g:tmuxline_status_justify = 'left'

"/**
" * fatih/vim-go
" */
" let g:go_auto_sameids = 1
" let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
" let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "locationlist"
" let g:go_metalinter_autosave = 1

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
" * neomake/neomake
" */
let g:neomake_open_list = 2

let g:neomake_error_sign = {'text': ''}
let g:neomake_warning_sign = {'text': ''}
let g:neomake_info_sign = {'text': ''}
let g:neomake_message_sign = {'text': ''}

" let g:neomake_php_enabled_makers = ['php']

call neomake#configure#automake('rw')

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
" * Shougo/deoplete.nvim
" */
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#complete_method = "omnifunc"
" let deoplete#tag#cache_limit_size = 25000000

" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"/**
" * SirVer/ultisnips
" */
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
