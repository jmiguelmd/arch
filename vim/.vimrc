set nocompatible

let mapleader = ","

set relativenumber
set showcmd
set ruler

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
set splitright

syntax on

" {{{ perl related commands
nnoremap <leader>w :w<CR>
nnoremap <leader>p :!perl %<CR>
nnoremap <leader>t :!prove %<CR>
nnoremap <leader>f :!perltidy -pro=/home/nonius/.perltidyrc -b %<CR>
" }}}

" {{{ switch to tab page
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
" }}}

" {{{ tab settings
filetype plugin indent on
autocmd FileType perl setlocal  tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType php setlocal  tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" }}}

"" vim:fdm=marker
