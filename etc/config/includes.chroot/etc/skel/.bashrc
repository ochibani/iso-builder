#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Added by user
#source /etc/profile.d/undistract-me.sh
eval "$(starship init bash)"
exec fish
