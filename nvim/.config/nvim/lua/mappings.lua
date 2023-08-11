vim.cmd([[
" [\rr] resource vimrc
map <leader>rr :source ~/.config/nvim/init.vim <CR><C-f>

" [] remove search highlight
nnoremap <C-f> :noh<cr>

" set Ctrl-Shift to navigate horizontally faster
nnoremap <PageUp> 10k
nnoremap <PageDown> 10j

" Set tab to clear line and indent
nnoremap <Tab> ddO

" Block tab in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" allow more natural split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Visual PageUp PageDown
vnoremap <PageUp> 10k
vnoremap <PageDown> 10j
]])
