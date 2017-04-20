command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    lclose
    unlet g:qfix_win
  else
    lopen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction
