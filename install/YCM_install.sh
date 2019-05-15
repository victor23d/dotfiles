

cd ~/.vim/pack/foo/start/
git clone https://github.com/Valloric/YouCompleteMe.git

cd YouCompleteMe
git submodule update --init --recursive

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev

./install.py
# ./install.py --js-completer --go-completer



# install go
# https://github.com/Valloric/YouCompleteMe/issues/3074
cd ~/.vim/bundle
git clone git@github.com:Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
python install.py --go-completer
cd third_party/ycmd/third_party/
rm -rf gocode
git clone git@github.com:mdempsky/gocode.git
cd gocode
go mod init
go build .


