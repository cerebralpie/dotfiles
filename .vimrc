# Installed Plugins
# https://github.com/jiangmiao/auto-pairs
# https://github.com/preservim/nerdtree
# https://github.com/sheerun/vim-polyglot
# https://github.com/maxboisvert/vim-simple-complete

set number
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=5
load-plugins

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
