# Installation

```console
$ datadir="$HOME/.local/share"
$ git clone --bare 'git@github.com:jonathan-conder/dotfiles.git' "${datadir}/dotgit"
$ alias dotgit='git --git-dir="${datadir}/dotgit" --work-tree="$HOME"'
$ dotgit checkout
$ chmod go-rwx "${datadir}/gnupg"
$ rm "$HOME/README.md"
$ dotgit update-index --assume-unchanged "$HOME/README.md" 
```
