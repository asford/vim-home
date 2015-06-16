set spell

" soft wrapping
setlocal formatoptions=1
setlocal linebreak
setlocal breakat-=*
setlocal wrap

setlocal textwidth=0
setlocal wrapmargin=0

" Remappings that make j and k behave properly with
" soft wrapping.
nnoremap <buffer> j gj
nnoremap <buffer> k gk
vnoremap <buffer> j gj
vnoremap <buffer> k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show partial wrapped lines
setlocal display=lastline

" Adding make and view commands
map <buffer> <Leader>p :silent !open -a 'Google Chrome' %<cr>
map <buffer> <Leader>vp :!open %<.pdf<cr>
map <buffer> <Leader>mp :!multimarkdown -t latex -b % && latexmk -pv %<.tex<cr>
