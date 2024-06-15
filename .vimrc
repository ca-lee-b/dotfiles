filetype on
filetype plugin on
filetype indent on

syntax on

set number
set cursorline

set shiftwidth=4
set tabstop=4

set scrolloff=10
set incsearch

set showmode

autocmd VimEnter * NERDTree | wincmd p

let NERDTreeShowHidden=1
syntax on

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'rose-pine/vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set background=dark
colorscheme rosepine
