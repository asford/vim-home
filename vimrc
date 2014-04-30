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

" From https://github.com/docwhat/homedir-vim/
" Uses // at the end of directories to avoid filename collisions.

" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

" Display options
set ruler
set number
set showmode
set showcmd
set laststatus=2 "Always show status line
let g:asynccommand_statusline_autohide = 1
set statusline=%<%f\ %h%m%r%=
set statusline+=%.45{asynccommand#statusline()}\ 
set statusline+=%{khuno#Status('Flake8')}\           " are there any errors? 
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%-14.(%l,%c%V%)\ %P

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
nnoremap <silent> <Leader>O :TagbarTogglePause<CR>
let g:tagbar_left=1

" Gundo
nnoremap <silent> <Leader>u :GundoToggle<CR>

" AsyncCommand 
nnoremap <silent> <Leader>p :AsyncTogglePending<CR>

" Scratch 
nnoremap <silent> <Leader>sr :ScratchToggle<CR>
nnoremap <silent> <Leader>sf :Khuno show<CR>

nnoremap <silent> <Leader>e :botright cwindow<CR>

" Localvimrc
let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist='\(/Volumes/fordas/rosetta.*/.lvimrc\)\|\(workspace/.*/.lvimrc\)\|\(\(/work\)\|\(gpfs.*WORK\)/fordas/rosetta.*/.*/.lvimrc\)\|\(/scratch/USERS/fordas/.*/.lvimrc\)\|\(/Volumes/scratch/.*/.lvimrc\)'

" Ctrl-p
let g:ctrlp_map = '<Leader>t'
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
let g:ctrlp_switch_buffer = 't'


" Alignment plugins
if !hasmapto('<Plug>AM_tsq')	|map <unique> <Leader>as <Plug>AM_tsq|endif

" delimitMate settings

" Syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive', "active_filetypes": [], "passive_filetypes": [] }
let g:syntastic_enable_signs=0
let g:syntastic_auto_loc_list=2
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_post_args = ' --rcfile=~/.vim/pylint.rc '
let g:syntastic_javascript_checkers = ['jsl']
"let g:syntastic_debug = 1

" Mark display settings
let g:SignatureSignTextHL = "SignMark"

" Set default tex type
let g:tex_flavor = "latex"

" Vim fugitive
" Auto unload fugitive buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown support
let g:markdown_fenced_languages = ["python", "cpp"]

" Ultisnips
let g:ultisnips_python_style = "google"
