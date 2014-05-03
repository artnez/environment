if exists('g:loaded_syntastic_css_cssane_checker')
    finish
endif
let g:loaded_syntastic_css_cssane_checker = 1

if !exists('g:syntastic_cssane_options')
    let g:syntastic_cssane_options = ''
endif

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_css_cssane_GetLocList() dict
    let makeprg = self.makeprgBuild({})

    let errorformat =
        \ '%W%f:%l:%c: S%n %m,' .
        \ '%W%f:%l:%c: W%n %m,' .
        \ '%W%f:%l:%c: P%n %m,' .
        \ '%E%f:%l:%c: E%n %m,'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat})

endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'css',
    \ 'name': 'cssane'})

let &cpo = s:save_cpo
unlet s:save_cpo
