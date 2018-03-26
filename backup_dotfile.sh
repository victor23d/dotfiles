#! /bin/bash

mkdir ~/.dotfile.bak
mv ~/.zshrc ~/.dotfile.bak
mv ~/.vimrc ~/.dotfile.bak 
mv ~/.tmux.conf ~/.dotfile.bak
cp -s ~/.dotfile/.zshrc ~/
cp -s ~/.dotfile/.vimrc ~/
cp -s ~/.dotfile/.tmux.conf ~/
