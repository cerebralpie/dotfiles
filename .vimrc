# Plugin manager: Plug
# https://github.com/junegunn/vim-plug

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'maxboisvert/vim-simple-complete'
Plug 'tpope/vim-fugitive'
call plug#end()

set number
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=5

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
