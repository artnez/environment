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
nnoremap <silent> <c-n> <esc>:tab split<cr>
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

" nerdtree
nnoremap <leader>y :NERDTree<cr>

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

" close quickfix
nnoremap <leader>q :cclose<enter>

" typescript
autocmd FileType typescript nnoremap <leader>i :TsuImport<enter>

" COC: Use tab for trigger completion with characters ahead and navigate. Use
" command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
function! s:coc_tab()
  if pumvisible()
    return "\<C-n>"
  elseif <SID>check_back_space() || b:coc_suggest_disable
    return "\<TAB>"
  else
    return coc#refresh()
  endif
endfunction
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB> <SID>coc_tab()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" COC: Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" COC: Use <cr> to confirm completion, `<C-g>u` means break undo chain at
" current position. Coc only does snippet and additional edit on confirm.
let g:endwise_no_mappings = v:true
inoremap <expr> <Plug>CustomCocCR pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
imap <CR> <Plug>CustomCocCR<Plug>DiscretionaryEnd

" COC: Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" COC: Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
