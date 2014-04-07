#!/bin/bash

cd $(dirname $BASH_SOURCE)

mv -v ~/.vimrc ~/.vimrc.old 2> /dev/null
mv -v ~/.vim ~/.vim.old 2> /dev/null

export GIT_SSL_NO_VERIFY=true
mkdir -p ~/.vim/autoload
curl --insecure -fL -o ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim

ln -sf `pwd`/.vimrc ~/.vimrc

vim +PlugInstall +qall

cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
./install.sh
