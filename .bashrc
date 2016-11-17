if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git branch in prompt.

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

#export ROS_MASTER_URI=http://localhost:6000/

source ~/Personal/Code/SpaceRoboticsChallenge/ros_catkin_ws/install_isolated/setup.bash

export PS1='\[\e[1;36m\]\u@\H\[\e[0m\]:\[\033[01;38m\]\W\[\033[00m\] \[\e[1;32m\]$(parse_git_branch)\[\e[0m\]
\[\e[1;34m\]>> \[\e[0m\]'

export PS2='\[\e[1;33m\]>>> \[\e[0m\]'

alias ll="ls -al"
alias 370="cd ~/Personal/School/Fall15/370EECS"
alias 281="cd ~/Personal/School/Fall15/EECS281"
alias 398="cd ~/Personal/School/Fall16/EECS398"
alias 482="cd ~/Personal/School/Winter16/EECS482"
alias 485="cd ~/Personal/School/Fall16/EECS485"
alias 490="cd ~/Personal/School/Fall16/EECS490"
alias 492="cd ~/Personal/School/Fall16/EECS492"
alias school="cd ~/Personal/School"
alias Code="cd ~/Personal/Code"
