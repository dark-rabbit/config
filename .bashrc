#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias rm='rm -i'
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lhA'
alias la='ls -A'
alias grep='grep --color'
alias pacman='sudo pacman'

set -o vi
bind -m vi-insert "\C-l":clear-screen

export PS1='(\u@\h \W)> '

[[ -s $HOME/.config/base16.sh ]] && source $HOME/.config/base16.sh

