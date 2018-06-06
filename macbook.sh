

brew update -y
# brew upgrade -y

# python3.6
echo '--------------------install python3.6--------------------'
brew install -y python3
ln -s /usr/local/bin/python3 /usr/local/bin/python3.6

# pip
echo '--------------------install pip--------------------'
curl https://bootstrap.pypa.io/get-pip.py | python3.6

echo '--------------------install wget--------------------'
brew install wget

# zsh
echo '--------------------install zsh--------------------'
brew install -y zsh
# chsh -s $(which zsh)


# oh-my-zsh
echo '--------------------install oh-my-zsh--------------------'
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# zsh-completions
cd ~
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

# vim 8
echo '--------------------install vim8--------------------'
brew install -y vim
#PATH

echo '--------------------install grep--------------------'
brew install -y grep

# percol
echo '--------------------install percol--------------------'
pip install percol

# tmux
echo '--------------------install tmux--------------------'
brew install -y tmux

# oh-my-tmux
echo '--------------------install oh-my-tmux--------------------'
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# not ack2
echo '--------------------install ag--------------------'
brew install ag


# fzf
echo '--------------------install fzf--------------------'
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all


echo '--------------------install fasd--------------------'
brew install fasd


echo '================================================================================'
echo 'Done, after run start_backup then exit and login back...'



# TODO
# check version which
# Oh-my-zsh exit





