return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/nvim-cmp',
    "ray-x/lsp_signature.nvim",
  },
  config = function() 

    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = { noremap=true, silent=true }
    vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)


    local lspconf = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- capabilities.textDocument.completion.completionItem.snippetSupport = true


    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      local bufopts = { noremap=true, silent=true, buffer=bufnr }

      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)


    require "lsp_signature".on_attach({
        bind = true, -- This is mandatory, otherwise border config won't get registered.
        handler_opts = {
          border = "rounded"
        }
      }, bufnr)
    end

    require'lspconfig'.intelephense.setup{
      on_attach=on_attach,
      capabilities = capabilities,
    }

    require'lspconfig'.tsserver.setup{
      on_attach = on_attach,
      capabilities = capabilities,
    }
    require'lspconfig'.tsserver.setup{
      on_attach = on_attach,
      capabilities = capabilities,
      path="/usr/bin/tsserver"
    }


    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities.textDocument.completion.completionItem.snippetSupport = true
    -- capabilities.textDocument.completion.completionItem.resolveSupport = {
    --   properties = {
    --     'documentation',
    --     'detail',
    --     'additionalTextEdits',
    --   }
    -- }

    -- these langs require same lspconfig so put em all in a table and loop through!
    local servers = {"html"}

    for _, lang in ipairs(servers) do
      lspconf[lang].setup {
        on_attach = on_attach,
        root_dir = vim.loop.cwd
      }
    end

    -- require'lspconfig'.phpactor.setup{
    --   on_attach = on_attach,
    --   capabilities = capabilities,
    -- }

    require'lspconfig'.cssls.setup{
      on_attach = on_attach
    }

    require'lspconfig'.vuels.setup{
      on_attach = on_attach
    }

    require'lspconfig'.tailwindcss.setup{
      cmd = {
        "tailwindcss-language-server",
        "--stdio"
      },
      filetypes = {
        "blade",
        "django-html",
        "html",
        "vue",
        "jsx",
        "tsx",
        "js"
      }
    }



    vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
    vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
    vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
    vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})
  end
}
