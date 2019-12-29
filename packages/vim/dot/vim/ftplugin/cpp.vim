let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

nnoremap <c-]> :cs find s <c-r>=expand("<cword>")<cr><cr>G1<cr><cr>

setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
