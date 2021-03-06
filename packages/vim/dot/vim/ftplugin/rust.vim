set hidden
setlocal expandtab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

augroup Racer
  nnoremap <buffer> gd :call racer#GoToDefinition()<cr>
  nnoremap <c-]> :call racer#GoToDefinition()<cr>
  nnoremap <c-\> :vsp<cr>:call racer#GoToDefinition()<cr>
  nnoremap <c-t> :sp<cr>:call racer#GoToDefinition()<cr><c-w>T
  nnoremap K :call racer#ShowDocumentation(1)<cr>
augroup END

autocmd! BufWritePost *.rs Neomake
