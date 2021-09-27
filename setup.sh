#!/usr/bin/env sh
set -e

if [ -d "$HOME/.dotfiles" ]; then
  echo "err: $HOME/.dotfiles already exists"
  exit 1
fi

if ! type git > /dev/null; then
  echo "err: git is not installed but the script requires it"
  exit 1
fi

if ! type ssh > /dev/null; then
  echo "err: ssh is not installed but the script requires it"
  exit 1
fi

git init --bare "$HOME/.dotfiles"
alias dots='/usr/bin/env git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dots config status.showUntrackedFiles no
dots remote add origin git@github.com:AuditeMarlow/dotfiles.git
dots pull origin master
dots branch --set-upstream-to origin/master master
rm "$HOME/README.md" "$HOME/setup.sh" &> /dev/null || true

echo -e "\\033[0;32mSuccessfully set up dotfiles\\033[0m"
