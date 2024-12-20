call plug#begin('~/.config/nvim/plugged')
Plug 'SirVer/ultisnips'
Plug 'chr4/nginx.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'github/copilot.vim'
Plug 'hashivim/vim-vagrant'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'justinmk/vim-sneak'
Plug 'jvirtanen/vim-hcl'
Plug 'jwalton512/vim-blade'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
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
call plug#end()
