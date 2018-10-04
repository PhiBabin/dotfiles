#! /bin/bash

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

sudo apt-get install guake git neovim curl zsh xclip autoconf g++ cmake htop

ln -s ~/repos/dotfiles/inputrc ~/.inputrc
ln -s ~/repos/dotfiles/radare2rc ~/.radare2rc
ln -s ~/repos/dotfiles/vimrc ~/.vimrc
ln -s ~/repos/dotfiles/gitconfig ~/.gitconfig


# Install  oh-my-zsh theme
mkdir -p  ~/.oh-my-zsh/themes/ && cd ~/.oh-my-zsh/themes/
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme

# Install Menlo for Powerline
mkdir ~/.fonts
cd ~/repos
git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline && cp *.ttf ~/.fonts
fc-cache -vf ~/.fonts


# Install Oh-my-zsh
read -p "Are you sure you want to install Oh-my-zsh? " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
     sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

