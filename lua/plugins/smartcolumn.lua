return {
  "m4xshen/smartcolumn.nvim",
  opts = {},
  config = function()
    require("smartcolumn").setup({
       colorcolumn = 80,
    })
  end
}