[[ $- != *i* ]] && return

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

export GREP_COLORS='mt=1;34:fn=1;37:ln=32:bn=32:se=1;33'
export HISTIGNORE='&:[ ]*:exit'
export HISTSIZE=2000
export LESS=R

PS1='\[\e[1;34m\]\W\[\e[0;$((32+($?>0)))m\]\$\[\e[0m\] '
case "$XDG_SESSION_TYPE" in
	wayland|x11)
		PROMPT_COMMAND='echo -ne "\e]0;${PWD/#$HOME/~}\a"'
		export EDITOR='gvim -f'
		;;
	*)
		export EDITOR='vim'
		;;
esac
