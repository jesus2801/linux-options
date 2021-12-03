" setear mapleader como ,
let mapleader = ","

" setear alt + j como <M-j>
execute "set <M-j>=\ej"

" moverse hacia arriba
nnoremap <M-k> :move -2<CR>

" setear alt + k como <M-k>
execute "set <M-k>=\ek"

" moverse hacia abajo
nnoremap <M-j> :move +1<CR>

" setear , + l para colocar ; la final
inoremap <leader>l <ESC>A;

" setear Ctrl + l para ir al final
inoremap <C-l> <ESC>A

" setear Ctrl + k para subir pantalla
nnoremap <C-k> <C-y>

" setear Ctrl + j para bajar pantalla
nnoremap <C-j> <C-e>

" setear , + n para abrir arbol de archivos (modo normal e insertar)
inoremap <leader>n <ESC>:NERDTreeToggle<CR>
nnoremap <leader>n <ESC>:NERDTreeToggle<CR>

" guardar el archivo actual
inoremap <leader>s <ESC>:w<CR>
nnoremap <leader>s :w<CR>

" subir el cursor 8 lineas arriba
nnoremap <S-k> 8k

" subir el cursos 8 lineas abajo
nnoremap <S-j> 8j

" cambiar a modo normal cuando estoy en insertar con kk
inoremap kk <Esc>

" salir de la terminal cuando estemos en modo terminal
tnoremap <Esc> <C-\><C-n>

" salir del archivo actual
nnoremap <leader>q :q<CR>
inoremap <leader>q <ESC>:q<CR>

nmap <leader>d <C-^><CR>
nmap <leader>f :Files<CR>
