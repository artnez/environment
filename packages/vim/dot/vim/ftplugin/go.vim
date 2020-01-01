nnoremap <c-]> :GoDef<cr>
nnoremap <c-\> :vsp<cr>:GoDef<cr>
nnoremap <c-t> :sp<cr>:GoDef<cr><c-w>T
nnoremap K <Plug>(go-doc)

let b:coc_suggest_disable = 1

setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

autocmd! BufWritePost *.go Neomake
