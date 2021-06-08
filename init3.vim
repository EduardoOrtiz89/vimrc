let g:python3_host_prog='/usr/bin/python3'
let g:python2_host_prog='/usr/bin/python2'
" Declare group for autocmd for whole init.vim, and clear it
" Otherwise every autocmd will be added to group each time vimrc sourced!
augroup vimrc
  autocmd!
augroup END


"oldi


call plug#begin('~/.config/nvim/plugged')

"LSP
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'thecontinium/asyncomplete-buffer.vim'
" Plug 'thomasfaingnaert/vim-lsp-snippets'
" Plug 'thomasfaingnaert/vim-lsp-ultisnips'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" telescope requirements...
Plug 'jceb/vim-orgmode'

" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'mrdotb/vim-tailwindcss'
Plug 'glepnir/zephyr-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

"Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-dadbod'
Plug 'styled-components/vim-styled-components'
Plug 'tpope/vim-dispatch'
"Plug 'dart-lang/dart-vim-plugin'
" Plug 'thosakwe/vim-flutter'
Plug 'thalesmello/vim-textobj-multiline-str'
Plug 'psliwka/vim-smoothie'
Plug 'vim-test/vim-test' 
" Plug 'terryma/vim-multiple-cursors' 
" Plug 'PeterRincker/vim-argumentative' 
Plug 'sheerun/vim-polyglot'
"Plug 'junegunn/vim-peekaboo' register
" Plug 'takac/vim-hardtime'
Plug 'machakann/vim-highlightedyank'
" Plug 'preservim/nerdtree'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'bfredl/nvim-miniyank'
Plug 'moll/vim-bbye'
Plug 'jacoborus/tender.vim'

" Plug 'AndrewRadev/sideways.vim' 
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-abolish'
"Plug 'amiorin/vim-project'
" Plug 'mhinz/vim-startify'
" Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'senran101604/neotrix.vim'

"GIT PLUGIN
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
"Plug 'mhartington/nvim-typescript'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'gaving/vim-textobj-argument'
"Plug 'majutsushi/tagbar'
 Plug 'jlanzarotta/bufexplorer'
 Plug 'tpope/vim-repeat'
" Plug  'vim-scripts/ReplaceWithRegister'
" Plug 'christoomey/vim-titlecase'
" Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'leafOfTree/vim-vue-plugin'
" Plug 'sukima/vim-javascript-imports'
 " Plug 'zefei/vim-wintabs'
"SNIPPETS
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hecal3/vim-leader-guide'
" Plug 'zefei/vim-wintabs-powerline'
"Plug 'dylanaraps/wal.vim'
Plug 'simeji/winresizer'
"
Plug 'AndrewRadev/splitjoin.vim'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"display css colors
"index lines
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-webdevicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug to dim colors of not-focused windows
" Plug 'blueyed/vim-diminactive'

""THEMES
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
" Plug 'arcticicestudio/nord-vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'NLKNguyen/papercolor-theme'
"LSP

"VUE  & JS
Plug 'posva/vim-vue'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
" PHP
" Plug 'joonty/vdebug'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
" Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
"Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'} " php refactoring options
Plug '2072/php-indenting-for-vim', {'for': 'php'}

" display the result when searching
Plug 'henrik/vim-indexed-search'
" Allow multisearch in current directory / multi replace as well
"Plug 'wincent/ferret'
"tmux
Plug 'benmills/vimux'
"Markdown
Plug 'junegunn/goyo.vim', { 'for': 'markdown' } " Distraction-free
Plug 'junegunn/limelight.vim', { 'for': 'markdown' } " Hyperfocus-writing
Plug 'godlygeek/tabular' " Align plugin (useful for markdown tables for example)
Plug 'christoomey/vim-titlecase' " itlecase with gt
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'}
"Plug 'alvan/vim-closetag'

Plug 'mattn/emmet-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"Plug 'xolox/vim-misc'
"EASY motion
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
" Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
"Plug 'AlphaMycelium/pathfinder.vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/edge'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
Plug 'rakr/vim-two-firewatch'

"treesitter themes
Plug 'mhartington/oceanic-next'
Plug 'folke/tokyonight.nvim'
Plug 'rktjmp/lush.nvim'


Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'glepnir/galaxyline.nvim'
Plug 'siduck76/nvim-base16.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'navarasu/onedark.nvim'


" Plug 'joshdick/onedark.vim'
call plug#end()
" Leader key <SPACE>
let mapleader=" "
let g:lmap =  {}
nnoremap <Space> <Nop>
" GUTTEN TAGS 
"au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &
source $HOME/.config/nvim/settings/general.vim
source $HOME/.config/nvim/settings/mappings.vim
" source every plugin configs
for file in split(glob("~/.config/nvim/pluggedconf/*.nvimrc"), '\n')
    execute 'source' file
