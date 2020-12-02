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

" Keybindings
inoremap jj <ESC>
map <F2> :NERDTreeToggle<CR>

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Vimjas/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugins config
let jedi#show_call_signatures = 0
let jedi#documentation_command = ""
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 0

set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

" Python
au BufNewFile *.py 0r ~/.vim/skeleton.py " skeleton for new .py files

" Enable all Python syntax highlighting features
let python_highlight_all = 1
