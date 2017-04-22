if !has('python')
    finish
endif

function! GetStatusline()
    pyfile $HOME/.vim/statusline.py
    return g:new_statusline
endfunction

set statusline+=%#warningmsg#
set statusline+=%{GetStatusline()}
