setlocal " . current_file . "..spell
setlocal textwidth=80

setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+
setlocal formatoptions=tcqn
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

setlocal makeprg=markdown2pdf\ --xetex\ %

setlocal diffopt+=horizontal

" Adding 'c' surround command for comments
let b:surround_99 = "<!-- \r -->"


" Adding make and view commands
map <buffer> <Leader>vp :!open %<.pdf<cr>
map <buffer> <Leader>mp :!markdown2pdf --xetex -o vimmake.pdf % && cp -f vimmake.pdf %<.pdf && rm vimmake.pdf<cr>

" Table cleanup, doesn't really work 
"let s:current_file=expand("<sfile>")
"vmap <buffer> <Leader>tt :!perl ~/.vim/support/table_cleanup.pl

