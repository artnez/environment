" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

" Syntax highlighting for text/coffeescript script tags
syn include @htmlCoffeeScript syntax/coffee.vim
syn region coffeeScript start=+<script [^>]*type *=[^>]*text/coffeescript[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=@htmlCoffeeScript,htmlScriptTag,@htmlPreproc
\                       containedin=htmlHead

syn keyword htmlTagName contained
  \ article aside audio bb canvas command datagrid
  \ datalist details dialog embed figure footer
  \ header hgroup keygen mark meter nav output
  \ progress time ruby rt rp section time video

syn keyword htmlArg contained
  \ autofocus placeholder min max step
  \ contenteditable contextmenu draggable hidden item
  \ itempropitemprop list subject spellcheck
