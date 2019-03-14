dotfiles
========

Some personal dotfiles.

Setup
-----
```sh
$ git init --bare ~/.dotfiles
$ alias dots='/usr/bin/env git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ dots config status.showUntrackedFiles no
$ dots remote add origin git@github.com:AuditeMarlow/dotfiles.git
$ dots pull origin master
```
