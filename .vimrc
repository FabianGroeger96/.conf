" Config Vim

" Basic configs
syntax on
filetype on
set encoding=utf-8
set number
set ai
set hlsearch
set ruler
set clipboard+=unnamed 
set showmatch
highlight Comment ctermfg=green

" PEP8 indentation for Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Keybindings
inoremap jk <ESC>
map <F2> :NERDTreeToggle<CR>

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugins config
let jedi#show_call_signatures = 0
let jedi#documentation_command = ""

set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree
