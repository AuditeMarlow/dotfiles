export GPG_TTY=$(tty)

ANTIGEN_ZSH_PATH="${XDG_DATA_HOME}/zsh/antigen.zsh"
if [ -f "${ANTIGEN_ZSH_PATH}" ]; then
    source "${ANTIGEN_ZSH_PATH}"

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
BASE16_SHELL_PATH="${XDG_DATA_HOME}/base16-shell"
[ -n "${PS1}" ] && \
  [ -s "${BASE16_SHELL_PATH}/profile_helper.sh" ] && \
    source "${BASE16_SHELL_PATH}/profile_helper.sh"

[ -f "${HOME}/.aliases" ] && source "${HOME}/.aliases"
[ -f "${XDG_CONFIG_HOME}/fzf/fzf.zsh" ] && source "${XDG_CONFIG_HOME}/fzf/fzf.zsh"
[ -f "${XDG_CONFIG_HOME}/fzf/fzf.colors" ] && source "${XDG_CONFIG_HOME}/fzf/fzf.colors"

export FZF_DEFAULT_COMMAND='rg --files --follow --sort path --hidden --glob "!.git"'
export FZF_CTR_T_COMMAND="${FZF_DEFAULT_COMMAND}"

[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh

[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
[ -x "$(command -v tmux)" ] \
  && [ -z "${TMUX}" ] \
  && { tmux attach || tmux; } >/dev/null 2>&1
