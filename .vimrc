"Download and install Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugin setup
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

"tmux fixes
if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

"Plugin configuration
let g:ctrlp_max_depth=40
let g:lightline = {'colorscheme': 'wombat'}

set termguicolors
set background=dark
colorscheme gruvbox

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

set nowrap
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
