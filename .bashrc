#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lA'
alias ll='ls -l'
alias la='ls -A'
alias pacman='sudo pacman'
alias rm='rm -iv'
alias mv='mv -v'
alias cp='cp -v'

PS1='[\u@\h \W]\$ '

BASE16_SHELL="$HOME/.config/base16-shell/base16-atelierforest.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
