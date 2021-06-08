 vim.api.nvim_exec([[set smartindent]], false)
 vim.api.nvim_exec([[set autoindent]], false)
 vim.api.nvim_exec([[set smarttab]], false)
 vim.api.nvim_exec([[
 set relativenumber
filetype plugin indent on
autocmd BufRead,BufNewFile *.php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.vue setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.ts setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js setlocal tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on
autocmd BufRead,BufNewFile * set autoindent
autocmd BufRead,BufNewFile * set smartindent
autocmd BufRead,BufNewFile * set smarttab
autocmd BufRead,BufNewFile * set cindent
set nowrap
autocmd BufRead,BufNewFile * filetype plugin indent on
source $HOME/.config/nvim/vimrc/general.vim
vnoremap < <gv
vnoremap > >gv

set completefunc=tailwind#complete
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>
autocmd CompleteDone * pclose



nnoremap <buffer><leader>u :call phpactor#UseAdd()<cr>
nnoremap <buffer><leader>rmc :call phpactor#MoveFile()<cr>
nnoremap <buffer><leader>rcc :call phpactor#CopyFile()<cr>
nnoremap <buffer><leader>rmr :call phpactor#FindReferences()<cr>
nnoremap <buffer><leader>ric :call PHPModify("implement_contracts")<cr>
nnoremap <buffer><leader>rap :call PHPModify("add_missing_properties")<cr>
nnoremap <buffer><leader>rfc :call PHPModify("complete_constructor")<cr>
nnoremap <buffer><leader>rei :call phpactor#ClassInflect()<cr>
xnoremap <buffer><silent><leader>rem :<C-U>call phpactor#ExtractMethod()<CR>
nnoremap <buffer><leader>src :call phpactor#FindReferences()<cr>

map <buffer><leader>] :call phpactor#GotoDefinition()<CR>

function! PHPModify(transformer)
    normal! ggdG
    execute "read !phpactor class:transform ".expand('%').' --transform='.a:transformer
    normal! ggdd
endfunction
]], false)
