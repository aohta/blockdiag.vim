" Vim syntax file
" Language:    blockdiag
" Filenames:   .diag

" Quit when a (custom) syntax file was already loaded
if exists ("b:current_syntax")
    finish
endif

syn match   diagComment  "//.*$"
syn keyword diagKeyword  label failed
syn region  diagString   start=+"+ skip=+\\.+ end=+"+
syn match   diagOperator "->\|-->\|--->\|<-\|<--\|<---"

hi def link diagComment  Comment
hi def link diagKeyword  Keyword
hi def link diagOperator Operator
hi def link diagString   String

let b:current_syntax = "diag"

