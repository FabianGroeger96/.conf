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
set backspace=2 " make backspace work like most other programs
set noshowmode

" Theme options
colorscheme onedark
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 0

" Keybindings
inoremap jj <ESC>
map <C-n> :NERDTreeToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

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
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'

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
let g:pymode_breakpoint_cmd = 'import pdb; pdb.set_trace()'
let g:pymode_lint = 1
let g:ycm_show_diagnostics_ui = 1
let g:pymode_folding = 0

set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

" Create default mappings
let g:NERDCreateDefaultMappings = 1
let NERDTreeShowHidden=1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" statusbar
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Python
" skeleton for new .py files
au BufNewFile *.py 0r ~/.conf/skeleton.py
