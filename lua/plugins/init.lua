return {

        -- color related stuff
        "siduck76/nvim-base16.lua",
        "norcalli/nvim-colorizer.lua",
        -- "ollykel/v-vim", -- v syntax highlighter

        -- lsp stuff
        "sbdchd/neoformat",

        "akinsho/nvim-bufferline.lua",
        "glepnir/galaxyline.nvim",
        "windwp/nvim-autopairs",
        "alvan/vim-closetag",


        -- file managing , picker etc
        -- "kyazdani42/nvim-tree.lua",
        -- "kyazdani42/nvim-web-devicons",
        "ryanoasis/vim-devicons",
        "nvim-lua/popup.nvim",

        -- misc
        "tweekmonster/startuptime.vim",
        "907th/vim-auto-save",
        "karb94/neoscroll.nvim",
        "kdav5758/TrueZen.nvim",
        "folke/which-key.nvim",
        'tpope/vim-commentary',
        'tpope/vim-surround',
        'tpope/vim-repeat',
        'christoomey/vim-system-copy',
        {
          'kana/vim-textobj-user', dependencies = {
            'kana/vim-textobj-entire',
            'kana/vim-textobj-line',
            -- 'gaving/vim-textobj-argument',
            'thalesmello/vim-textobj-multiline-str',
          }
        },
        'AndrewRadev/splitjoin.vim',
        'machakann/vim-highlightedyank',
        'ggandor/lightspeed.nvim',
        'mhinz/vim-signify',
        -- 'mrdotb/vim-tailwindcss',
        -- 'sheerun/vim-polyglot',
        -- '2072/PHP-Indenting-for-VIm',
        'folke/lsp-colors.nvim',
        -- 'StanAngeloff/php.vim', tpope /
        'tpope/vim-dadbod',
        'tpope/vim-fugitive',
        'unblevable/quick-scope',

        'RishabhRD/popfix',
        'RishabhRD/nvim-lsputils',
        -- 'junegunn/fzf',
        -- 'junegunn/fzf.vim',
        'godlygeek/tabular',
        'plasticboy/vim-markdown',
         { 'TimUntersberger/neogit', dependencies = 'nvim-lua/plenary.nvim' },
        { 'camspiers/snap', rocks = {'fzy'}},
        'leafOfTree/vim-vue-plugin',
        'jwalton512/vim-blade',
        'rafamadriz/neon',
        'nvim-lualine/lualine.nvim',
        -- 'noahfrederick/vim-laravel',


                -- 'Yggdroot/indentLine',

        -- discord rich presence
        --use "andweeb/presence.nvim"

         {"lukas-reineke/indent-blankline.nvim", branch = "master"},
}
