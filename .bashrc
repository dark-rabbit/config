#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias rm='rm -i'
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lhA'
alias la='ls -A'
alias grep='grep --color'
alias pacman='sudo pacman'

# vi mode whith ctrl-l
set -o vi
bind -m vi-insert "\C-l":clear-screen

# base16 theme
[[ -s $HOME/.config/base16.sh ]] && source $HOME/.config/base16.sh

# colors for bash prompt
initializeANSI () {
	esc=""

	blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
	yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
	cyanf="${esc}[36m";    whitef="${esc}[37m"

	blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
	yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
	cyanb="${esc}[46m";    whiteb="${esc}[47m"

	boldon="${esc}[1m";    boldoff="${esc}[22m"
	italicson="${esc}[3m"; italicsoff="${esc}[23m"
	ulon="${esc}[4m";      uloff="${esc}[24m"
	invon="${esc}[7m";     invoff="${esc}[27m"

	reset="${esc}[0m"
}

initializeANSI

export PS1="$boldon$yellowf($cyanf\u$purplef@$greenf\h $bluef\W$yellowf)$redf> $reset"

