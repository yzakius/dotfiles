call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'mateusbraga/vim-spell-pt-br'

call plug#end()

syntax on
filetype indent on
set number
set mouse=a

"-----Colors
"color industry
set cursorline
highlight  CursorLine cterm=none ctermbg=darkgray ctermfg=white 

"-----Clipboard
set clipboard=unnamedplus

"-----Maps
map <F2> :NERDTreeToggle<CR>
"map <CTRL+\> :NERDTreeToggle<CR>
"
"testes
setlocal wrap
setlocal linebreak

"Spell
set spellfile=~/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType md setlocal spell
autocmd FileType md setlocal spelllang=en,pt_br
