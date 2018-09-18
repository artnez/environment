" set the leader key
let mapleader=','

" document handling
nnoremap <c-s> <esc>:w<cr>

" omnicompletion helpers
inoremap <c-c> <c-x><c-o><c-n>
autocmd InsertLeave * if pumvisible() == 0 && bufname("%") != "[Command Line]"|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0 && bufname("%") != "[Command Line]"|pclose|endif 

" snippet handling 
" these mappings are in after/plugin/snipmate.vim

" toggles search highlighting
nnoremap <f1> :set hlsearch! hlsearch?<cr>
inoremap <f1> <esc>:set hlsearch! hlsearch?<cr>

" toggles spell check
nnoremap <f2> :set spell! spell?<cr>
inoremap <f2> <esc>:set spell! spell?<cr>

" replace visually selected text
vnoremap R "hy:%s/<C-r>h//gc<left><left><left>

" buffer management
nnoremap <c-n> <esc>:tabnew<cr>
nnoremap <c-left> gT<cr>
nnoremap <c-right> gt<cr>
nnoremap ) gt<cr>
nnoremap ( gT<cr>

" self explanatory
nmap <space> zz
nmap <leader>l :syntax sync fromstart<cr>

" smart delete to end of previous line 
nnoremap <c-k> :silent! s/^\s\+\*\/\?//<cr>k:silent! s/\s*$//<cr>j^:silent! s/\s*//<cr>i<bs> <esc>$

" window resizing (height)
nnoremap <down> 4<c-w>+
nnoremap <up> 4<c-w>-
nnoremap <c-down> <c-w>_
nnoremap <c-up> <c-w>=

" window resizing (width)
nnoremap <left> <esc>:vertical resize -10<cr>
nnoremap <right> <esc>:vertical resize +10<cr>

" tag management
nnoremap <c-p> :TagbarToggle<cr>
nnoremap <c-\> :vsp <cr>:exec("tag ".expand("<cword>"))<cr>
nnoremap <c-t> <c-w><c-]><c-w>T

" folding
vnoremap f :fold<cr>
vnoremap ff :foldopen<cr>

" toggle paste mode
nnoremap <leader>p :set paste!<bar>:set paste?<cr>

" toggle search highlight
nnoremap <leader>o :set hlsearch!<bar>:set hlsearch?<cr>

" neomake
nnoremap <leader>e :QFix<cr>
autocmd FileType qf nmap <buffer> <cr> <cr>:QFix<cr>

" command-t
" other mappings are in bundle/command-t/plugin/command-t.vim
nnoremap <leader>r :CommandTTag<CR>

" viewdoc
nnoremap <unique> K :call ViewDoc('doc', '<cword>')<CR>
