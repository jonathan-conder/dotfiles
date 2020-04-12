# Installation

```console
$ datadir="${HOME}/.local/share"
$ url='git@github.com:jonathan-conder'

$ git clone --bare "${url}/dotfiles.git" "${datadir}/dotgit"
$ alias dotgit='git --git-dir="${datadir}/dotgit" --work-tree="$HOME"'
$ dotgit checkout # remove existing files if prompted

$ chmod go-rwx "${datadir}/gnupg"
$ rm "${HOME}/README.md"
$ dotgit update-index --assume-unchanged "${HOME}/README.md"
$ git clone --recurse-submodules "${url}/vim-plugins.git" "${datadir}/vim/pack/vim-plugins"
```
