filetype on
filetype plugin on
filetype indent on

syntax on

set number
set cursorline

set shiftwidth=4
set tabstop=4

set scrolloff=5
set incsearch

set showmode

autocmd VimEnter * NERDTree | wincmd p

let NERDTreeShowHidden=1

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'rose-pine/vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
call plug#end()

