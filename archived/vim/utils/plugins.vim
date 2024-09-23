call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/opt/fzf' }
Plug 'junegunn/fzf.vim'

Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

call plug#end()

" lightline configuration
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

" nerd tree configuration
let g:NERDTreeWinSize=48
