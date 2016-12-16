
syntax on

" Habilita auto-indentação
if has("autocmd")
	filetype plugin indent on
endif

" vim-airline
let g:airline_theme ='simple'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" Dicionário pt_BR - Vero (Libreoffice)
" set spell spelllang=pt

" Números nas linhas
set number
"
"set cursorline
set cursorline
hi CursorLine term=bold cterm=underline

" Tema
color desert

" Clipboard
set clipboard=unnamedplus
