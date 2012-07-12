" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold ctermfg=255  ctermbg=101 cterm=bold
  hi Pmenu 		    guifg=#f6f3e8 guibg=#444444          ctermfg=255  ctermbg=238
  hi PmenuSel 	  guifg=#000000 guibg=#cae682          ctermfg=0    ctermbg=192
endif

" #f6f3e8   light 
" #808080   dark-middle 
" #656565   dark 
" #444444   dark
" #303030   dark-dark 
"
" #a0a8b0   light grey
" #384048   dark blue-grey
" #857b6f   middle grey-brown
" #99968b   light grey-brown
"
" #e5786d   light red (203)
" #95e454   green (118)
" #cae682   pale green (192)
" #e7f6da   double pale green (7?)
" #8ac6f2   blue (105)

" General colors
hi Cursor 		  guifg=NONE    guibg=#656565 gui=none    ctermfg=NONE ctermbg=241  cterm=none
hi Normal 		  guifg=#f6f3e8 guibg=#242424 gui=none    ctermfg=255  ctermbg=234  cterm=none
hi NonText 		  guifg=#808080 guibg=#303030 gui=none    ctermfg=244  ctermbg=236  cterm=none
hi LineNr 		  guifg=#857b6f guibg=#000000 gui=none    ctermfg=101  ctermbg=0    cterm=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic  ctermfg=255  ctermbg=238  cterm=none
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none    ctermfg=101  ctermbg=238  cterm=none
hi VertSplit 	  guifg=#444444 guibg=#444444 gui=none    ctermfg=238  ctermbg=238  cterm=none
hi Folded 		  guibg=#384048 guifg=#a0a8b0 gui=none    ctermbg=237  ctermfg=248  cterm=none
hi Title		    guifg=#f6f3e8 guibg=NONE	  gui=bold    ctermfg=255  ctermbg=NONE cterm=bold
hi Visual		    guifg=#f6f3e8 guibg=#444444 gui=none    ctermfg=255  ctermbg=238  cterm=none
hi SpecialKey	  guifg=#808080 guibg=#343434 gui=none    ctermfg=244  ctermbg=236  cterm=none

" Syntax highlighting
hi Comment 		  guifg=#99968b gui=italic  ctermfg=246 cterm=none
hi Todo 		    guifg=#8f8f8f gui=italic  ctermfg=245 cterm=none
hi Constant 	  guifg=#e5786d gui=none    ctermfg=203 cterm=none
hi String 		  guifg=#95e454 gui=italic  ctermfg=118 cterm=none
hi Identifier 	guifg=#cae682 gui=none    ctermfg=192 cterm=none
hi Function 	  guifg=#cae682 gui=none    ctermfg=192 cterm=none
hi Type 		    guifg=#cae682 gui=none    ctermfg=192 cterm=none
hi Statement    guifg=#8ac6f2 gui=none    ctermfg=105 cterm=none
hi Keyword      guifg=#8ac6f2 gui=none    ctermfg=105 cterm=none
hi PreProc      guifg=#e5786d gui=none    ctermfg=203 cterm=none
hi Number       guifg=#e5786d gui=none    ctermfg=203 cterm=none
hi Special      guifg=#e7f6da gui=none    ctermfg=7   cterm=none

" Diff colors
hi DiffAdd      guibg=#cae682 guifg=#000000 ctermfg=192 cterm=none
hi DiffText     guibg=#8ac6f2 guifg=#000000 ctermfg=105 cterm=none
hi DiffChange   guibg=Grey    guifg=#000000 
hi DiffDelete   guibg=#e5786d guifg=#000000 ctermfg=203 cterm=none
