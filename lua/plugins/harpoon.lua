return {
  'ThePrimeagen/harpoon',
  dependencies = {
  'nvim-lua/plenary.nvim' 
  },
  keys = {
    {"<leader>sa", "<cmd> lua require('harpoon.mark').add_file()<CR>", desc = "Harpooon Add File"},
    {"<leader>ss", "<cmd> lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Harpoon Quick Menu"},
    {"<leader>s1", "<cmd> lua require('harpoon.ui').nav_file(1)<CR>", desc = "Nav 1"},
  },
   config = function() 
    require('harpoon').setup({
      width = vim.api.nvim_win_get_width(0) - 20;
    })
  end
}
