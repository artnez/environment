" php and html soup
autocmd BufNewFile,BufRead *.phtml set ft=phtml

" jshint stuff
autocmd BufNewFile,BufRead *.jshintrc set ft=json
autocmd BufNewFile,BufRead *.jshintreporter set ft=javascript

" man pages should set tabstop to 8
autocmd FileType man set tabstop=8

" vagrant
autocmd BufNewFile,BufRead [Vv]agrantfile set ft=ruby

" go
au FileType go nmap K <Plug>(go-doc)
