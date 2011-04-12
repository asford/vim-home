# Setup symlinks to vim directory and vim configuration files
ln -s ~+ ~
ln -s ~+/vimrc ~/.vimrc
ln -s ~+/gvimrc ~/.gvimrc

# Create swap directory
mkdir ~/.vimswap

# Init git submodules
git submodule init
git submodule update

# Build command-t
pushd bundle/command-t
rake make
popd
