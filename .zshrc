HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=500

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line
bindkey "^[[6~" down-line

export PLUGINS="$HOME/.config/zsh/"
fpath+=($HOME/.config/zsh/pure)
autoload -U compinit; compinit
autoload -Uz promptinit; promptinit
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias jdir="cd ~/Docs/JavaDev/CodeHS/"
alias javab="javac *.java && java"
alias neoconfig="cd ~/.config/nvim"
alias comp="sudo rm -rf config.h && make && sudo make install"

prompt pure
