set nocompatible

" Language options
syntax on
filetype plugin indent on

" Set default tex type
let g:tex_flavor = "latex"

" Set swapfile target directory
set dir=~/.vimswap

" Display options
set ruler
set number
set showmode
set showcmd
set laststatus=2 "Always show status line

set linebreak "Smart line breaks
set display+=lastline "Display partial last lines

set visualbell
set shm+=I "No intro

" Color options
colorscheme wombat

" Spacing options
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set autoindent

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" Mapping options
let mapleader = ","

" Diff options
set diffopt+=iwhite

" PLUGIN SETTINGS
" netrw settings
let g:netrw_list_hide= '^\.[^.].*'
let g:netrw_browse_split=3
" enable extended matching
runtime macros/matchit.vim
" NERDTree
map <Leader>t :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2
