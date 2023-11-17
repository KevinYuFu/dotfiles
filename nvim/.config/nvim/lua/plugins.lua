vim.cmd([[
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

        Plug 'https://github.com/scrooloose/nerdtree.git'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-surround'
        Plug 'morhetz/gruvbox'                  " colorscheme
        Plug 'cocopon/iceberg.vim'              " colorscheme
        Plug 'folke/tokyonight.nvim'            " colorscheme

        " HTML Pluggin
        Plug 'mattn/emmet-vim'
        Plug 'andrewradev/tagalong.vim'
        Plug 'alvan/vim-closetag'

        " Airline Pluggins
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " cmp-vnim
        Plug 'neovim/nvim-lspconfig'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'

        " Luasnap with nvim-cmp
        Plug 'L3MON4D3/LuaSnip'
        Plug 'saadparwaiz1/cmp_luasnip'


        " Not Used
        "
        "Plug 'tpope/vim-repeat'
        "Plug 'yggdroot/indentline'
        "Plug 'terryma/vim-multiple-cursors'
        "
        " Plug 'cocopon/iceberg.vim'            " Nice coloursceme. TryLater
        " Plug 'itchyny/lightline.vim'          " Pick one of the two
        " Plug 'valloric/youcompleteme'         " Not sure if I want this
        " Plug 'valloric/youcompleteme' " Might try this later
        " Plug 'fatih/vim-go' " For when I chose to learn go

call plug#end()
]])
