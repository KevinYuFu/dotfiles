-- keybindings.lua

-- need a map method to handle the different kinds of key maps
local function map(mode, combo, mapping, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, combo, mapping, options)
end


-- " [_rr] resource vimrc
vim.cmd('map <leader>rr :source ~/.config/nvim/init.lua <CR><C-f>')

-- " [ctrl-f] remove search highlight
vim.cmd('nnoremap <C-f> :noh<cr>')

-- " set Ctrl-Shift to navigate horizontally faster
vim.cmd('nnoremap <PageUp> 10k')
vim.cmd('nnoremap <PageDown> 10j')

-- " Set tab to clear line and indent
vim.cmd('nnoremap <Tab> ddO')

-- " Block tab in visual mode
vim.cmd('vnoremap <Tab> >gv')
vim.cmd('vnoremap <S-Tab> <gv')

-- " allow more natural split screen navigation
vim.cmd('nnoremap <C-J> <C-W><C-J>')
vim.cmd('nnoremap <C-K> <C-W><C-K>')
vim.cmd('nnoremap <C-L> <C-W><C-L>')
vim.cmd('nnoremap <C-H> <C-W><C-H>')
vim.keymap.set('n', '|', ':vnew<cr>')
-- 
-- " Visual PageUp PageDown
vim.cmd('vnoremap <PageUp> 10k')
vim.cmd('vnoremap <PageDown> 10j')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
