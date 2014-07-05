" tagbar
let g:tagbar_left = 1
let g:tagbar_width = 50
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_show_visibility = 1
let g:tagbar_sort = 0

" command-t
let g:CommandTMatchWindowReverse = 1
let g:CommandTCancelMap = "<esc>"
let g:CommandTTagIncludeFilenames = 1

" flush command-t on refresh
augroup CommandTExtension
  autocmd!
  autocmd BufWritePost * CommandTFlush
augroup END

" pydoc
let g:pydoc_wh = 30
let g:pydoc_highlight = 0

" python syntax
let g:python_highlight_all = 1

" json
let g:vim_json_syntax_conceal = 0

" syntastic
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_python_flake8_args = '--ignore E501,E702'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['cssane']
let g:syntastic_csslint_options = '--errors=errors'
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_phpcs_disable = 1
let g:syntastic_enable_signs = 1
let g:syntastic_erlang_checkers = []
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': ['c', 'json', 'javascript', 'php', 'python', 'css', 'less'],
    \ 'passive_filetypes': ['html', 'ruby', 'erlang']
    \ }

" vimerl
let erlang_show_errors = 0

" snipmate
let g:snipMate = {}
let g:snipMate.scope_aliases = {
  \ 'php': 'php',
  \ 'phtml': 'php'
  \ }

" supertab
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:SuperTabLongestHighlight = 1

" vdebug
let g:vdebug_keymap = {}
let g:vdebug_keymap['set_breakpoint'] = '<Leader>y'
let g:vdebug_keymap['step_over'] = '<Leader>p'
let g:vdebug_keymap['step_into'] = '<Leader>i'
let g:vdebug_keymap['step_out'] = '<Leader>o'
let g:vdebug_keymap['run'] = '<Leader>q'
let g:vdebug_keymap['close'] = '<Leader>w'

let g:vdebug_options = {}
let g:vdebug_options['timeout'] = 30
let g:vdebug_options['ide_key'] = 'artem'

" emmet
let g:user_emmet_expandabbr_key = '<c-e>'

" nerdtree
let NERDTreeIgnore = [
\  '\.pyc$',
\  'tags',
\  'tmp\.[css|css]$',
\  'cmp\.[js|css]$',
\  'node_modules',
\  'virtualenv',
\  '.virtualenv'
\]

" jedi
let g:jedi#popup_on_dot = 0

" viewdoc
"let g:no_viewdoc_maps = 1
let g:viewdoc_open = "above new"
let g:viewdoc_openempty = 0
