autocmd! BufWritePost *.tsx Neomake
autocmd! BufWritePost *.ts Neomake

nnoremap <c-\> :vsp <cr>:TsuDefinition<cr>
nnoremap <c-t> :tab split<cr>:TsuDefinition<cr>
