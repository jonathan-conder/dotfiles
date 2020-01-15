export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

export TEXMFVAR="${XDG_CACHE_HOME}/texlive"

export BASH_COMPLETION_USER_FILE="${XDG_CONFIG_HOME}/bash/xdgbashrc"
export EDITRC="${XDG_CONFIG_HOME}/editline/editrc"
export INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/startup.py"
export TEXMFCONFIG="${XDG_CONFIG_HOME}/texlive"
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"
export VIMPAGER_RC="${XDG_CONFIG_HOME}/vim/vimpagerrc"

export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export LESSHISTFILE="${XDG_DATA_HOME}/less/history"
export PYTHONHISTFILE="${XDG_DATA_HOME}/python/history"
export TEXMFHOME="${XDG_DATA_HOME}/texlive"
