#!/bin/bash
set -e

ACTION="${1}"
DOTFILES_PATH="${HOME}/.dotfiles"
DOTFILES_WORK_TREE="${HOME}"
TOOLING_BASE16_SHELL_PATH="${HOME}/.config/base16-shell"
TOOLING_TMUX_TPM_PATH="${HOME}/.tmux/plugins/tpm"

dots() {
  git --git-dir="${DOTFILES_PATH}/" --work-tree="${DOTFILES_WORK_TREE}" "$@"
}

err() {
  >&2 echo "err: $@"
  exit 1
}

install_dependencies() {
  sudo apt-add-repository -y ppa:git-core/ppa
  sudo apt-add-repository -y ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install -y git neovim ssh tmux zsh
}

install_dotfiles() {
  set -x
  git config --global init.defaultBranch main
  git init --bare "${DOTFILES_PATH}"
  dots config status.showUntrackedFiles no
  dots remote add origin git@github.com:AuditeMarlow/dotfiles.git
  dots pull origin main
  dots branch --set-upstream-to origin/main main
}

install_tooling() {
  if [ ! -d "${TOOLING_BASE16_SHELL_PATH}" ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  fi

  if [ ! -d "${TOOLING_TMUX_TPM_PATH}" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi

  bash -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  mkdir -p ~/.local/share/zsh
  curl -L git.io/antigen > ~/.local/share/zsh/antigen.zsh
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
}

install() {
  install_dependencies
  install_tooling
  install_dotfiles
  rm --interactive=never "$HOME/README.md" "$HOME/dots.sh" &> /dev/null || true
}

uninstall() {
  for FILE in `git ls-tree --full-tree --name-only -r HEAD`; do
    FILE_PATH="${DOTFILES_WORK_TREE}/${FILE}"
    rm --interactive=never "${FILE_PATH}" 2>/dev/null || true

    FILE_DIR="$(dirname -- "${FILE_PATH}")"
    if [ "${HOME}" = "${FILE_DIR}" ]; then
      continue
    fi

    if [ ! -d "${FILE_DIR}" ]; then
      continue
    fi

    if [ -z "$(ls -A "${FILE_DIR}")" ]; then
      rmdir "${FILE_DIR}"
    fi
  done

  if [ -d "${DOTFILES_PATH}" ]; then
    rm -r --interactive=never "${DOTFILES_PATH}"
  fi
}

usage() {
  echo "Usage: ${0} [install|uninstall]"
  exit 1
}

#if [ -d "${DOTFILES_PATH}" ]; then
#  err "${DOTFILES_PATH} already exists"
#fi

if [ -z "${ACTION}" ]; then
  usage
fi

case "$1" in
  "install")
    install
    ;;
  "uninstall")
    uninstall
    ;;
  *)
    usage
    ;;
esac
