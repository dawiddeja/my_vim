#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc

sudo apt install build-essential cmake python3-dev

vim -e +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
# Fix for making YouCompleteMe on ubuntu 18.04
git checkout d98f896ada495c3687007313374b2f945a2f2fb4
python3 install.py
