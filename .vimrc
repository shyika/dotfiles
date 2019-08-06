call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'

" Plugins configuration

call plug#end()

syntax on
set number
set nocompatible
set ruler

" Default Whitespace
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Wrapping text by default
set wrap
set linebreak

" Searching and highlights
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" Keep more content at the bottom of the buffer
set scrolloff=3

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Directories for swp files
set backupdir=~/vim_backups//
set directory=~/vim_backups//
set undodir=~/vim_backups//
set viewdir=~/vim_backups//

" Set cursor line
" set cursorline

" Show (partial) command in the status line
set showcmd

set hidden
set history=1000

" Mappings
map <C-n> :NERDTreeToggle<CR>
" map <>
inoremap <C-F> <ESC>
inoremap <C-c> <ESC>

" Vim Terminal
" 256 colors for terminal vim
set t_Co=256
"Mode Settings
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
