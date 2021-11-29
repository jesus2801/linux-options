set nocompatible

syntax on
set encoding=utf-8

" colorschemes
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
set t_Co=256
set cursorline
" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


set number
set relativenumber
set clipboard=unnamed

"set cursorline
"highlight Normal ctermbg=NONE
set showmatch

set autoindent
filetype indent on
set tabstop
set tabstop=2
set shiftwidth=2

set mouse=a
set title

set hlsearch
set ignorecase

nmap <F6> :NERDTreeToggle<CR>

so ~/.vim/utils/plugins.vim
so ~/.vim/utils/maps.vim
