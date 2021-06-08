
" Change these if you want
let g:signify_sign_add               = ''
let g:signify_sign_delete            = ''
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = ''

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk


" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#b8bb26
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#fb4934
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#87939A