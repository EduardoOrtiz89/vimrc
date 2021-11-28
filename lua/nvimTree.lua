local g = vim.g

vim.o.termguicolors = true

    require'nvim-tree'.setup {
      disable_netrw       = true,
      hijack_netrw        = true,
      open_on_setup       = false,
      ignore_ft_on_setup  = {},
      follow = true,
      update_to_buf_dir   = {
        enable = true,
        auto_open = true,
      },
      auto_close          = true,
      open_on_tab         = false,
      hijack_cursor       = false,
      update_cwd          = false,
      diagnostics         = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
      },
      update_focused_file = {
        enable      = true,
        update_cwd  = false,
        ignore_list = {}
      },
      system_open = {
        cmd  = nil,
        args = {}
      },
      view = {
        width = 30,
        height = 30,
        side = 'left',
        auto_resize = false,
        mappings = {
          custom_only = false,
          list = {}
        }
      },
      filters = {
	dotfiles = false,
	custom = {}
      }
    }




g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1
}

-- g.nvim_tree_icons = {
--     default = " ",
--     symlink = " ",
--     git = {
--         unstaged = "✗",
--         staged = "✓",
--         unmerged = "",
--         renamed = "➜",
--         untracked = "★",
--         ignored = "◌"
--     },
--     folder = {
--         default = "",
--         open = "",
--         symlink = ""
--     },
--     lsp =  {
--          hint = "",
--          info = "",
--          warning = "",
--          error = "",
--        }
-- }

-- local get_lua_cb = function(cb_name)
--     return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
-- end

-- Mappings for nvimtree

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

-- g.nvim_tree_bindings = {
--     ["<CR>"] = get_lua_cb("edit"),
--     ["o"] = get_lua_cb("edit"),
--     ["<2-LeftMouse>"] = get_lua_cb("edit"),
--     ["<2-RightMouse>"] = get_lua_cb("cd"),
--     ["<C-]>"] = get_lua_cb("cd"),
--     ["<C-v>"] = get_lua_cb("vsplit"),
--     ["<C-x>"] = get_lua_cb("split"),
--     ["<C-t>"] = get_lua_cb("tabnew"),
--     ["<BS>"] = get_lua_cb("close_node"),
--     ["<S-CR>"] = get_lua_cb("close_node"),
--     ["<Tab>"] = get_lua_cb("preview"),
--     ["I"] = get_lua_cb("toggle_ignored"),
--     ["H"] = get_lua_cb("toggle_dotfiles"),
--     ["R"] = get_lua_cb("refresh"),
--     ["a"] = get_lua_cb("create"),
--     ["d"] = get_lua_cb("remove"),
--     ["r"] = get_lua_cb("rename"),
--     ["<C-r>"] = get_lua_cb("full_rename"),
--     ["x"] = get_lua_cb("cut"),
--     ["c"] = get_lua_cb("copy"),
--     ["p"] = get_lua_cb("paste"),
--     ["[c"] = get_lua_cb("prev_git_item"),
--     ["]c"] = get_lua_cb("next_git_item"),
--     ["-"] = get_lua_cb("dir_up"),
--     ["q"] = get_lua_cb("close"),
-- }
