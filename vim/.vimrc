syntax on
set encoding=utf-8

set number
set relativenumber
set clipboard=unnamed

set cursorline
highlight Normal ctermbg=NONE
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