endfor

autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue


lua require ('nvimTree');
" lua require ("treesitter-nvim")
" lua require "gitsigns-nvim"

lua require "file-icons"
lua require "top-bufferline"
" lua require "statusline"
lua require'colorizer'.setup()
lua require "custom_highlights"

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1


" let g:coc_node_path= '~/.nvm/versions/node/v14.11.0/bin/node'



"   filetype plugin indent off
" endif


"Coc extensions
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-css', 
    \ 'coc-html',
    \]
" \ 'coc-markmap',
" \ 'coc-sh',
    " \ 'coc-tsserver',


if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>
"indet 4 php
"phpactor:CocList extensions
filetype plugin indent on
autocmd BufRead,BufNewFile *.php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.vue setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.ts setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js setlocal tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on
set expandtab


nmap <F8> :TagbarToggle<CR>
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" important!!
" for dark version
" let ayucolor="mirage"
" let ayucolor="dark"
" let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_light="hard"
" let g:gruvbox_contrast_dark="medium"
" let g:gruvbox_italic=1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette="original"
let g:gruvbox_material_disable_italic_comment = 1
" let g:sonokai_style = 'atlantis'
" let g:sonokai_enable_italic = 1
" let g:sonokai_menu_selection_background = 'blue'
" let g:sonokai_current_word = 'italic'
" let g:dracula_colorterm = 0

  set termguicolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:neotrix_dark_contrast = "galaxy_hard"
" set background=dark
let g:onedark_style = 'deep'
colorscheme onedark

let g:two_firewatch_italics=1

"cursors
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

syntax on


" " the configuration options should be placed before `colorscheme forest-night`
" let g:forest_night_enable_italic = 1
" let g:forest_night_disable_italic_comment = 1

" colorscheme forest-night
" let g:edge_disable_italic_comment = 1
" let g:edge_enable_italic = 1
" let g:edge_current_word = 'gray background'
" let g:edge_style = 'dark'
autocmd CursorHold * silent call CocActionAsync('highlight')
" colorscheme forest-night


"hi! link htmlTagName GruvboxRed
"hi! link htmlArg GruvboxYellow
hi! link htmlArg Yellow
"hi! link htmlScriptTag GruvboxBlue
hi! link htmlSpecialTagName PurpleBold
"hi! link javascriptMethod AquaBold

highlight! link phpFunction AquaBold
highlight! link phpMethod AquaBold 


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"
" Navigate
"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_



" tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>

highlight MaxLineChar ctermbg=red
autocmd vimrc FileType php,js,vue,go call matchadd('MaxLineChar', '\%100v', 100)


" restore the position of the last cursor when you open a file
autocmd vimrc BufReadPost * call general#RestorePosition()

" delete trailing space when saving files
autocmd vimrc BufWrite *.ts,*.php,*.js,*.jsx,*.vue,*.twig,*.html,*.sh,*.yaml,*.yml,*.clj,*.cljs,*.cljc :call general#DeleteTrailingWS()
" Open images with feh
autocmd vimrc BufEnter *.png,*.jpg,*gif silent! execute "! feh ".expand("%") | :bw


" fun! Mksession(name)
"     let need_tree = g:NERDTree.IsOpen()
"     NERDTreeClose
"     execute "mksession! " . a:name
"     if need_tree
"         call writefile(readfile(a:name)+['NERDTree'], a:name)
"         NERDTree
"     endif
" endfun
" number of undo saved in memory
set undolevels=10000 " How many undos
set undoreload=10000 " number of lines to save for undo

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" set list
set list listchars=tab:\┆\ ,trail:·,nbsp:±

" doesn't prompt a warning when opening a file and the current file was written but not saved 
set hidden

" no swap file! This is just annoying
set noswapfile

" write automatically when quitting buffer
set autowrite
" Fold related
set foldlevelstart=0 " Start with all folds closed
set foldtext=general#FoldText()
" Show the substitution LIVE
set inccommand=nosplit

" Better ex autocompletion
set wildmenu
set wildmode=list:longest,full

" for vertical pane in git diff tool
set diffopt+=vertical
autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


""MARKDOWN 

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


set encoding=utf-8

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
" }}
"

set ttimeoutlen=1
"hard mode
let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
let g:hardtime_showmsg = 1
let g:hardtime_timeout = 1000
let g:hardtime_default_on = 1
let g:hardtime_maxcount = 2

let g:hardtime_ignore_buffer_patterns = ['Quickfix*','*fugitive*',"Tagbar*", "NERD.*" ]
let g:airline_theme='twofirewatch'


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php, *.vue'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
"nmap p :pu<CR>
inoremap <C-F> <C-R>"
let g:vue_pre_processors = ['pug', 'scss', 'typescript']
let g:vim_vue_plugin_use_sass = 1
let g:vim_vue_plugin_highlight_vue_attr=1

