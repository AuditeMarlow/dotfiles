export GPG_TTY=$(tty)

if [ -d "${HOME}/.cargo/bin" ]; then
    export PATH="${PATH}:~/.cargo/bin"
fi

if [ -f "${HOME}/.local/share/zsh/antigen.zsh" ]; then
    source "${HOME}/.local/share/zsh/antigen.zsh"

    antigen use oh-my-zsh

    antigen bundle extract
    antigen bundle git
    antigen bundle kubectl
    antigen bundle vi-mode
    antigen bundle wd
    antigen bundle web-search

    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle zsh-users/zsh-syntax-highlighting

    antigen theme refined

    antigen apply

    unalias g
fi

# Base16 Shell
BASE16_SHELL_PATH="${HOME}/.config/base16-shell"
[ -n "${PS1}" ] && \
  [ -s "${BASE16_SHELL_PATH}/profile_helper.sh" ] && \
    source "${BASE16_SHELL_PATH}/profile_helper.sh"

[ -f "${HOME}/.aliases" ] && source "${HOME}/.aliases"
[ -f "${HOME}/.fzf.zsh" ] && source "${HOME}/.fzf.zsh"
[ -f "${HOME}/.fzf.colors" ] && source "${HOME}/.fzf.colors"

export FZF_DEFAULT_COMMAND='rg --files --sort path --hidden --glob "!.git"'
export FZF_CTR_T_COMMAND="${FZF_DEFAULT_COMMAND}"

[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh

export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
[ -x "$(command -v tmux)" ] \
  && [ -z "${TMUX}" ] \
  && { tmux attach || tmux; } >/dev/null 2>&1

export GOPATH="${HOME}/go"; export GOROOT="${HOME}/.go"; export PATH="${GOPATH}/bin:${PATH}"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
