# Setup fzf
# ---------
if [[ ! "$PATH" == */home/niek/.fzf/bin* ]]; then
  export PATH="$PATH:/home/niek/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/niek/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/niek/.fzf/shell/key-bindings.zsh"

