#! /bin/bash

cd ~

if [[ -e ~/.dotfiles_back ]];then
    rm -rf .dotfiles_back
fi

if [[ ! -e ~/.config ]];then
    mkdir ~/.config
fi

mkdir .dotfiles_back

mv -f .zshrc .bashrc .tmux.conf .tmux.conf.local .editrc .inputrc .gitconfig .vim .vimrc .config/nvim .SpaceVim.d .dotfiles_back

ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.tmux.conf.local ~/
ln -s ~/dotfiles/.editrc ~/
ln -s ~/dotfiles/.inputrc ~/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.config/nvim ~/.config/
ln -s ~/dotfiles/.SpaceVim.d ~/

if [[ -e ~/.SpaceVim ]];then
    rm -rf ~/.vim
    rm -rf ~/.config/nvim
    rm -rf ~/.vim_back
    rm -rf ~/.config/nvim_back
    rm -rf ~/.vimrc_back
    ln -s ~/.SpaceVim ~/.vim
    ln -s ~/.SpaceVim ~/.config/nvim
fi


