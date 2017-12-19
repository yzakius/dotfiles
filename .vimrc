call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'mateusbraga/vim-spell-pt-br'

call plug#end()

syntax on
filetype indent on
set number
set mouse=a

"-----Colors
color dracula
"set cursorline
"highlight  CursorLine cterm=none ctermbg=darkgray ctermfg=white 
"colorscheme seagrey-dark
"let g:seagrey_dark_CursorLineNr = 'on'
"let g:seagrey_light_CursorLineNr = 'off'
"let g:seagrey_dark_LineNr = 'off'
"let g:seagrey_light_LineNr = 'off'

"-----Clipboard
set clipboard=unnamedplus

"-----Maps
noremap <silent> <F3> :NERDTreeFind<CR>
noremap <F2> :NERDTreeToggle<CR>
"map <F2> :NERDTreeToggle<CR>
"map <CTRL+\> :NERDTreeToggle<CR>
"
"testes
setlocal wrap
setlocal linebreak
set noswapfile
set tabstop=4
iab pcom '''
iab bcd ```
iab cd. <code></code>


" Ruby
"set autoindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

"Spell
set spellfile=~/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType md setlocal spell
autocmd FileType md setlocal spelllang=en,pt_br

"Airline like powerline
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
