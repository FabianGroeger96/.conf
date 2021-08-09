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
" relative line numbers
set number relativenumber
set nu rnu

" Keybindings
inoremap jj <ESC>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Plugins
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'heavenshell/vim-pydocstring'
Plug 'editorconfig/editorconfig-vim'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Theme options
colorscheme gruvbox
set background=dark

" Python
"
" add breakpoint to code
map <leader>b oimport pdb; pdb.set_trace()<Esc>

" Coc
"
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree
" Create default mappings
let g:NERDCreateDefaultMappings = 1
let NERDTreeShowHidden=1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" fzf
nnoremap <C-p> :GFiles<CR>

" statusbar
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" Docstring
let g:pydocstring_formatter = 'sphinx'
let g:pydocstring_doq_path = '/home/fabian/.local/bin/doq'
nmap <silent> <C-w> <Plug>(pydocstring)

" HTML configs
autocmd BufRead,BufNewFile *.htm,*.html,*.js,*.css setlocal tabstop=4 shiftwidth=4 softtabstop=4
