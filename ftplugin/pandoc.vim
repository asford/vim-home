setlocal " . current_file . "..spell
setlocal textwidth=80

setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+
setlocal formatoptions=tcqn
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

setlocal makeprg=markdown2pdf\ --xetex\ %

setlocal diffopt+=horizontal

" Adding 'c' surround command for comments
let b:surround_99 = "<!-- \r -->"

" Remappings that make j and k behave properly with
" soft wrapping.
nnoremap <buffer> j gj
nnoremap <buffer> k gk
vnoremap <buffer> j gj
vnoremap <buffer> k gk

" Show partial wrapped lines
setlocal display=lastline

" soft wrapping
setlocal formatoptions=1
setlocal linebreak
setlocal breakat-=*


" Adding make and view commands
map <buffer> <Leader>vp :!open %<.pdf<cr>
map <buffer> <Leader>mp :!markdown2pdf --xetex -o vimmake.pdf % && cp -f vimmake.pdf %<.pdf && rm vimmake.pdf<cr>
