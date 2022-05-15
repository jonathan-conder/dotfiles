# Installation

```console
$ datadir="${HOME}/.local/share"
$ statedir="${HOME}/.local/state"
$ url='git@github.com:jonathan-conder'

$ git clone --bare "${url}/dotfiles.git" "${statedir}/dotgit"
$ alias dotgit='git --git-dir="${statedir}/dotgit" --work-tree="$HOME"'
$ dotgit checkout # remove existing files if prompted

$ chmod go-rwx "${datadir}/gnupg"
$ rm "${HOME}/README.md"
$ dotgit update-index --assume-unchanged "${HOME}/README.md"
$ git clone --recurse-submodules "${url}/vim-plugins.git" "${datadir}/vim/pack/vim-plugins"
```
