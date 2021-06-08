
" let b:ale_linter_aliases = ['javascript', 'vue', 'ts']
" let g:ale_completion_tsserver_autoimport = 1
" let b:ale_linters = {
"  \ 'javascript': ['eslint'],
"  \ 'vue': ['eslint'],
"  \ 'ts': ['eslint']
"  \ }
" let g:ale_fixers = {
"  \ 'javascript': ['eslint'],
"  \ 'vue': ['eslint'],
"  \ 'ts': ['eslint']
"  \ }
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
" let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 0 
" let g:ale_set_quickfix = 1
" let g:ale_linters_explicit = 1

" let b:ale_linters = ['eslint', 'vls']
" let g:ale_linters = ['eslint', 'vls']


" " Only lint if .eslintrc is present
" " autocmd FileType javascript \let g:ale_linters = FindGlob('.eslintrc.*', expand('%:p:h')) ? {'javascript': ['eslint', 'vls']} : {'javascript': ['']}
" " autocmd FileType vue let g:ale_linters = FindGlob('.eslintrc.*', expand('%:p:h')) ? {'javascript': ['eslint', 'vls']} : {'javascript': ['']}
" " autocmd FileType ts let g:ale_linters = FindGlob('.eslintrc.*', expand('%:p:h')) ? {'javascript': ['eslint', 'vls']} : {'javascript': ['']}


" function! g:FindGlob(pattern, path)
"   let fullpattern = a:path . "/" . a:pattern
"   if strlen(glob(fullpattern))
"     return 1
"   else
"     let parts = split(a:path, "/")
"     if len(parts)
"       let newpath = "/" . join(parts[0:-2], "/")
"       return FindGlob(a:pattern, newpath)
"     else
"       return 0
"     endif
"   endif
" endfunction
" " Write this in your vimrc file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" " You can disable this option too
" " if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0
" autocmd BufEnter *.md ALEDisable

" let g:ale_linters = ['eslint', 'vls']
