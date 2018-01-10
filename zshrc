export ZSH=~/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

ZSH_THEME="bullet-train"

source $ZSH/oh-my-zsh.sh

# Fix shared history
setopt no_share_history

# Fix autocomplete: see http://superuser.com/questions/417627/oh-my-zsh-history-completion
bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward

# Hide the philippe@asimov in the prompt for the agnoster
#export DEFAULT_USER"=philippe"

# ROS Indigo setup
source /opt/ros/indigo/setup.zsh
# source ~/designIII/catkin_ws/devel/setup.zsh
#source ~/Documents/Ete2015Stage/ROSTryphon_groundstation/devel/setup.zsh
source ~/catkin_ws/devel/setup.zsh

setRosMasterHusky() {
        export ROS_IP=192.168.1.172
        export ROS_MASTER_URI="http://192.168.1.11:11311"
}

setRosMasterLocal3105() {
	export ROS_IP=192.168.1.40
	export ROS_MASTER_URI="http://192.168.1.105:11311"
}
setRosMasterLocal3109() {
        export ROS_IP=192.168.0.31
        export ROS_MASTER_URI="http://192.168.0.105:11311"
}
setRosMasterYourComputer() {
	export ROS_IP=127.0.0.1
	export ROS_MASTER_URI="http://127.0.0.1:11311"
}

setRosMasterStationBase() {
        export ROS_IP=192.168.0.31
        #export ROS_IP=192.168.1.40
	export ROS_HOSTNAME="station-base"
        export ROS_MASTER_URI="http://station-base:11311"
}

setRosMasterYourComputer

export PYTHONPATH=$PYTHONPATH:/home/philippe/designIII/catkin_ws/src/Design-III

alias update="sudo apt-get update && sudo apt-get upgrade --force-yes"


# BACKCUP: Don't remember exact command line, something like that:
# sudo rsync -av /home/philippe/ /media/disk_extern/philippe



export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

echo "grsim-run    -> run grsim"
alias grsim-run="~/Documents/robocupia/grSimUpdated/bin/grsim"
