set nocompatible

" add main config for syntax
syntax on
set encoding=utf-8
so ~/.vim/utils/plugins.vim

" colorschemes
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
set t_Co=256
set cursorline
let g:lightline = { 'colorscheme': 'onehalfdark' }
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" show hidden files on nerd tree
let NERDTreeShowHidden=1

" show numbers on the left side
set number
" set relativenumber for more comodity
set relativenumber
" can copy and paste from the clopboard
set clipboard=unnamed

" for highlight the matches
set showmatch

set autoindent
filetype indent on
" set the tab with 2 spaces
set tabstop
set tabstop=2
set shiftwidth=2

" enable the mouse
set mouse=a
" enable the title
set title
set titlestring=\ %-25.55F\ %a%r%m titlelen=90

" search options
set hlsearch
set ignorecase

so ~/.vim/utils/coc.vim
so ~/.vim/utils/maps.vim
