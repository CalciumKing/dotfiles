# Zsh history config
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# Load existing history
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# History cleanup / behavior
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# Menu tab completion
autoload -Uz compinit
compinit

PROMPT='%B%n@%m:%~$%b '

fastfetch -c ~/.config/fastfetch/config.jsonc
