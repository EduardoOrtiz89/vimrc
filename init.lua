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

 set path+=~/Develop/aero/views,~/Develop/aero/views/components
 set includeexpr=substitute(v:fname,'\\.','/','g')
 set relativenumber

" gray
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#ccc
highlight! CmpItemKindSnippet guifg=#D4A959 guibg=NONE 
" blue
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch
" light blue
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! link CmpItemKindInterface CmpItemKindVariable
highlight! link CmpItemKindText CmpItemKindVariable
" pink
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! link CmpItemKindMethod CmpItemKindFunction
" front
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
highlight! link CmpItemKindProperty CmpItemKindKeyword
highlight! link CmpItemKindUnit CmpItemKindKeyword



highlight!  PmenuSel  guibg=#282C34 guifg=NONE
highlight!  Pmenu  guifg=#C5CDD9 guibg=#22252A

highlight!  CmpItemAbbrDeprecated  guifg=#7E8294 guibg=NONE 
highlight!  CmpItemAbbrMatch  guifg=#82AAFF guibg=NONE 
highlight!  CmpItemAbbrMatchFuzzy  guifg=#82AAFF guibg=NONE 
highlight!  CmpItemMenu  guifg=#7E8294 guibg=NONE cterm=italic term=italic



]], false)


 require('whichkey')


-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})


-- highlight! CmpItemKindField  guifg=#EED8DA guibg=#B5585F 
-- highlight! CmpItemKindProperty  guifg=#EED8DA guibg=#B5585F 
-- highlight! CmpItemKindEvent  guifg=#EED8DA guibg=#B5585F 

-- highlight! CmpItemKindText  guifg=#C3E88D guibg=#9FBD73 
-- highlight! CmpItemKindEnum  guifg=#C3E88D guibg=#9FBD73 
-- highlight! CmpItemKindKeyword  guifg=#C3E88D guibg=#9FBD73 

-- highlight! CmpItemKindConstant  guifg=#FFE082 guibg=#D4BB6C 
-- highlight! CmpItemKindConstructor  guifg=#FFE082 guibg=#D4BB6C 
-- highlight! CmpItemKindReference  guifg=#FFE082 guibg=#D4BB6C 

-- highlight! CmpItemKindFunction  guifg=#EADFF0 guibg=#A377BF 
-- highlight! CmpItemKindStruct  guifg=#EADFF0 guibg=#A377BF 
-- highlight! CmpItemKindClass  guifg=#EADFF0 guibg=#A377BF 
-- highlight! CmpItemKindModule  guifg=#EADFF0 guibg=#A377BF 
-- highlight! CmpItemKindOperator  guifg=#EADFF0 guibg=#A377BF 

-- highlight! CmpItemKindVariable  guifg=#C5CDD9 guibg=#7E8294 
-- highlight! CmpItemKindFile  guifg=#C5CDD9 guibg=#7E8294 

-- highlight! CmpItemKindUnit  guifg=#F5EBD9 guibg=#D4A959 
-- highlight! CmpItemKindSnippet  guifg=#F5EBD9 guibg=#D4A959 
-- highlight! CmpItemKindFolder  guifg=#F5EBD9 guibg=#D4A959 

-- highlight! CmpItemKindMethod  guifg=#DDE5F5 guibg=#6C8ED4 
-- highlight! CmpItemKindValue  guifg=#DDE5F5 guibg=#6C8ED4 
-- highlight! CmpItemKindEnumMember  guifg=#DDE5F5 guibg=#6C8ED4 

-- highlight! CmpItemKindInterface  guifg=#D8EEEB guibg=#58B5A8 
-- highlight! CmpItemKindColor  guifg=#D8EEEB guibg=#58B5A8 
-- highlight! CmpItemKindTypeParameter  guifg=#D8EEEB guibg=#58B5A8 
