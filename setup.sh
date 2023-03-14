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
dots pull origin main
dots branch --set-upstream-to origin/main main
rm "$HOME/README.md" "$HOME/setup.sh" &> /dev/null || true

echo -e "\\033[0;32mSuccessfully set up dotfiles!\\033[0m"
echo
echo -e "\\033[0;32mProceeding to install tooling and dependencies\\033[0m"

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.local/share/zsh
curl -L git.io/antigen > ~/.local/share/zsh/antigen.zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo -e "\\033[0;32mSuccessfully installed tooling and dependencies\\033[0m"
echo
echo -e "\\033[0;32mDone!\\033[0m"
