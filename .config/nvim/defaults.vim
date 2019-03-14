set splitbelow
set splitright
set noshowmode
set scrolloff=4
set nolist
set listchars=tab:\ \ ,trail:~,space:·
set termguicolors
set noswapfile
set ignorecase
set smartcase
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldenable
set foldlevelstart=1
set foldmethod=indent
set colorcolumn=80
set wrap
set lazyredraw
set undodir=$HOME/.config/nvim/undo
set undofile
set tags=tags,.tags
set hlsearch
set cursorline

" highlight trailing spaces
match ErrorMsg '\s\+$'

" auto remove trailing spaces on save
autocmd FileType php,blade,javascript,vue,css autocmd BufWritePre <buffer> %s/\s\+$//e