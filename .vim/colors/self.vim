" Vim color file
" Maintainer: Bram Moolenaar <Bram@vim.org>
" Last Change: 2006 Apr 14
" This color scheme uses a dark grey background.
" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
syntax reset
endif

let colors_name = "self"

hi Normal ctermbg=Black ctermfg=grey guifg=#c0c0c0 guibg=Black gui=none

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=none guifg=black guibg=#606060
hi StatusLineNC term=reverse cterm=reverse gui=none guifg=black guibg=#606060
hi VertSplit term=reverse cterm=reverse guifg=#606060 guibg=#606060 gui=none
hi Visual term=reverse ctermbg=black guibg=#353535
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=#dddddd guifg=Black
hi lCursor guibg=Cyan guifg=Black
hi Directory term=bold ctermfg=LightCyan guifg=lightgreen gui=underline
hi LineNr term=underline ctermfg=cyan guifg=#388080
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
hi NonText term=bold ctermfg=LightBlue guifg=LightBlue guibg=black
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=lightYellow guifg=Black
hi SpecialKey term=bold ctermfg=LightBlue guifg=Cyan
hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=LightRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=DarkGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
hi CursorColumn term=reverse ctermbg=Black guibg=grey40
hi CursorLine term=underline cterm=underline guibg=#202020
"语法关键字
hi statement guifg=#005cff ctermfg=blue ctermbg=black gui=none
hi preproc guifg=#005cff ctermfg=blue
"类型关键字
hi type guifg=#005cff ctermfg=blue ctermbg=black gui=none
"注释
hi comment guifg=green ctermfg=green ctermbg=black gui=none
"常量
hi Constant term=underline ctermfg=Magenta guifg=#ff8000 gui=none
"数字
hi Number term=underline ctermfg=Magenta guifg=Magenta gui=none
"标识符,如lua中的function end if
hi identifier guifg=#005cff ctermfg=red gui=none
"标签
hi label guifg=yellow ctermfg=yellow
hi operator guifg=orange ctermfg=lightRed ctermbg=darkBlue
hi TabLine guifg=black gui=none
hi TabLineSel gui=none
hi TabLineFill guibg=darkgrey gui=none
hi MatchParen ctermbg=blue guibg=lightblue guifg=black
hi Pmenu guibg=#101010 guifg=#909090 gui=none

" Groups for syntax highlighting
hi Special term=bold ctermfg=LightRed guifg=Orange guibg=grey5
hi Ignore ctermfg=DarkGrey guifg=grey20

" vim: sw=2
