"tmux fixes
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
set t_Co=256

colorscheme desert
set number
set laststatus=2
set noerrorbells

set shell=/bin/bash
set noswapfile
set autoread
set history=200

let g:netrw_banner=0
let g:netrw_winsize=20

set wildmenu
set wildmode=longest:full,full
set ignorecase
set wildignorecase "case insensitive e:

set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
filetype plugin indent on

set hlsearch
set incsearch
set smartcase

set encoding=utf-8

"nnoremap <C-P> :e **/*
nnoremap <C-P> :CtrlP
nnoremap <C-L> :nohl<CR><C-l>
nnoremap <C-N> :b 

"Notes
":runtime syntax/colortest.vim
"set termguicolors
