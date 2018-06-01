

apt-get update -y
# apt-get upgrade -y

# python3.6
echo '--------------------install python3.6--------------------'
apt-get install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt-get -y update
apt-get install -y python3.6

# pip
echo '--------------------install pip--------------------'
curl https://bootstrap.pypa.io/get-pip.py | python3.6

# zsh
echo '--------------------install zsh--------------------'
apt-get install -y zsh
# chsh -s $(which zsh)


# oh-my-zsh
echo '--------------------install oh-my-zsh--------------------'
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# zsh-completions
cd ~
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

# vim 8
echo '--------------------install vim8--------------------'
add-apt-repository -y ppa:jonathonf/vim
apt update -y
apt install -y vim

# percol
echo '--------------------install percol--------------------'
pip install percol

# tmux
echo '--------------------install tmux--------------------'
apt-get install -y tmux

# oh-my-tmux
echo '--------------------install oh-my-tmux--------------------'
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# not ack2
echo '--------------------install ag--------------------'
apt-get install silversearcher-ag


# fzf
echo '--------------------install fzf--------------------'
t clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all


echo '--------------------install fasd--------------------'
add-apt-repository ppa:aacebedo/fasd
apt-get update
apt-get install fasd


echo '================================================================================'
echo 'Done, after run start_backup then exit and login back...'



# TODO
# check version which
# Oh-my-zsh exit





