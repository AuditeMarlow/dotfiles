export PATH=$PATH:~/.cargo/bin

source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle vi-mode
antigen bundle web-search

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme suvash

antigen apply

# Base16 Shell
BASE16_SHELL="$HOME/.base16-manager/chriskempson/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.fzf.colors ] && source ~/.fzf.colors

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTR_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f /usr/share/nvm/init-nvim.sh ] && source /usr/share/nvm/init-nvm.sh
