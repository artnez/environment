" set default color scheme
set background=dark
let g:neodark#use_256color = 1
let g:neodark#solid_vertsplit = 1
colorscheme neodark

" 80 column margin color
hi ColorColumn ctermbg=black

" highlight current line
hi CursorLine ctermbg=black cterm=none

" autocomplete/omnicomplete menu
hi Pmenu ctermfg=white ctermbg=black

" match parens - defaults confuse me
hi MatchParen cterm=bold ctermbg=none ctermfg=white

" search results
hi Search term=bold ctermbg=226 ctermfg=016

" errors
hi Error term=bold ctermbg=196 ctermfg=255
hi SpellBad term=bold ctermbg=196 ctermfg=255
hi SpellCap term=bold ctermbg=226 ctermfg=016

" todos
let todoKeywords = ['cTodo', 'pythonTodo', 'todo']
for keyword in todoKeywords
    execute 'hi ' . keyword . ' term=bold ctermbg=none ctermfg=148'
endfor
