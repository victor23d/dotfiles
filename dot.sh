#! /bin/bash

cd ~

if [[ -e ~/.dotfiles_back ]];then
    rm -rf .dotfiles_back
fi

if [[ ! -e ~/.config ]];then
    mkdir ~/.config
fi

mkdir -p .dotfiles_back/vscode

mv -f .zshrc .tmux.conf .tmux.conf.local    .gitconfig .vim .vimrc .config/nvim .SpaceVim.d ~/.dotfiles_back

ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.tmux.conf.local ~/
# ln -s ~/dotfiles/.editrc ~/
# ln -s ~/dotfiles/.inputrc ~/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.config/nvim ~/.config/
ln -s ~/dotfiles/.SpaceVim.d ~/

cp -r ~/dotfiles/custom ~/.oh-my-zsh/

if [[ -e ~/.SpaceVim ]];then
    rm -rf ~/.vim
    rm -rf ~/.vim_back
    rm -rf ~/.config/nvim
    rm -rf ~/.config/nvim_back
    rm -rf ~/.vimrc
    rm -rf ~/.vimrc_back
    ln -s ~/.SpaceVim ~/.vim
    ln -s ~/.SpaceVim ~/.config/nvim
fi

if [[ `uname -a` =~ 'Darwin' ]];then
    mv -f ~/Library/Application\ Support/Code/User/keybindings.json ~/.dotfiles_back/vscode/
    mv -f ~/Library/Application\ Support/Code/User/settings.json ~/.dotfiles_back/vscode
    mv -f ~/Library/Application\ Support/Code/User/snippets ~/.dotfiles_back/vscode

    ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    ln -s ~/dotfiles/vscode/snippets ~/Library/Application\ Support/Code/User/snippets
fi

