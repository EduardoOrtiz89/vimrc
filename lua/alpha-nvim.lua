return {
  'goolord/alpha-nvim',
  "nvim-tree/nvim-web-devicons",
  config = function ()
    require'alpha'.setup(require'alpha.themes.dashboard'.config)
  end
}
