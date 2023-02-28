return {
  'EdenEast/nightfox.nvim',
  config = function() 
    require('nightfox').setup({
      palletes = {
        nightfox = {
          comment = "#7E8294",
          red = "#c94f6d",
        }
      },
      options = {
        styles = {
          -- comments = "italic",
          types = "italic",
          keywords = "italic,bold",
          conditionals = "italic,bold",
          -- functions = "italic,bold",
        }
      }
    })
    vim.cmd("colorscheme nightfox")

  end
}
