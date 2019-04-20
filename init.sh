#! /bin/bash

DIR=$(cd `dirname $0` && pwd)

# warn about zsh and ohmyzsh if not installed 
if ! [[ -f "~/.zsh_history" ]]; then
   echo "WARNING: Zsh not installed."
fi

if ! [[ -f "~/.oh-my-zsh" ]]; then
    echo "WARNING: ohmyzsh not installed."
else 
     # if zsh and ohmyzsh installed, run setup. 
    ln -sf $DIR/zsh/zshrc ~/.zshrc
    source ~/.zshrc
fi

# create symlinks
# ln -sf $DIR/bash/profile ~/.bash_profile
ln -sf $DIR/git/gitconfig ~/.gitconfig
ln -sf $DIR/vim/vimrc ~/.vimrc


