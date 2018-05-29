call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mileszs/ack.vim'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set inccommand=split
set clipboard=unnamedplus

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

let mapleader="\<space>"
" exemplo de append de ; no fim de cada linha
" n nodo normal, nore no recursive, map atalho para o modo normal
nnoremap <leader>; A;<esc>
" ev atalho, :vsplit abre uma view split, <cr> é o enter
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" souce carrega as configurações sem precisar sair do arquivo
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
" Usa um atalho para o FZF, <c-p> é control + p
nnoremap <c-p> :FZF<cr>
" Usa um atalho para o Ack, <c-f> é control + f
nnoremap <c-f> :Ack<space>
