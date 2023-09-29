#! /bin/bash

DIR=`pwd`

# archive old configs in a new directory for safekeeping
mkdir -p ~/config_archive
for FILE in .gitignore .gitconfig .bash_profile .bashrc .vimrc .zshrc
do
        touch $FILE
        ls ~/config_archive >> $FILE
done

# warn about zsh and ohmyzsh if not installed 
if ! [[ -f "~/.zsh_history" ]]; then
   echo "WARNING: Zsh not installed."
fi

if ! [[ -f "~/.oh-my-zsh" ]]; then
    echo "WARNING: ohmyzsh not installed."
    # ln -sf $DIR/bash/profile ~/.bash_profile
    # source ~/.bash_profile
else 
     # if zsh and ohmyzsh installed, run setup. 
    ln -sf $DIR/zsh/zshrc ~/.zshrc
    source ~/.zshrc
fi

# create symlinks
# NOTE--should update this and turn it into a loop
ln -sf $DIR/git/gitconfig ~/.gitconfig
ln -sf $DIR/git/gitignore ~/.gitignore
ln -sf $DIR/vim/vimrc ~/.vimrc
ln -sf $DIR/bash/bash-aliases ~/.bash_aliases

