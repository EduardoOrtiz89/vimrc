-- load all plugins
require "lazyload"
require "pluginList"
require "file-icons"

require "misc-utils"
require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "diffview-config"

local cmd = vim.cmd
local g = vim.g

g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)

require "custom_highlights"

local neogit = require('neogit')

neogit.setup {}


local indent = 2

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "mappings"


require("nvim-autopairs").setup()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

 vim.api.nvim_exec([[set smartindent]], false)
 vim.api.nvim_exec([[set autoindent]], false)
 vim.api.nvim_exec([[set smarttab]], false)
 vim.api.nvim_exec([[
 set relativenumber
let g:indent_blankline_use_treesitter = v:true
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
source /home/eduardo/.config/nvim/vimrc/general.vim
vnoremap < <gv
vnoremap > >gv
let g:tmux_navigator_no_mappings = 1

"noremap <silent> {Left-Mapping} :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <leader><down> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <leader><up> :<C-U>TmuxNavigateUp<cr>
"noremap <silent> {Right-Mapping} :<C-U>TmuxNavigateRight<cr>
"noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>

set completefunc=tailwind#complete
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>
autocmd CompleteDone * pclose


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

set ignorecase
set smartcase
set noswapfile
set autowrite
set colorcolumn=100


 vnoremap H :m '>+1<CR>gv=gv
 vnoremap T :m '<-2<CR>gv=gv

 set path+=~/Develop/aero/views,~/Develop
 set path+=~/Develop/aero/views/components
 set includeexpr=substitute(v:fname,'\\.','/','g')
 set relativenumber

]], false)


 require('whichkey')


-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

