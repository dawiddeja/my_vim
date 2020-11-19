#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc

sudo apt install build-essential cmake python3-dev

vim -e +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
# Fix for making YouCompleteMe on ubuntu 18.04
git checkout d98f896ada495c3687007313374b2f945a2f2fb4
# Fix for making ycmd compile on Ubuntu 18.04
cd third_party/ycmd
git checkout 0c543a9c928032343ba65884a29fd06c4b8d0aa2
cd ../..
git submodule update --init --recursive

python3 install.py
