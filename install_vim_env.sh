#!/bin/bash

#Designed for Vim 8.0 and above

cd ~/
if [[ -f "~/.vimrc" ]]; then
    mv -f ~/.vimrc ~/.vimrc.backup
fi
wget https://raw.githubusercontent.com/oskpla/tools-env/master/.vimrc

mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp

