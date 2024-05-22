require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "tsserver", "eslint", "bashls", "pylsp"}
})

-- Setup Neodev before lspconf
-- enhances lua_ls
require("neodev").setup({})

-- LSP keymapping
local on_attach = function(_,_)

  -- Mappings.
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


local lspconf = require("lspconfig")

lspconf.tsserver.setup {
  on_attach = on_attach
}

lspconf.eslint.setup {
  on_attach = on_attach
}

lspconf.bashls.setup {
  on_attach = on_attach
}

lspconf.pylsp.setup {
  on_attach = on_attach
}

lspconf.lua_ls.setup {
  on_attach = on_attach
}
