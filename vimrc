set nocompatible
set backspace=indent,eol,start
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'L9'

Plug 'bling/vim-airline'
Plug 'adlawson/vim-sorcerer'
Plug 'scrooloose/NERDTree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'sjl/badwolf'
Plug 'jscappini/material.vim'
Plug 'Yggdroot/indentLine'
Plug 'DrSpatula/vim-buddy'
Plug 'fent/vim-frozen'
Plug 'kristijanhusak/vim-hybrid-material'

call plug#end()

" colorscheme badwolf
" colorscheme material
colorscheme hybrid_material

set laststatus=2
set guifont=Monoid:h10
set list
set number
set relativenumber
syntax on
set nowrap
set hidden

set ts=4 sts=4 sw=4 et
set colorcolumn=120

" Opening tagbat
nmap <F2> :TagbarToggle<CR>

"
"" C++ highlighting tweaks
"let g:cpp_class_scope_highlight = 1
"let g:cpp_experimental_template_highlight = 1
"
"" Buffers as tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'hybrid'


set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:indentLine_enabled = 1
nmap <F3> :IndentLinesToggle<CR>

nmap <F4> :NERDTreeToggle<CR>

"" Rainbow coloring brakets
"let g:rainbow_active = 1

set fileencodings=ucs-bom,utf-8,default,latin1
set fileencoding=utf-8

set encoding=utf-8
set fileformat=unix

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
