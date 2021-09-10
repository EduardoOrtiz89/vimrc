require("telescope").setup {
   extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = false, -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      }
    },
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"

            -- "--column",
            -- "--line-number",
            -- "--no-heading",
            -- "--fixed-strings",
            -- "--ignore-case",
            -- "--no-ignore",
            -- "--hidden",
            -- "--follow",
            -- '--glob "!.git/*"',
            -- '--color "always"',
        },
        prompt_prefix = "  ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            width = 0.75,
            prompt_position = "bottom",
            preview_cutoff = 120,
            horizontal = {
                mirror = false,
                preview_width = 0.5
            },
            vertical = {
                mirror = false
            }
        },
        file_sorter = require "telescope.sorters".get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
        shorten_path = true,
        winblend = 0,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker
    },
    extensions = {
        media_files = {
            filetypes = {"png", "webp", "jpg", "jpeg"},
            find_cmd = "rg" -- find command (defaults to `fd`)
        }
    }
}

require("telescope").load_extension("media_files")
require("telescope").load_extension("fzf")

local opt = {noremap = true, silent = true}

vim.g.mapleader = " "

-- mappings
vim.api.nvim_set_keymap("n", "<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
vim.api.nvim_set_keymap(
    "n",
    "<Leader>fp",
    [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]],
    opt
)

vim.api.nvim_set_keymap("n", "<Leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fo", [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>flD", [[<Cmd>lua require('telescope.builtin').lsp_document_diagnostics()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fli", [[<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fld", [[<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>flr", [[<Cmd>lua require('telescope.builtin').lsp_references()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>flw", [[<Cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fw", [[<Cmd>lua require'telescope.builtin'.grep_string{ search = vim.fn.input("Grep For >") }<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fgf", [[<Cmd>lua require'telescope.builtin'.git_files()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fgb", [[<Cmd>lua require'telescope.builtin'.git_branches()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fgs", [[<Cmd>lua require'telescope.builtin'.git_status()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fW", [[<Cmd>lua require'telescope.builtin'.grep_string{  search = vim.fn.expand("<cword>") }<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fG", [[<Cmd>lua require'telescope.builtin'.git_files{  search = vim.fn.expand("<cword>") }<CR>]], opt)
-- nnoremap <leader>fW :exec "Rgi ".expand("<cword>")<cr>
vim.api.nvim_set_keymap("n", "<Leader>fF", [[<Cmd>lua require('telescope.builtin').find_files( find_command = {{'rg'}, '--files', '--hidden', '-g', '!node_modules/**'}})<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fm", [[<Cmd> Neoformat<CR>]], opt)