"append ; to end line
inoremap <C-l> <ESC>A;
inoremap <C-p> <ESC>A => 
let g:user_emmet_install_global = 1
autocmd FileType html,css,php,vue,jsx,js  EmmetInstall

source $HOME/.config/nvim/settings/leader-guide.vim

set cmdheight=1



"COC


autocmd FileType markdown let b:coc_pairs_disabled = ['`']

autocmd BufEnter *.{js,jsx,ts,tsx,vue} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx,vue} :syntax sync clear
let g:dart_format_on_save = 1
let g:ale_disable_lsp = 0




" prabirshrestha/vim-lsp
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 0
let g:lsp_diagnostics_signs_error = { 'text': '✘❯' }
let g:lsp_diagnostics_signs_hint = { 'text': '◆❯' }
let g:lsp_diagnostics_signs_information = { 'text': '◆❯' }
let g:lsp_diagnostics_signs_warning = { 'text': '▲❯' }
let g:lsp_diagnostics_signs_priority = 10
let g:lsp_log_file = ''
let g:lsp_semantic_enabled = 0
nmap <silent> gd <plug>(lsp-definition)
nmap <silent> gi <plug>(lsp-implementation)
nmap <silent> gr <plug>(lsp-references)
nmap <silent> gn <plug>(lsp-next-diagnostic)
nmap <silent> gp <plug>(lsp-previous-diagnostic)


" mattn/vim-lsp-settings
" let s:efm_filetypes = ['bash', 'javascript', 'javascriptreact', 'sh', 'typescriptreact', 'zsh']
" let g:lsp_settings_servers_dir = expand($HOME) . '/.lsp/servers'
" let g:lsp_settings_filetype_javascript = ['typescript-language-server', 'efm-langserver']
" let g:lsp_settings_filetype_javascriptreact = g:lsp_settings_filetype_javascript
" let g:lsp_settings_filetype_typescript = g:lsp_settings_filetype_javascript
" let g:lsp_settings_filetype_typescriptreact = g:lsp_settings_filetype_javascript
" let g:lsp_settings = {
" \ 'efm-langserver': {
" \   'allowlist': s:efm_filetypes,
" \   'cmd': [
" \     lsp_settings#exec_path('efm-langserver'),
" \     '-c',
" \     expand($HOME) . '/.config/efm-langserver/config.yaml',
" \   ],
" \   'disabled': !lsp_settings#executable('efm-langserver'),
" \ },
" \ 'intelephense': {
" \   'cmd': [
" \     '/usr/bin/node',
" \     '--max-old-space-size=8192',
" \     lsp_settings#exec_path('intelephense'),
" \     '--stdio',
" \   ],
" \   'workspace_config': {
" \     'intelephense': {
" \       'licenceKey': '000H7RB6TZIJX99',
" \       'files': {
" \         'exclude': [
" \           '**/.git/**',
" \           '**/.svn/**',
" \           '**/.hg/**',
" \           '**/CVS/**',
" \           '**/.DS_Store/**',
" \           '**/node_modules/**',
" \           '**/bower_components/**',
" \           '**/htdocs_customshops/**',
" \           '**/htdocs_gearman/**',
" \           '**/htdocs/assets/dist/**',
" \           '**/tmp/**',
" \           '**vendor/*/{!(phpunit)/**}',
" \           'translations/**',
" \           '**/.phan/**',
" \           '**/cron.d/**',
" \           '**/generated/**',
" \           '**/Generated/**',
" \         ],
" \       },
" \     },
" \   },
" \ },
" \}

let g:lsp_diagnostics_enabled = 0 
fu! IsLargeBuffer()
  if line2byte(line("$") + 1) < 1000000 | return | endif
  syntax clear
  call lsp#disable_diagnostics_for_buffer(bufnr('%'))
endfu
autocmd BufWinEnter * call IsLargeBuffer()
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_fix_on_save = 1
" Set the completefunc you can do this per file basis or with a mapping
set completefunc=tailwind#complete
" The mapping I use
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>
" Add this autocmd to your vimrc to close the preview window after the completion is done
autocmd CompleteDone * pclose

call textobj#user#plugin('line', {
\   '-': {
\     'select-a-function': 'CurrentLineA',
\     'select-a': 'al',
\     'select-i-function': 'CurrentLineI',
\     'select-i': 'il',
\   },
\ })

function! CurrentLineA()
  normal! 0
  let head_pos = getpos('.')
  normal! $
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CurrentLineI()
  normal! ^
  let head_pos = getpos('.')
  normal! g_
  let tail_pos = getpos('.')
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  return
  \ non_blank_char_exists_p
  \ ? ['v', head_pos, tail_pos]
  \ : 0
endfunction


