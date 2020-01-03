setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

autocmd! BufWritePost * Neomake

let clangtidyargs = ''
if filereadable('.clang-tidy-flags')
  let clangtidyargs = join(readfile('.clang-tidy-flags'), ' ')
  let g:neomake_cpp_enabled_makers = ['clangtidy']
  let g:neomake_cpp_clangtidy_args = clangtidyargs
endif
