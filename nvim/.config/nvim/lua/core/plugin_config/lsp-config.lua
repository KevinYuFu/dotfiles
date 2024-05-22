require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "tsserver", "eslint", "bashls", "pylsp"}
})

local on_attach = function(_,_)
  vim.keymaps.set('n', '<leader>rn', vim.lsp.buf.rename(), {})
  vim.keymaps.set('n', '<leader>ca', vim.lsp.buf.code_action(), {})

  vim.keymaps.set('n', 'gd', vim.lsp.buf.definition(), {})
  vim.keymaps.set('n', 'gi', vim.lsp.buf.implementation(), {})
  vim.keymaps.set('n', 'gr', require('telescope_builtin').lsp_references, {})
  vim.keymaps.set('n', 'K', vim.lsp.buf.hover(), {})
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
  on_attach = on_attach,
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
    -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      }
    })
  end,
  settings = {
    Lua = {}
  }
}
