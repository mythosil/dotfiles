" Maintainer:	mythosil (mythosil@yahoo.co.jp)
" Last Change:	April 16 2011

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mythosil"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guifg=NONE guibg=NONE gui=underline
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu        guifg=#666666 guibg=#ffffff
  hi PmenuSel     guifg=#000000 guibg=#0000ff gui=bold
endif

" General colors
hi Cursor       guifg=NONE    guibg=#ffff00 gui=none
hi Normal       guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText      guifg=#808080 guibg=#303030 gui=none
hi LineNr       guifg=#ffff99 guibg=NONE gui=none
hi Search       guifg=#000000 guibg=#ccffff
hi IncSearch    guifg=#ffffff guibg=#000000
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit    guifg=#444444 guibg=#444444 gui=none
hi Folded       guibg=#384048 guifg=#a0a8b0 gui=none
hi Title        guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual       guifg=#f0e68c guibg=#6b8e23 gui=none
hi SpecialKey   guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment    guifg=#99ccff gui=italic
hi Todo       guifg=#000000 guibg=#99ccff gui=italic
hi Constant   guifg=#ff6666 gui=none
hi String 		guifg=#ff3366 gui=italic
hi Identifier guifg=#99ff00 gui=none
hi Function   guifg=#99ff00 gui=none
hi Type       guifg=#99ff00 gui=none
hi Statement  guifg=#ffff99 gui=none
hi Keyword		guifg=#ffff99 gui=none
hi PreProc 		guifg=#ff66ff gui=none
hi Number     guifg=#e5786d gui=none
hi Special    guifg=#ff66ff gui=none

