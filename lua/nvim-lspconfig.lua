function on_attach(client)
   require'lsp_signature'.on_attach()
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    local opts = {noremap = true, silent = true}

    -- buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    -- buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    -- buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    -- buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
    buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
    buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
    buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end
end

local lspconf = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

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
require'lspconfig'.intelephense.setup{
  on_attach=on_attach,
  licenseKey='000H7RB6TZIJX99'
  -- capabilities = capabilities,
}
require'lspconfig'.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
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
	}
}



-- vls conf example
--lspconf.php.setup {
--  on_attach=on_attach
--}
--lspconf.vls.setup {
  --on_attach=on_attach
--}

-- lua lsp settings
-- USER = "/home/" .. vim.fn.expand("$USER")

-- local sumneko_root_path = USER .. "/.config/lua-language-server"
-- local sumneko_binary = USER .. "/.config/lua-language-server/bin/Linux/lua-language-server"

-- lspconf.sumneko_lua.setup {
--     cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
--     root_dir = function()
--         return vim.loop.cwd()
--     end,
--     settings = {
--         Lua = {
--             runtime = {
--                 version = "LuaJIT",
--                 path = vim.split(package.path, ";")
--             },
--             diagnostics = {
--                 globals = {"vim"}
--             },
--             workspace = {
--                 library = {
--                     [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--                     [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
--                 }
--             },
--             telemetry = {
--                 enable = false
--             }
--         }
--     }
-- }

-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})
