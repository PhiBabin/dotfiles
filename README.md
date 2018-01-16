# dotFiles
Configuration files use on all of my computers.

## Dependencies
Install oh-my-zsh by following [these instructions](https://github.com/robbyrussell/oh-my-zsh).
Download and install [insync](https://www.insynchq.com/).
Basic software that I use on all of my computers:
```shell
sudo apt-get install guake git curl zsh xclip autoconf g++ cmake
```
## Setup

To install most of the stuffs:
```shell
mkdir ~/repos
cd ~/repos
git clone https://github.com/PhiBabin/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```
A good way to integrate these in your system is to have a local `.zshrc` that 
references the file in the repo. For example you could have the following:

```
# ~/.zshrc
[ -f ~/repos/dotfiles/zshrc ] && source ~/repos/dotfiles/zshrc

# Local corrections...
```

# Git
Set your public ssh key with your github account by following [that guide](https://help.github.com/articles/connecting-to-github-with-ssh/).

# Guake
I use `Menlo for powerline` for the font and `Solarized Dark Higher Contrast` for the color pallette. Remove VTE title. Remove terminal follow mouse. Change shortcut of tab from ctrl+F1 to F1.

# Gnome 3
First of install `gnome-tweak`. I currently use the following extension to make Gnome 3 usable:
 - `Dash to panel` : Add a Win10-like bar in the bottom of the screen
 - `No topleft hot corner`
 - `Topicons plus` : Remove the stupid tray icons
 - `Alternatetab`

Other minor tweak:
 - But the minize button back
 - Remove attached Modal Dialogs
 - Enable the `Key sequence to kill the X server`
 - Add guake to startup
 - I use the `Flat-Plat` GTK+ theme and the `Paper` icons. This give a material-ish/flat-ish look.
