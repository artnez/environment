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

" neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_go_enabled_makers = ['go']

" vimerl
let erlang_show_errors = 0

" snipmate
let g:snipMate = {}
let g:snipMate.scope_aliases = {
  \ 'php': 'php',
  \ 'phtml': 'php'
  \ }

" supertab
let g:SuperTabDefaultCompletionType = 'context'
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
\  '.virtualenv',
\  '_virtualenv'
\]

" jedi
let g:jedi#popup_on_dot = 0

" viewdoc
let g:no_viewdoc_maps = 1
let g:viewdoc_open = "above new"
let g:viewdoc_openempty = 0

" markdown
let g:vim_markdown_folding_disabled = 1

" delimitmate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" ruby
let ruby_space_errors = 1

" golang
let g:go_fmt_command = "goimports"
let g:go_def_mode = "godef"

" git gutter
let g:gitgutter_sign_column_always = 1

" rust
let g:rustfmt_autosave = 1
