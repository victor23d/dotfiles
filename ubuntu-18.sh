#! /bin/bash

set -ex
apt update -y

# python3.7
# if [[ `python3 -V` =~ '3.7' ]];then
#     echo '--------------------install python3.7--------------------'
# fi

# pip
if [[ ! `command -v pip` ]];then
    # if [[ ! ` pip --version =~ 18` ]];then
    echo '--------------------install pip--------------------'
    # curl https://bootstrap.pypa.io/get-pip.py | python3       # broken
    # apt install -y python3-venv python3-pip       # very big
    apt install -y python3-pip       # very big
    # neovim
    pip3 install -U pip
fi

# zsh
if [[ ! $(zsh --version) ]];then
    echo '--------------------install zsh--------------------'
    apt install -y zsh
fi


# oh-my-zsh
if [[ ! -e ~/.oh-my-zsh ]];then
    echo '--------------------install oh-my-zsh--------------------'
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# zsh-completions
# if [[ ! -e ~/.oh-my-zsh/custom/plugins/zsh-completions ]];then
#     cd ~
#     git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# fi

# nvim
if [[ ! `nvim -v` =~ '0.4' ]];then
    echo '--------------------install neovim--------------------'
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x nvim.appimage
    ln -s /opt/nvim/nvim /usr/local/bin/
    # pip3 install neovim
    pip install neovim
fi

# percol
#echo '--------------------install percol--------------------'
#pip install percol

# tmux
if [[ ! `tmux -V` =~ '2.6' ]];then
    echo '--------------------install tmux--------------------'
    apt install -y tmux
    # echo 'set-window-option -g mode-keys vi' > ~/.tmux.conf
fi

# oh-my-tmux
# if [[ ! -e ~/.tmux ]];then
# echo '--------------------install oh-my-tmux--------------------'
# cd ~
# git clone https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .
# fi

# not ack2
if [[ ! $(ag --version) ]];then
    echo '--------------------install ag--------------------'
    apt install silversearcher-ag
fi


if [[ ! $(rg --version) ]];then
    echo '--------------------install rc--------------------'
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
    sudo dpkg -i ripgrep_11.0.2_amd64.deb
    mv ripgrep_11.0.2_amd64.deb /t
fi


# fzf
if [[ ! -e ~/.fzf ]];then
    echo '--------------------install fzf--------------------'
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
fi


if [[ ! $(fasd --version) ]];then
    echo '--------------------install fasd--------------------'
    add-apt-repository ppa:aacebedo/fasd
    apt update
    apt install fasd -y
fi

if [[ `which fd` ]];then
    echo '--------------------install fd--------------------'
    wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd_7.3.0_amd64.deb
    dpkg -i fd_7.3.0_amd64.deb  # adapt version number and architecture
    mv fd_7.3.0_amd64.deb /t

fi

# if [[ `which go` ]];then
#     echo '--------------------install go--------------------'
#     snap install go --classic
# fi


# Rust
# cd /opt
# curl -L https://github.com/sharkdp/bat/releases/download/v0.12.1/bat-v0.12.1-x86_64-unknown-linux-gnu.tar.gz -o bat.tar.gz
# tar xf bat.tar.gz
# mv bat



echo '================================================================================'
echo 'Done, after run start_backup then exit and login back...'


# TODO
# Oh-my-zsh exit
# fasd [ENTER]

