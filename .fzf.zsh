# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/laguten/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/laguten/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/laguten/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/laguten/.fzf/shell/key-bindings.zsh"
