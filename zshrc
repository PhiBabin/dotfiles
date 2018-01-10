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

# Hide the philippe@my_computer in the prompt for the bullet-train, but keep it if I am not 'philippe'
BULLETTRAIN_CONTEXT_DEFAULT_USER="philippe"

# Execute the auto check_repos script when a new terminal is open
python3 $HOME/repos/dotfiles/check_repos

# ROS Indigo setup
#source /opt/ros/indigo/setup.zsh
#source ~/catkin_ws/devel/setup.zsh

setRosMasterHusky() {
        export ROS_IP=192.168.1.172
        export ROS_MASTER_URI="http://192.168.1.11:11311"
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

alias update="sudo apt-get update && sudo apt-get upgrade --force-yes"

# By default zsh require quote around wildcare statement (ex: ls foo.*  -> fail, ls "foo.*" -> ok) this remove that requirement
unsetopt nomatch

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs

echo "grsim-run    -> run grsim"

#alias grsim-run="~/Documents/robocupia/grSimUpdated/bin/grsim"
alias grsim-run="~/repos/grSim/bin/grsim"

# Force me to use vim
alias fnano="/bin/nano"
alias nano="nvim"
