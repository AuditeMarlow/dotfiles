#!/bin/bash
set -e

ACTION="${1}"
DOTFILES_WORK_TREE="${2:-$HOME}"

XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
XDG_DATA_HOME_DOTFILES="${XDG_DATA_HOME}/dotfiles"
XDG_DATA_HOME_BASE16_SHELL="${XDG_DATA_HOME}/base16-shell"
XDG_DATA_HOME_TMUX="${XDG_DATA_HOME}/tmux"
XDG_DATA_HOME_NEOVIM="${XDG_DATA_HOME}/nvim"
XDG_DATA_HOME_ZSH="${XDG_DATA_HOME}/zsh"

TOOLING_BASE16_SHELL_PATH="${XDG_DATA_HOME_BASE16_SHELL}"
TOOLING_TPM_PATH="${XDG_DATA_HOME_TMUX}/plugins/tpm"
TOOLING_VIM_PLUG_PATH="${XDG_DATA_HOME_NEOVIM}/site/autoload/plug.vim"
TOOLING_ANTIGEN_ZSH_PATH="${XDG_DATA_HOME_ZSH}/antigen.zsh"

dots() {
  git --git-dir="${XDG_DATA_HOME_DOTFILES}/" --work-tree="${DOTFILES_WORK_TREE}" "$@"
}

err() {
  >&2 echo "err: $@"
  exit 1
}

confirm_install() {
  read -p "Installing dotfiles in '${DOTFILES_WORK_TREE}', are you sure? [y/N]: " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Exiting."
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
  fi

  echo "Installing dotfiles ..."
  exit 1
}

install_dependencies() {
  if [ "$(uname)" == "Darwin" ]; then
    brew update
    brew install git neovim ripgrep tmux zsh
  else
    sudo apt-add-repository -y ppa:git-core/ppa
    sudo apt-add-repository -y ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install -y git neovim ripgrep ssh tmux zsh
  fi
}

install_dotfiles() {
  set -x
  mkdir -p "${DOTFILES_WORK_TREE}"
  git config --global init.defaultBranch main
  git init --bare "${XDG_DATA_HOME_DOTFILES}"
  dots config status.showUntrackedFiles no
  dots remote add origin git@github.com:AuditeMarlow/dotfiles.git
  dots pull origin main
  dots branch --set-upstream-to origin/main main
}

install_tooling() {
  if [ ! -d "${TOOLING_BASE16_SHELL_PATH}" ]; then
    git clone https://github.com/chriskempson/base16-shell "${TOOLING_BASE16_SHELL_PATH}"
  fi

  if [ ! -d "${TOOLING_TPM_PATH}" ]; then
    git clone https://github.com/tmux-plugins/tpm "${TOOLING_TPM_PATH}"
  fi

  if [ ! -f "${TOOLING_VIM_PLUG_PATH}" ]; then
    curl -fLo "${TOOLING_VIM_PLUG_PATH}" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi

  if [ ! -f "${TOOLING_ANTIGEN_ZSH_PATH}" ]; then
    curl -fLo "${TOOLING_ANTIGEN_ZSH_PATH}" --create-dirs git.io/antigen
  fi

  # curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
}

install() {
  confirm_install
  install_dependencies
  install_tooling
  install_dotfiles
  rm -f "${DOTFILES_WORK_TREE}/README.md" "${DOTFILES_WORK_TREE}/dots.sh" &> /dev/null || true
}

uninstall() {
  for FILE in `git ls-tree --full-tree --name-only -r HEAD`; do
    FILE_PATH="${DOTFILES_WORK_TREE}/${FILE}"
    rm -f "${FILE_PATH}" 2>/dev/null || true

    FILE_DIR="$(dirname -- "${FILE_PATH}")"
    if [ "${DOTFILES_WORK_TREE}" = "${FILE_DIR}" ]; then
      continue
    fi

    if [ ! -d "${FILE_DIR}" ]; then
      continue
    fi

    if [ -z "$(ls -A "${FILE_DIR}")" ]; then
      rmdir "${FILE_DIR}"
    fi
  done

  if [ -d "${XDG_DATA_HOME_DOTFILES}" ]; then
    rm -rf "${XDG_DATA_HOME_DOTFILES}"
  fi
}

usage() {
  echo "Usage: ${0} [install|uninstall]"
  exit 1
}

#if [ -d "${XDG_DATA_HOME_DOTFILES}" ]; then
#  err "${XDG_DATA_HOME_DOTFILES} already exists"
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
