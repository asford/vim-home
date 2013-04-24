set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim

" Setup pathogen bundles
if !has('clientserver')
  call add(g:pathogen_disabled, 'AsyncCommand')
endif

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Language options
syntax on
filetype plugin indent on

" Set swapfile target directory
set dir=~/.vimswap

" Display options
set ruler
set number
set showmode
set showcmd
set laststatus=2 "Always show status line
let g:asynccommand_statusline_autohide = 1
set statusline=%<%f\ %h%m%r%=%.45{asynccommand#statusline()}\ %{fugitive#statusline()}\ %-14.(%l,%c%V%)\ %P

set linebreak "Smart line breaks
set display+=lastline "Display partial last lines
set backspace=start,eol,indent
set listchars=tab:→\ ,trail:·

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
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2
let NERDTreeIgnore = ['\.pyc$']

" Tagbar
nnoremap <silent> <Leader>o :TagbarToggle<CR>
let g:tagbar_left=1

" Gundo
nnoremap <silent> <Leader>u :GundoToggle<CR>

" AsyncCommand 
nnoremap <silent> <Leader>p :AsyncTogglePending<CR>

" Scratch 
nnoremap <silent> <Leader>sr :ScratchToggle<CR>

nnoremap <silent> <Leader>e :botright cwindow<CR>

" Localvimrc
let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist='\(/Volumes/fordas/rosetta.*/.lvimrc\)\|\(workspace/.*/.lvimrc\)\|\(\(/work\)\|\(gpfs.*WORK\)/fordas/rosetta.*/.*/.lvimrc\)'

" Command-T
let g:CommandTMaxFiles=30000

" Alignment plugins
if !hasmapto('<Plug>AM_tsq')	|map <unique> <Leader>as <Plug>AM_tsq|endif

" Surround mappings
let g:surround_indent = 1
imap ( <Plug>Isurround)
imap { <Plug>Isurround}
imap [ <Plug>Isurround]

imap (<Space> <Plug>Isurround(
imap {<Space> <Plug>Isurround{
imap [<Space> <Plug>Isurround[

imap (<CR> <Plug>ISurround(
imap {<CR> <Plug>ISurround{
imap [<CR> <Plug>ISurround[

inoremap (<BS> (
inoremap {<BS> {
inoremap [<BS> [

inoremap () ()
inoremap {} {}
inoremap [] []

" Syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive', "active_filetypes": ["python"], "passive_filetypes": [] }
let g:syntastic_enable_signs=0
let g:syntastic_auto_loc_list=2
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = ' -f parseable -r n -i y --rcfile=~/.vim/pylint.rc '

" Mark display settings
let g:SignatureSignTextHL = "SignMark"

" Set default tex type
let g:tex_flavor = "latex"

" Vim fugitive
" Auto unload fugitive buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown support
let g:markdown_fenced_languages = ["python", "cpp"]
