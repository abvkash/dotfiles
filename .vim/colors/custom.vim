hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name='custom'

set background=dark

hi Comment      ctermfg=darkgreen
hi Type         ctermfg=darkblue
hi Statement    ctermfg=darkmagenta
hi StorageClass ctermfg=blue
hi Constant     ctermfg=darkred
hi Function     ctermfg=darkblue cterm=bold
hi LineNr       ctermfg=darkgray ctermbg=NONE
hi CursorLine   cterm=NONE ctermbg=NONE
hi CursorLineNr cterm=NONE ctermbg=NONE
hi StatusLine   cterm=NONE ctermbg=NONE
hi StatusLineNC cterm=NONE ctermbg=NONE

hi String       ctermfg=darkred
hi Character    ctermfg=darkred
hi Identifier   ctermfg=darkcyan
hi Keyword      ctermfg=darkmagenta cterm=bold
hi Operator     ctermfg=white
hi PreProc      ctermfg=magenta
hi Special      ctermfg=yellow
hi Todo         ctermfg=black ctermbg=yellow cterm=bold
hi Error        ctermfg=white ctermbg=red cterm=bold
hi Warning      ctermfg=black ctermbg=yellow

hi Visual       ctermfg=black ctermbg=gray
hi Search       ctermfg=black ctermbg=yellow
hi IncSearch    ctermfg=black ctermbg=red
hi MatchParen   ctermfg=white ctermbg=blue
hi Pmenu        ctermfg=white ctermbg=darkgray
hi PmenuSel     ctermfg=black ctermbg=cyan
hi PmenuSbar    ctermbg=gray
hi PmenuThumb   ctermbg=white
hi WildMenu     ctermfg=black ctermbg=yellow

hi DiffAdd      ctermfg=white ctermbg=darkgreen
hi DiffChange   ctermfg=white ctermbg=darkyellow
hi DiffDelete   ctermfg=white ctermbg=darkred
hi DiffText     ctermfg=black ctermbg=yellow

hi Folded       ctermfg=darkgray ctermbg=NONE
hi FoldColumn   ctermfg=darkgray ctermbg=NONE