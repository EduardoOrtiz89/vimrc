return {
  'EdenEast/nightfox.nvim',
   config = function() 
    require('nightfox').setup({
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
