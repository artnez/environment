if exists('g:local_ctags_loaded')
  finish
endif
let g:local_ctags_loaded = 1

if !exists('g:local_ctags_paths')
    let g:local_ctags_paths = [
        \ '.virtualenv/tags',
        \ 'virtualenv/tags',
        \ 'venv/tags',
        \ 'node_modules/tags',
        \]
endif

for path in g:local_ctags_paths
    if filereadable(path)
        execute "set tags+=" . path
    endif
endfor
