#!/bin/bash
set -e
#Designed for Vim 8.0 and above

cd $HOME
if [ -e ".vimrc" ]; then
    mv -f .vimrc .vimrc.backup
    echo "Created backup of .vimrc"
fi

echo "Downloading .vimrc..."
wget -q https://raw.githubusercontent.com/oskpla/tools-env/master/.vimrc

if [ -d ".vim" ]; then
    rm -fr .vim_backup
    mv -f .vim .vim_backup
    echo "Created backup of .vim"
fi

echo "Creating vim plugin directory..."
mkdir -p .vim/pack/plugins/start

echo "Cloning 'ctrlp' plugin..."
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git .vim/pack/plugins/start/ctrlp > /dev/null 2>&1
echo "Done"


