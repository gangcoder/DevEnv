" Vim color file
" Last Change:	2015 Jul 23

" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "defaultconf"

"hi Normal ctermbg=Black ctermfg=grey guifg=#c0c0c0 guibg=Black gui=none
"tag
"hi label guifg=yellow ctermfg=yellow
"hi operator guifg=orange ctermfg=lightRed ctermbg=darkBlue
"hi TabLine guifg=black gui=none
"hi TabLineSel gui=none
"hi TabLineFill guibg=darkgrey gui=none
"hi MatchParen ctermbg=blue guibg=lightblue guifg=black
hi Pmenu ctermbg=white ctermfg=black
"hi PmenuSbar ctermbg=blue
"hi PmenuThumb ctermbg=blue
hi PmenuSel ctermbg=green
" vim: sw=2
