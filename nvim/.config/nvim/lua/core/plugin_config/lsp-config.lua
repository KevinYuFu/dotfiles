require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "tsserver", "eslint", "bashls", "pylsp"}
})

-- Setup Neodev before lspconf
-- enhances lua_ls
require("neodev").setup({})

-- LSP keymapping
local on_attach = function(_, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { buffer = bufnr, noremap = true, silent = true }
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', require('telescope_builtin').lsp_references, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
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
