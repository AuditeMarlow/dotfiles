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
  Plug 'junegunn/goyo.vim'
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
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-test/vim-test'
call plug#end()

" Load plugin configurations
for f in glob('~/.config/nvim/conf.d/plugins/*.vim', 0, 1)
  execute 'source' f
endfor
