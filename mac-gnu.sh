echo '--------------------install gnu--------------------'
brew install coreutils

# Then you may probably want to install the following ones (For some of the packages, you need to run brew tap homebrew/dupes first, but only once for your system):
# brew tap homebrew/dupes
brew tap Homebrew/homebrew-core

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

