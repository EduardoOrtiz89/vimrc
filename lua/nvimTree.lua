require'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = true,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
    }
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,


      diagnostics = false,
      git = false,
      profile = false,
    },
  },
} -- END_DEFAULT_OPTS





local g = vim.g

-- vim.o.termguicolors = true

--     require'nvim-tree'.setup {
--       disable_netrw       = true,
--       hijack_netrw        = true,
--       open_on_setup       = false,
--       ignore_ft_on_setup  = {},
--       follow = true,
--       update_to_buf_dir   = {
--         enable = true,
--         auto_open = true,
--       },
--       open_on_tab         = true,
--       hijack_cursor       = false,
--       update_cwd          = false,
--       diagnostics         = {
--         enable = true,
--         icons = {
--           hint = "",
--           info = "",
--           warning = "",
--           error = "",
--         }
--       },
--       update_focused_file = {
--         enable      = true,
--         update_cwd  = false,
--         ignore_list = {}
--       },
--       system_open = {
--         cmd  = nil,
--         args = {}
--       },
--       view = {
--         width = 30,
--         height = 30,
--         side = 'left',
--         auto_resize = false,
--         mappings = {
--           custom_only = false,
--           list = {}
--         }
--       },
--       filters = {
-- 	dotfiles = false,
-- 	custom = {}
--       }
--     }




-- g.nvim_tree_show_icons = {
--     git = 1,
--     folders = 1,
--     files = 1,
--     folder_arrows = 1
-- }

-- -- g.nvim_tree_icons = {
-- --     default = " ",
-- --     symlink = " ",
-- --     git = {
-- --         unstaged = "✗",
-- --         staged = "✓",
-- --         unmerged = "",
-- --         renamed = "➜",
-- --         untracked = "★",
-- --         ignored = "◌"
-- --     },
-- --     folder = {
-- --         default = "",
-- --         open = "",
-- --         symlink = ""
-- --     },
-- --     lsp =  {
-- --          hint = "",
-- --          info = "",
-- --          warning = "",
-- --          error = "",
-- --        }
-- -- }

local get_lua_cb = function(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

-- -- Mappings for nvimtree

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

g.nvim_tree_bindings = {
    ["<CR>"] = get_lua_cb("edit"),
    ["o"] = get_lua_cb("edit"),
    ["<2-LeftMouse>"] = get_lua_cb("edit"),
    ["<2-RightMouse>"] = get_lua_cb("cd"),
    ["<C-]>"] = get_lua_cb("cd"),
    ["<C-v>"] = get_lua_cb("vsplit"),
    ["<C-x>"] = get_lua_cb("split"),
    ["<C-t>"] = get_lua_cb("tabnew"),
    ["<BS>"] = get_lua_cb("close_node"),
    ["<S-CR>"] = get_lua_cb("close_node"),
    ["<Tab>"] = get_lua_cb("preview"),
    ["I"] = get_lua_cb("toggle_ignored"),
    ["H"] = get_lua_cb("toggle_dotfiles"),
    ["R"] = get_lua_cb("refresh"),
    ["a"] = get_lua_cb("create"),
    ["d"] = get_lua_cb("remove"),
    ["r"] = get_lua_cb("rename"),
    ["<C-r>"] = get_lua_cb("full_rename"),
    ["x"] = get_lua_cb("cut"),
    ["c"] = get_lua_cb("copy"),
    ["p"] = get_lua_cb("paste"),
    ["[c"] = get_lua_cb("prev_git_item"),
    ["]c"] = get_lua_cb("next_git_item"),
    ["-"] = get_lua_cb("dir_up"),
    ["q"] = get_lua_cb("close"),
}
