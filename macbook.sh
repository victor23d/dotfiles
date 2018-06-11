

brew update -y
# brew upgrade -y

# python3.6
echo '--------------------install python3.6--------------------'
brew install -y python3
ln -s /usr/local/bin/python3 /usr/local/bin/python3.6

# pip
echo '--------------------install pip--------------------'
curl https://bootstrap.pypa.io/get-pip.py | python3.6

echo '--------------------install gnu--------------------'
brew install coreutils

# Then you may probably want to install the following ones (For some of the packages, you need to run brew tap homebrew/dupes first, but only once for your system):
 brew tap homebrew/dupes

brew install findutils --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gnu-tar --with-default-names
brew install gawk

brew install gnu-getopt --with-default-names

brew install binutils
brew install diffutils
brew install ed --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-which --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# In addition, some GNU command line tools already exist by default on OS X, but you may want a newer version:
brew install bash
brew install gdb  # gdb requires further actions to make it work. See `brew info gdb`.
brew install gpatch
brew install less
brew install m4
brew install make

# As a complementary set of packages, the following ones are not from GNU, but you can install and use a newer version instead of the version shipped by OS X:
brew install file-formula
brew install git
brew install openssh
brew install perl
brew install rsync
brew install unzip
brew install vim --override-system-vi
brew install macvim --override-system-vim --custom-system-icons

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



