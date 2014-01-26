" set default color scheme
set background=dark
colorscheme default

" 80 column margin color
hi ColorColumn ctermbg=black

" highlight current line
hi CursorLine ctermbg=black cterm=none

" autocomplete/omnicomplete menu
hi Pmenu ctermfg=white ctermbg=black

" match parens - defaults confuse me
hi MatchParen cterm=bold ctermbg=none ctermfg=white

" errors
hi Error term=bold ctermbg=196 ctermfg=255
hi SpellBad term=bold ctermbg=196 ctermfg=255
hi SpellCap term=bold ctermbg=226 ctermfg=016

" todos
hi pythonTodo term=bold ctermbg=none ctermfg=148
hi cTodo term=bold ctermbg=none ctermfg=148
