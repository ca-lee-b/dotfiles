filetype on
filetype plugin on
filetype indent on

syntax on

set number
set cursorline

set shiftwidth=4
set tabstop=3

set scrolloff=10
set incsearch

set showmode

autocmd VimEnter * NERDTree | wincmd p

let NERDTreeShowHidden=1
syntax on
set re=0

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'preservim/nerdtree'
Plug 'rose-pine/vim'
call plug#end()

set background=dark
colorscheme rosepine
