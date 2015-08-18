set rop=type:directx,level:0.5,contrast:0.5;taamode:1

" Enable vi-incompatible Vim extensions (redundant since .vimrc exists).
set nocompatible
set backspace=indent,eol,start
filetype plugin on

" Enable Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

Plugin 'bling/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

colorscheme sorcerer
set laststatus=2
set guifont=Input:h9
set list
set number
set relativenumber
syntax on
set nowrap
set hidden

set ts=3 sts=3 sw=3 et

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


" Set environment variable to directory containing this vimrc.  Expect absolute
" directory $HOME/.vim on Unix or %USERPROFILE%\vimfiles on Windows.
" let $VIMFILES = expand("<sfile>:p:h")
