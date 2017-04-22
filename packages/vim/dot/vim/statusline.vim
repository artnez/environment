if !has('python')
    finish
endif

function! GetStatusline()
    pyfile $HOME/.vim/statusline.py
    return g:new_statusline
endfunction

function! UpdateStatuslineColor()
    pyfile $HOME/.vim/statuscolor.py
endfunction

autocmd user NeomakeFinished,BufEnter,WinEnter call UpdateStatuslineColor()
autocmd BufEnter * call UpdateStatuslineColor()

set statusline+=%#warningmsg#
set statusline+=%{GetStatusline()}
