import vim

bufnr = vim.eval('bufnr("%")')
loclist = vim.eval('getloclist(0)')
errors = [l for l in loclist if l["lnum"] != "0" and l["bufnr"] == bufnr]

if len(errors) > 0:
    vim.command('hi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=255 ctermfg=196')
else:
    vim.command('hi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=none ctermfg=none')
