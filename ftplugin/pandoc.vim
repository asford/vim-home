setlocal spell
setlocal textwidth=80

setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+
setlocal formatoptions=tcqn
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

setlocal makeprg=markdown2pdf\ %\ \&\&\ open\ %<.pdf

setlocal diffopt+=horizontal

let b:surround_99 = "<!-- \r -->"


