#! /bin/bash

mkdir ~/.dotfile.bak
if [ -e ~/.zshrc ]; then
mv ~/.zshrc ~/.dotfile.bak
fi
if [ -e ~/.bashrc ]; then
mv ~/.bashrc ~/.dotfile.bak
fi
if [ -e ~/.vimrc ]; then
mv ~/.vimrc ~/.dotfile.bak 
fi
if [ -e ~/.tmux.conf ]; then
mv ~/.tmux.conf ~/.dotfile.bak
fi
if [ -e ~/.tmux.conf.local ]; then
mv ~/.tmux.conf.loacl ~/.dotfile.bak
fi

cp -s ~/.dotfile/.zshrc ~/
cp -s ~/.dotfile/.bashrc ~/
cp -s ~/.dotfile/.vimrc ~/
cp -s ~/.dotfile/.tmux.conf ~/
cp -s ~/.dotfile/.tmux.conf.local ~/


