" Config Vim

filetype plugin indent on
set encoding=utf-8
set clipboard=unnamedplus
syntax on
set number
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green
filetype on

" Plugins

" Keybindings

inoremap jk <ESC>
map <F2> :NERDTreeToggle<CR>
nmap oo o<Esc>k
nmap OO O<Esc>j
