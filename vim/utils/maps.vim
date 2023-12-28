" setear mapleader como ,
let mapleader = ","

" moverse hacia arriba
nnoremap <C-S-k> :move -2<CR>

" moverse hacia abajo
nnoremap <C-S-j> :move +1<CR>

" setear , + l para colocar ; la final
inoremap <leader>l <ESC>A;

" setear Ctrl + l para ir al final
inoremap <C-l> <ESC>A

" setear , + n para abrir arbol de archivos (modo normal e insertar)
"inoremap <leader>n <ESC>:NERDTreeToggle<CR>
"nnoremap <leader>n :NERDTreeToggle<CR>

" moverse entre ventanas
inoremap <leader>w <ESC><C-w>w
nnoremap <leader>w <C-w>w

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

" ir al archivo anterior
nnoremap <leader>d <C-^><CR>
inoremap <leader>d <ESC><C-^><CR>

" abrir el explorador de arhivos
"nnoremap <leader>f :Files<CR>
"inoremap <leader>f <ESC>:Files<CR>

" para utilizar emmet
"imap <leader>e <C-y>,

" buscar palabras en los archivos
"nnoremap <leader>g :Ag<CR>
"inoremap <leader>g <ESC>:Ag<CR>

" abrir nerd tree en el archivo actual
"nnoremap <leader>m :NERDTreeFind<CR>
"inoremap <leader>m <ESC>:NERDTreeFind<CR>

" recargar configuración
"nnoremap <leader>r :source ~/.vimrc<CR>
"inoremap <leader>r <ESC>:source ~/.vimrc<CR>

" duplicar linea hacia abajo 
nnoremap <leader>j yyp
inoremap <leader>j <ESC>yyp

" duplicar linea hacia arriba
nnoremap <leader>k yykp
inoremap <leader>k <ESC>yykp

" abrir historial de archivos
"nnoremap <leader>h :Buffer<CR>
"inoremap <leader>h <ESC>:Buffer<CR>

" limpiar todos los buffers activos
"nnoremap <leader>c :bufdo bd<CR>
"inoremap <leader>c <ESC>:bufdo bd<CR>

" mover linea havia arriba
"nnoremap <leader>b i{/*  */}<ESC>hhhi
"inoremap <leader>b {/*  */}<ESC>hhhi

" dividir verticalmente
nnoremap <leader>v :vsplit<CR>
inoremap <leader>v <ESC>:vsplit<CR>
