#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lhA'
alias ll='ls -lh'
alias la='ls -A'
alias pacman='sudo pacman'
alias rm='rm -iv'
alias mv='mv -v'
alias cp='cp -v'
alias c='clear'

set -o vi

export PS1='(\u@\h \W)> '

[[ -s $HOME/.config/base16.sh ]] && source $HOME/.config/base16.sh
