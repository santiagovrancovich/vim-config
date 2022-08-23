" Colorscheme and visual aspects
set bg=dark
syntax on
set number
color gruvbox
let g:gruvbox_contrast_dark='hard'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

"Identation and formatting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8

"Allow sharing system clipboard
set clipboard=unnamedplus

"Toggle NerdTree
nnoremap <silent> <expr> <C-b> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

"Toggle and delete buffers
map <C-g> :bn<CR>
map <C-d> :bd<CR>

"Select all text
map <C-a> ggVG<End>
