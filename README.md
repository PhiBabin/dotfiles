# dotFiles
Configuration files use on all of my computers.

## Dependencies
Install oh-my-zsh by following (these instructions)[https://github.com/robbyrussell/oh-my-zsh].
Download and install (insync)[https://www.insynchq.com/].
Basic software that I use on all of my computers:
```shell
sudo apt-get install guake 
```
## Setup

To install most of the stuffs:
```
mkdir ~/repos
cd ~/ repos
git clone git@github.com:PhiBabin/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```
A good way to integrate these in your system is to have a local `.zshrc` that 
references the file in the repo. For example you could have the following.

```
# ~/.zshrc
[ -f ~/repos/dotfiles/zshrc ] && source ~/repos/dotfiles/zshrc

# Local corrections...
```
