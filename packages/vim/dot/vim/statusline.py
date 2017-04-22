import vim

statusline = ''

bufnr = vim.eval('bufnr("%")')
loclist = vim.eval('getloclist(0)')
errors = [l for l in loclist if l["lnum"] != "0" and l["bufnr"] == bufnr]

if len(errors) > 0:
    locations = ', '.join(['%s:%s' % (e['lnum'], e['col']) for e in errors])
    label = 'Error' if len(errors) == 1 else 'Errors'
    statusline = ' %d %s (%s)' % (len(errors), label, locations)

vim.command('let g:new_statusline = "%s"' % statusline)
