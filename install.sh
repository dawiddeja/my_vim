#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc

sudo apt install build-essential cmake python3-dev

vim -e +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py
