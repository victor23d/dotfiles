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
echo '--------------------install zsh--------------------'
apt install -y zsh


# oh-my-zsh
if [[ ! -e ~/.oh-my-zsh ]];then
    echo '--------------------install oh-my-zsh--------------------'
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# zsh-completions
# if [[ ! -e ~/.oh-my-zsh/custom/plugins/zsh-completions ]];then
#     cd ~
#     git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# fi

# nvim
if [[ ! `nvim -v` =~ '0.3' ]];then
    echo '--------------------install neovim--------------------'
    curl -SsLo /opt/nvim https://github.com/neovim/neovim/releases/download/v0.3.1/nvim.appimage
    chmod 777 /opt/nvim
    ln -s /opt/nvim /usr/local/bin/
    # pip3 install neovim
    pip install neovim
fi

# percol
#echo '--------------------install percol--------------------'
#pip install percol

# tmux
echo '--------------------install tmux--------------------'
apt install -y tmux
echo 'set-window-option -g mode-keys vi' > ~/.tmux.conf

# oh-my-tmux
# if [[ ! -e ~/.tmux ]];then
# echo '--------------------install oh-my-tmux--------------------'
# cd ~
# git clone https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .
# fi

# not ack2
echo '--------------------install ag--------------------'
apt install silversearcher-ag


# fzf
if [[ ! -e ~/.fzf ]];then
    echo '--------------------install fzf--------------------'
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
fi


echo '--------------------install fasd--------------------'
add-apt-repository ppa:aacebedo/fasd
apt update
apt install fasd -y


echo '================================================================================'
echo 'Done, after run start_backup then exit and login back...'



# TODO
# Oh-my-zsh exit
# fasd [ENTER]
