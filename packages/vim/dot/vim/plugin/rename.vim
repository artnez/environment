" Rename.vim - Rename a buffer within Vim and on the disk.
"
" Usage:
" 
"   :Rename[!] {newname}
"
" Changelog:
"
"   16 NOV 2012
"   ===========
"
"   - Add support for local filepaths. If the filepath is /foo/bar/baz, calling 
"     `Rename qux` will rename the file to /foo/bar/qux. Calling `Rename ../hey` 
"     will rename the file to /foo/hey.
"
" Copyright:
"
"   Copyright June 2007-2011 by Christian J. Robinson <heptite@gmail.com>
"   Distributed under the terms of the Vim license.  See ":help license".
"
"   Some additions by Artem Nezvigin <artem@artnez.com>

command! -nargs=* -complete=file -bang Rename call Rename(<q-args>, '<bang>')

autocmd BufWritePre * call CreateParentPath(expand('%:p'))

function! s:createParentPath(filepath)
    if filereadable(a:filepath)
        return
    endif
    let dirname = '/' . join(split(a:filepath, '/')[0:-2], '/')
    if isdirectory(expand(l:dirname))
        return
    endif
    call mkdir(l:dirname, 'p')
endfunction

function! Rename(name, bang)
    let l:name    = a:name
    let l:oldfile = expand('%:p')

    if match(l:name, '/') != 0 && match(l:name, '\./') != 0
        let l:basepath = fnamemodify(l:oldfile, ':h')
        let l:name = expand(l:basepath . '/' . l:name, '%:p')
    endif

    if bufexists(fnamemodify(l:name, ':p'))
        if (a:bang ==# '!')
            silent exe bufnr(fnamemodify(l:name, ':p')) . 'bwipe!'
        else
            echohl ErrorMsg
            echomsg 'A buffer with that name already exists (use ! to override).'
            echohl None
            return 0
        endif
    endif

    let l:status = 1

    let v:errmsg = ''

    call s:createParentPath(l:name)
    silent! exe 'saveas' . a:bang . ' ' . l:name

    if v:errmsg =~# '^$\|^E329'
        let l:lastbufnr = bufnr('$')

        if expand('%:p') !=# l:oldfile && filewritable(expand('%:p'))
            if fnamemodify(bufname(l:lastbufnr), ':p') ==# l:oldfile
                silent exe l:lastbufnr . 'bwipe!'
            else
                echohl ErrorMsg
                echomsg 'Could not wipe out the old buffer for some reason.'
                echohl None
                let l:status = 0
            endif

            if delete(l:oldfile) != 0
                echohl ErrorMsg
                echomsg 'Could not delete the old file: ' . l:oldfile
                echohl None
                let l:status = 0
            endif
        else
            echohl ErrorMsg
            echomsg 'Rename failed for some reason.'
            echohl None
            let l:status = 0
        endif
    else
        echoerr v:errmsg
        let l:status = 0
    endif

    return l:status
endfunction
