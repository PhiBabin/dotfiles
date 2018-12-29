# dotFiles
Configuration files use on all of my computers.

## Dependencies
Install oh-my-zsh by following [these instructions](https://github.com/robbyrussell/oh-my-zsh).
Download and install [insync](https://www.insynchq.com/).
Basic software that I use on all of my computers:
```shell
sudo apt-get install guake git neovim curl zsh xclip autoconf g++ cmake htop
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
# `~/.ssh/config`
The `~/.ssh/config` file contains ip address and ssh port that I use frequently. I don't think it should be public data, so I encrypted with gpg. To decrypt the `ssh_config.gpg` execute `decrypt.sh`. For the reverse operation executes `encrypt.sh`.


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

# Arch Linux
I use the `arch_install.sh` to basic stuffs. The configuration file of each of the following module are in the `config/` folder. It should correspond to the content of the `~/.config` folder.


Applications:
 - `i3` Windows manager, handle tilling
 - `i3-lock-colors` handle lock screen (WIP)
 - `dmenu` handle launching application
 - `polybar` handle the list of current applications, play/stop media, workspace, etc. (WIP)
	If you want support for mpd music player, you must install it and its `libmpdclient-dev` library before compiling `polybar`
 - `comptom` Windows Compositor, I think those things only handle effect around windows? (WIP)
 - `dunst` Notification handler (WIP)
 - `urxvt` (also know as `rxvt-unicode`) the virtual terminal used everywhere. It's config file is the `~/.Xresources`. All of the colors are set using [a base16 `Xresources`](https://github.com/chriskempson/base16-xresources), like this:
```bash
curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/base16-default-dark-256.Xresources >> ~/.Xresources
xrdb -load ~/.Xresources
```
