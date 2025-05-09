filetype on
filetype plugin on
filetype indent on

set mouse=a
set number
set cursorline
set backspace=2
set shiftwidth=4
set tabstop=2
set clipboard=unnamed
set scrolloff=10
set incsearch

set showmode

autocmd VimEnter * NERDTree | wincmd p

let NERDTreeShowHidden=1
syntax on
set re=0

" Remaps
" TS Gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

call plug#begin('~/.vim/plugged')

" Discord Rich Prescence
Plug 'vimsence/vimsence'

" Coc + LSPs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'prisma/vim-prisma'
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Colorschemes
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'rose-pine/vim'
Plug 'ntk148v/komau.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'nanotech/jellybeans.vim'

" Other
Plug 'vim-airline/vim-airline'
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


" Coc
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


set termguicolors
set background=dark
colorscheme gruvbox 
