autoload -Uz compinit colors vcs_info
compinit
colors
zstyle ':completion:*' menu select
zstyle ':vcs_info:*' actionformats '%F{5}(%F{2}%b%F{3}|%F{1}%a%F{5})%f '
zstyle ':vcs_info:*' formats '%F{5}(%F{2}%b%F{5})%f '                                                    zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

bindkey -v

setopt PROMPT_SUBST
PS1='%B%(?.%F{green}.%F{red})%(!.#.>)%f %F{cyan}%1~%f %F{green}${vcs_info_msg_0_}%f%b '

# Sourcing
source $ZDOTDIR/zsh_functions
source $ZDOTDIR/zsh_aliases
source $ZDOTDIR/zsh_exports

if [ -f /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh ]
then
  source /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh
  source /data/data/com.termux/files/usr/share/fzf/completion.zsh
else
  source /usr/share/doc/fzf/key-bindings.zsh
  srouce /usr/share/doc/fzf/completions.zsh
fi

# Plugins
zsh_plug zsh-users/zsh-autosuggestions
zsh_plug agkozak/zsh-z

# history setup
setopt SHARE_HISTORY
HISTFILE=$ZDOTDIR/zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
