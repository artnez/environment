nnoremap <silent> <c-]> :cs find s <c-r>=expand("<cword>")<cr><cr>
nnoremap <silent> <c-\> :vsp<cr><c-]>G1<cr><cr>
nnoremap <silent> <c-t> :sp<cr><c-]>G1<cr><cr><c-w>T

setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
set cscopequickfix=s-,c-,d-,i-,t-,e-

autocmd! BufWritePost * Neomake
