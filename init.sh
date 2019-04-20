#! /bin/bash

DIR=$(cd `dirname $0` && pwd)

# install ohmyzsh if not installed 
if ! [[-f "~/.oh-my-zsh"]]; then
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# ln -sf $DIR/bash/profile ~/.bash_profile
ln -sf $DIR/git/gitconfig ~/.gitconfig
ln -sf $DIR/vim/vimrc ~/.vimrc
ln -sf $DIR/zsh/zshrc ~/.zshrc

# source the zsh profile
source ~/.zshrc


