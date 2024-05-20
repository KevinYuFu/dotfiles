vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- NerdTree Like Mappings
  vim.keymap.set('n', '?', api.tree.toggle_help,                opts('Help'))
  vim.keymap.set('n', '-', api.node.open.horizontal,            opts('hsplit'))
  vim.keymap.set('n', 'i', api.node.open.horizontal,            opts('hsplit'))
  vim.keymap.set('n', '|', api.node.open.vertical,              opts('vsplit'))
  vim.keymap.set('n', 's', api.node.open.vertical,              opts('vsplit'))
  vim.keymap.set('n', 'u', api.tree.change_root_to_parent,      opts('up'))
  --vim.keymap.set('n', '<C-N>', api.fs.create,                   opts('new'))
  vim.keymap.set('n', 'o', api.node.open.no_window_picker,      opts('new'))
end

require("nvim-tree").setup({
  ---
  on_attach = my_on_attach,
  ---
})

-- Open NERDTree automatically when vim starts up if no files were specified
if vim.fn.argc(-1) == 0 then
  vim.cmd("NvimTreeOpen")
end

-- Ctrl-n to toggle Nvim-Tree
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
