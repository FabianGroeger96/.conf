" Config Vim

" Basic configs
syntax on
filetype on
filetype plugin on
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
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'python-mode/python-mode'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugins config
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_motion = 1
let g:pymode_indent = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_cmd = 'import pdb; pdp.set_trace()'
let g:pymode_lint = 1
let g:ycm_show_diagnostics_ui = 1

set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Python
" skeleton for new .py files
au BufNewFile *.py 0r ~/.conf/skeleton.py

" Enable all Python syntax highlighting features
let python_highlight_all = 1
