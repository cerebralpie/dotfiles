"Plugin manager: Plug"
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'maxboisvert/vim-simple-complete'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"Text editor configuration"
set number
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set foldlevel=5

"Automatically displays all buffers when there's only one tab open"
let g:airline#extensions#tabline#enabled = 1

"To ensure that EditorConfig works well with Tim Pope's fugitive"
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"NERDTree configuration"
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
