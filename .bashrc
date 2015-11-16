#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -la'
alias la='ls -a'
alias ..='cd ..'
alias pacman='sudo pacman'
alias rm='rm -iv'

PS1='[\u@\h \W]\$ '

export ANDROID_HOME=/opt/android-sdk
