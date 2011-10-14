setlocal spell
setlocal textwidth=80

setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+
setlocal formatoptions=tcqn
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

setlocal makeprg=markdown2pdf\ %

setlocal diffopt+=horizontal

" Adding 'c' surround command for comments
let b:surround_99 = "<!-- \r -->"

" Adding make and view commands
map <Leader>vp :!open %<.pdf<cr>
map <Leader>mp :!markdown2pdf -o vimmake.pdf % && cp -f vimmake.pdf %<.pdf && rm vimmake.pdf<cr>

