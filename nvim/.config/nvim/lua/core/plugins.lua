local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
  -- Colour Theme
  Plug 'ellisonleao/gruvbox.nvim'

  -- syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter' -- Need some fix

  -- statusline
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-lualine/lualine.nvim'

  -- File Nav
  Plug 'nvim-tree/nvim-tree.lua'

  -- Mini: Swiss Army
  Plug 'echasnovski/mini.nvim'

  -- Fuzzy Finder - telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug ('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })

  -- LSP
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'

  -- Lua lsp enhancement
  Plug 'folke/neodev.nvim'

vim.call('plug#end')
