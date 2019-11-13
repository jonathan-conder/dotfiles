_xdgconfig="${XDG_CONFIG_HOME:-$HOME/.config}"

export BASH_COMPLETION_USER_FILE="${_xdgconfig}/bash/xdgbashrc"
export EDITRC="${_xdgconfig}/editline/editrc"
export INPUTRC="${_xdgconfig}/readline/inputrc"
export VIMINIT=":source ${_xdgconfig}/vim/vimrc"

unset _xdgconfig
