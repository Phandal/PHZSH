autoload -U compinit colors
compinit
colors
zstyle ':completion:*' menu select

PS1="%B%(?.%F{green}.%F{red})%(!.#.>)%f %F{cyan}%1~%f%b "

# Sourcing
source $ZDOTDIR/zsh_functions
source $ZDOTDIR/zsh_aliases

# Plugins
zsh_plug zsh-users/zsh-autosuggestions
zsh_plug agkozak/zsh-z

# history setup
setopt SHARE_HISTORY
HISTFILE=$ZDOTDIR/zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
