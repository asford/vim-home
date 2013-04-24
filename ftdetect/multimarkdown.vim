" Override default markdown rules for multimarkdown files
au BufRead,BufNewFile *.mmd  set filetype=multimarkdown
au BufRead,BufNewFile *.md  set filetype=markdown
