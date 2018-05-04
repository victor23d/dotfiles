

apt-get update -y
apt-get upgrade -y

mkdir init_install_temp
cd init_install_temp

# python
apt-get install -y python3.6

# pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

# apt install -y python3-venv python3-pip

# zsh
apt-get install -y zsh
chsh -s $(which zsh)
chsh -s $(which zsh)


# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions


# percol
pip install percol

# tmux
apt-get install -y tmux

# oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# dotfile
cd ~
git clone https://github.com/victor23d/dotfile.git
mv dotfile dotfile
~/dotfile/start_backup.sh

exec zsh

echo '================================================================================'
echo 'Done, exit and login back...'










