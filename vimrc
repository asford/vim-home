set nocompatible

" Setup pathogen bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

" Print options
set printheader=%f\ (%N)%=Alex\ Ford\ <a.sewall.ford@gmail.com>"
set printoptions=number:y,left:5pc,right:5pc

" Color options
set t_Co=256
colorscheme wombat

" Spacing options
set shiftwidth=2
set tabstop=2
set expandtab
set cindent
set autoindent

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" Substitute options
set gdefault

" Mapping options
let mapleader = ","

" Move options
set mps+=<:>

" Diff options
set diffopt+=iwhite

" PLUGIN SETTINGS
" netrw settings
let g:netrw_list_hide= '^\.[^.].*'
let g:netrw_browse_split=3
" enable extended matching
runtime macros/matchit.vim
" NERDTree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2

" Taglist
map <Leader>c :TlistToggle<CR>
let Tlist_Enable_Fold_Column = 0

" Localvimrc
let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist="workspace/.*/.lvimrc"

" Command-T
let g:CommandTMaxFiles=30000

" Alignment plugins
if !hasmapto('<Plug>AM_tsq')	|map <unique> <Leader>as <Plug>AM_tsq|endif
