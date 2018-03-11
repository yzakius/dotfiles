call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'felipesousa/rupza'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'mateusbraga/vim-spell-pt-br'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'


call plug#end()

"----vim tips
"autocmd VimEnter * call Tip()

syntax on
filetype indent on
set number
set mouse=a
" Retirar os paranteses
let g:loaded_matchparen=1
"hi MatchParen cterm=none ctermbg=none ctermfg=magenta
"hi MatchParen cterm=none ctermbg=green ctermfg=blue

"-----Colors
"set background=dark
colorscheme monokai
"colorscheme rupza
set termguicolors
"set cursorline
"highlight  CursorLine cterm=none ctermbg=darkgray ctermfg=white 

"-----Clipboard
set clipboard=unnamedplus

"-----Maps
noremap <silent> <F3> :NERDTreeFind<CR>
noremap <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
"map <F2> :NERDTreeToggle<CR>
"map <CTRL+\> :NERDTreeToggle<CR>

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
