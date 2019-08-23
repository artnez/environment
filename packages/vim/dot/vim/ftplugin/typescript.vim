autocmd! BufWritePost *.tsx Neomake
autocmd! BufWritePost *.ts Neomake

nnoremap <buffer> <c-\> :vsp <cr>:TsuDefinition<cr>
nnoremap <buffer> <c-t> :tab split<cr>:TsuDefinition<cr>

nmap <Plug>(NoTsuquyomiGoBack) <Plug>(TsuquyomiGoBack)
