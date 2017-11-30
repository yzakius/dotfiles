" needs better comments... I know :~
call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'mateusbraga/vim-spell-pt-br'
Plug 'mrtazz/simplenote.vim'

call plug#end()

syntax on
filetype indent on
set number
set mouse=a

"----- Colors and Themes -----
color dracula
"set cursorline
"highlight  CursorLine cterm=none ctermbg=darkgray ctermfg=white 
"colorscheme desert

"----- Clipboard -------
set clipboard=unnamedplus

"----- Mapping ------
noremap <silent> <F3> :NERDTreeFind<CR>
noremap <F2> :NERDTreeToggle<CR>
"map <F2> :NERDTreeToggle<CR>
"map <CTRL+\> :NERDTreeToggle<CR>

"----- Test Area ------
setlocal wrap
setlocal linebreak
set noswapfile
set tabstop=4
iab bcd ```
iab cd. <code></code>

" ----- Ruby ------
"set autoindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

" ----- Spell ------
set spellfile=~/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType md setlocal spell
autocmd FileType md setlocal spelllang=en,pt_br


"-----Clipboard
set clipboard=unnamedplus

" ----- Autocompletes ------
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"----- Airline like powerline ------
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

