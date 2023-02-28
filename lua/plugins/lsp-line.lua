return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  keys = {
    {"<leader>l", "<cmd> lua require('lsp_lines').toggle<CR>", desc = "Toggle LSP Lines"},
  },
  config = function()
    require("lsp_lines").setup()
    -- vim.diagnostic.config({ virtual_lines = false })
  end
}
