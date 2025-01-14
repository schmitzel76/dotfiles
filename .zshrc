
# The following lines were added by compinstall
zstyle :compinstall filename '${HOME}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Set up fzf shell integration
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

[ -z "$(which podman)" ] || eval "$(podman completion zsh)"
[ -z "$(which gh)" ] ||eval "$(gh completion -s zsh)"

eval "$(zoxide init zsh --cmd cd)"
eval "$(starship init zsh)"

alias ls=eza

