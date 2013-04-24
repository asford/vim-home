" n: keep inner indent for list items.
setlocal formatoptions=n
" will detect numbers, letters, *, +, and - as list headers
" TODO: add support for roman numerals
setlocal formatlistpat=^\\s*\\([*+-]\\\|\\((*\\d\\+[.)]\\+\\)\\\|\\((*\\l[.)]\\+\\)\\)\\s\\+

set spell

" soft wrapping
setlocal formatoptions=1
setlocal linebreak
setlocal breakat-=*

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
map <buffer> <Leader>vp :!open %<.pdf<cr>
map <buffer> <Leader>mp :!multimarkdown -t latex -b % && latexmk -pv %<.tex<cr>
