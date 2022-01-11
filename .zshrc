# Sourcing
source $ZDOTDIR/zsh_aliases
source $ZDOTDIR/zsh_exports
source $ZDOTDIR/zsh_functions
source $ZDOTDIR/zsh_keybinds
source $ZDOTDIR/zsh_options
source $ZDOTDIR/zsh_plugins
source $ZDOTDIR/zsh_prompt

# fzf Sourcing
if [ -f /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh ]
then
  source /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh
  source /data/data/com.termux/files/usr/share/fzf/completion.zsh
else
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi
