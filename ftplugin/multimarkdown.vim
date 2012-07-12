" hard wrapping at 79 chars (like in gq default)
if &textwidth == 0
  setlocal textwidth=79
endif
" t: wrap on &textwidth
" n: keep inner indent for list items.
setlocal formatoptions=tn
" will detect numbers, letters, *, +, and - as list headers, according to
" pandoc syntax.
" TODO: add support for roman numerals
setlocal formatlistpat=^\\s*\\([*+-]\\\|\\((*\\d\\+[.)]\\+\\)\\\|\\((*\\l[.)]\\+\\)\\)\\s\\+

" a: auto-format
" w: lines with trailing spaces mark continuing
" paragraphs, and lines ending on non-spaces end paragraphs.
" we add `w` as a workaround to `a` joining compact lists.
setlocal formatoptions+=aw

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
