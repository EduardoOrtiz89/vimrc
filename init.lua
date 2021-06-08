-- load all plugins
require "pluginList"
require "file-icons"

require "misc-utils"
require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"
require "lsp-utils"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)

require "custom_highlights"

-- blankline
---- Lua
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

local indent = 2

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- setup for TrueZen.nvim
-- require "zenmode"

vim.cmd[[let g:sonokai_style = 'andromeda']]
vim.cmd[[let g:sonokai_enable_italic = 1]]
vim.cmd[[colorscheme sonokai]]
-- vim.cmd([["let g:polyglot_disabled = ['autoindent']"]])
-- vim.g.tokyonight_style = "Storm";

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
source /home/eduardo/.config/nvim/vimrc/general.vim
vnoremap < <gv
vnoremap > >gv

set completefunc=tailwind#complete
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>
autocmd CompleteDone * pclose

let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
let g:php_cs_fixer_config = "default"                  " options: --config
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0  

"autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

set ignorecase
set smartcase
set noswapfile
set autowrite
set colorcolumn=100



imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

 vnoremap H :m '>+1<CR>gv=gv
 vnoremap T :m '<-2<CR>gv=gv

]], false)


 require('whichkey')
