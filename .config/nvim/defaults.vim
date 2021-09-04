set autoindent
set cmdheight=2
set colorcolumn=80
set cursorline
set cursorcolumn
set equalalways
set expandtab
set foldenable
set foldlevelstart=99
set foldmethod=syntax
set hidden
set hlsearch
set ignorecase
set lazyredraw
set linebreak
set listchars=tab:\ \ ,trail:~,space:·
" set mouse=a
set nobackup
set nolist
set noshowmode
set noswapfile
set nowritebackup
" set number
" set relativenumber
set scrolloff=4
set shiftwidth=4
set shortmess+=c
set signcolumn=yes
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=8
set tags=tags,.tags
set termguicolors
set undodir=$HOME/.config/nvim/undo
set undofile
set updatetime=100
set wrap

" Automatically resize vim splits when window is resized
autocmd VimResized * wincmd =

filetype plugin indent on
syntax enable

" highlight trailing spaces
match ErrorMsg '\s\+$'

" auto remove trailing spaces on save
autocmd FileType php,blade,javascript,vue,css autocmd BufWritePre <buffer> %s/\s\+$//e







abbr yldlrll # yamllint disable-line rule:line-length
abbr yldrll # yamllint disable rule:line-length
abbr ylerll # yamllint enable rule:line-length
