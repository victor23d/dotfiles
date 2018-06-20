

cd ~/.vim/pack/foo/start/
git clone https://github.com/Valloric/YouCompleteMe.git

cd YouCompleteMe
git submodule update --init --recursive

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev

./install.py
# ./install.py --js-completer



