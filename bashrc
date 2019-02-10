#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;34m\]\W\[\e[0;$((32+($?>0)))m\]\$\[\e[0m\] '
[ "$TERM" = xterm ] && PROMPT_COMMAND='echo -ne "\e]0;${PWD/#$HOME/~}\a"'

export EDITOR='vim'
export GREP_COLORS='mt=1;34:fn=1;37:ln=32:bn=32:se=1;33'
export HISTIGNORE='&:[ ]*:exit'
export HISTSIZE=2000
export LESS=R
