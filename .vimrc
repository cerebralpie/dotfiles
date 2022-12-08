set number
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=5
load-plugins

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
