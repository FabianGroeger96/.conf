" Config Vim

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

" Basic configs
set encoding=utf-8
syntax on
set number
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green
filetype on
set clipboard+=unnamed 
set showmatch

" Plugins
let jedi#show_call_signatures = 0
let jedi#documentation_command = ""

set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

" Keybindings
inoremap jk <ESC>
map <F2> :NERDTreeToggle<CR>
