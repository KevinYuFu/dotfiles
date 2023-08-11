vim.cmd([[
syntax enable           " Turn on syntax highlights
set confirm                     " Compt to save before exit
set hidden                      " leave hidden buffers open
set history=100         " increase vim stored history
set autoread            " Reload files changed outside vim
set autoindent          " keep previous line indentation
set visualbell          " turn off bell sound
set re=2                        " Use a non-broken regex engine for syntax highlighting    set nocompatible        " ward off unexpected things that distro might have made + sanely reset options when re-sourcing .vimrc
set showcmd                     " show partial commands in the last line of the screen     set nomodeline          " Modelines allow insecure options to be set. (Should look into this in future)
set confirm                     " Ask to save unsaved work upon closing
set visualbell          " Use visual bell instead of beeping when doing something wrong
" set mouse=a                   " enable mouse usage (Lol....)

" set indentation settings                                                                 filetype indent plugin on       " Attempt to determine the type of a file based on name/content. Allow intelligent auto indenting
filetype plugin on      " enable vim's feature for file browsing (technically a plugin)
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " Set tab size to 4 spaces
let g:indent_guides_auto_colors = 0
hi IndentGuideOdd ctermbg=black                 " set custom indent colors (Requires plugin)
hi IndentGuideOdd ctermbg=darkgrey              " set custom indent colours                
hi Normal ctermbg=none                          " Set ctermbg to none to stop gnome-terminal colour scheme overide

let NERDTreeShowHidden=1

" my UI configurations
set rnu                                 " relative numberLine
set nu                                  " set absolute numberLine
set gcr=a:blinkon0              " Disable cursor blink
set timeoutlen=200      " alter time vim waits for you to complete a sequence of chars
set hlsearch            " highlight text being searched                                    set so=15                       " always have space below and abover cursor (set scrolloff=#)
set t_Co=256            " Add this to work for GitBash
set foldlevelstart=1
"set colorcolumn=81
set cursorline

set complete -=i                " There's an issue with ctrl-n completion making it slow
]])
