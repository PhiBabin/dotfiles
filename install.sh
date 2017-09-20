#! /bin/bash

ln -s ~/repos/dotfiles/inputrc ~/.inputrc
ln -s ~/repos/dotfiles/radare2rc ~/.radare2rc

# Install  oh-my-zsh theme
cd ~/.oh-my-zsh/themes/
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
