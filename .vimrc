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

"Copy with xclip in case clipboard is disabled, so it can interact with the
"X server clipboard
if !has('clipboard')
    map <silent> <C-y> :w !xclip -selection clipboard<CR><CR>
endif

"Toggle NerdTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"Toggle and delete buffers
map <C-g> :bn<CR>
map <C-d> :bd<CR>

"Select all text
map <C-a> ggVG<End>
