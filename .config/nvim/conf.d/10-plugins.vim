call plug#begin('~/.config/nvim/plugged')
Plug 'SirVer/ultisnips'
Plug 'chr4/nginx.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'github/copilot.vim'
Plug 'hashivim/vim-vagrant'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'codecompanion', 'vim-plug']}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.local/share/fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'justinmk/vim-sneak'
Plug 'jvirtanen/vim-hcl'
Plug 'jwalton512/vim-blade'
Plug 'lepture/vim-jinja'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mattn/webapi-vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafaqz/ranger.vim'
Plug 'rust-lang/rust.vim'
Plug 'storyn26383/vim-vue'
Plug 'towolf/vim-helm'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-test/vim-test'
Plug 'vim-vdebug/vdebug'

" All required for codecompanion.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope.nvim'
Plug 'olimorris/codecompanion.nvim'
call plug#end()
