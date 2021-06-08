local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- color related stuff
        use "siduck76/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"
        -- use "ollykel/v-vim" -- v syntax highlighter

        -- lsp stuff
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "onsails/lspkind-nvim"
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"

        use "lewis6991/gitsigns.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- snippet support
        use "hrsh7th/vim-vsnip"
        use "hrsh7th/vim-vsnip-integ"
        use "rafamadriz/friendly-snippets"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"

        -- misc
        use "tweekmonster/startuptime.vim"
        use "907th/vim-auto-save"
        use "karb94/neoscroll.nvim"
        use "kdav5758/TrueZen.nvim"
        use "folke/which-key.nvim"
        use 'tpope/vim-commentary'
        use 'tpope/vim-surround'
        use 'gaving/vim-textobj-argument'
        use 'tpope/vim-repeat'
        use 'christoomey/vim-system-copy'
        use 'kana/vim-textobj-user'
        use 'kana/vim-textobj-entire'
        use 'kana/vim-textobj-line'
        use 'AndrewRadev/splitjoin.vim'
        use 'thalesmello/vim-textobj-multiline-str'
        use 'machakann/vim-highlightedyank'
        use 'mhinz/vim-signify'
        -- use 'mrdotb/vim-tailwindcss'
        use 'phpactor/phpactor'
        use 'SirVer/ultisnips'
        use 'honza/vim-snippets'
        use 'thomasfaingnaert/vim-lsp-snippets'
        use 'thomasfaingnaert/vim-lsp-ultisnips'
        -- use  'stephpy/vim-php-cs-fixer'
        use 'aeke/vim-php-cs-fixer'
        -- use 'sheerun/vim-polyglot'
        -- use '2072/PHP-Indenting-for-VIm'
        use 'folke/lsp-colors.nvim'
        -- use 'StanAngeloff/php.vim' tpope /
        use 'tpope/vim-dadbod'
        use 'tpope/vim-fugitive'
        use 'unblevable/quick-scope'

        use 'RishabhRD/popfix'
        use 'RishabhRD/nvim-lsputils'
        -- use 'junegunn/fzf'
        -- use 'junegunn/fzf.vim'
        -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        -- use 'ayu-theme/ayu-vim'
        -- use 'folke/tokyonight.nvim'
        -- use 'glepnir/zephyr-nvim'
        use 'sainnhe/sonokai'
        -- use 'noahfrederick/vim-laravel'


                -- use 'Yggdroot/indentLine'

        -- discord rich presence
        --use "andweeb/presence.nvim"

        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    end,
    {
        display = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
        }
    }
)
