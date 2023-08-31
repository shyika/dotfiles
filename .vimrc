call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'valloric/youcompleteme'
Plug 'mxw/vim-jsx'
Plug 'chriskempson/base16-vim'
Plug 'simeji/winresizer'

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" YouCompleteMe and UltiSnips compatibility.
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabCrMapping = 0

" Plugins configuration
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
colorscheme base16-default-dark
set termguicolors
" let base16colorspace=256

syntax on
set number
set nocompatible
set ruler


" Default Whitespace
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

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

" use system buffer istead
" set clipboard+=unnamed

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
:nnoremap <C-o> :buffers<CR>:buffer<Space>
inoremap <C-F> <ESC>
inoremap <C-c> <ESC>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
nnoremap <C-d> Ypk<CR>
" Vim Terminal
" 256 colors for terminal vim
" set t_Co=256
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
____________________________________________________
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

syntax on
set number

