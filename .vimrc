set bg=dark
syntax on
set number
color gruvbox
let g:gruvbox_contrast_dark='hard'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

"Toggle NerdTree
nnoremap <silent> <expr> <C-b> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
"Toggle and delete buffers
map <C-g> :bn<CR>
map <C-d> :bd<CR>
