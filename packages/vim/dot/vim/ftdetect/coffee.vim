" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
autocmd BufNewFile,BufRead *.coffeekup set filetype=coffee

function! DetectCoffee()
  if !did_filetype() && getline(1) =~ '^#.*\<coffee\>'
    setfiletype coffee
  endif
endfunction

:au BufNewFile,BufRead * call DetectCoffee()
