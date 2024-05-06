# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sowing/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt prompt_subst

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats ': %F{red}%b%f'

NEWLINE=$'\n'
PROMPT="%F{yellow}%T%f [%F{cyan}%n@%m%f %1~]"'${vcs_info_msg_0_}'$NEWLINE"%# "

alias ls="ls --color=always"

export PATH=$PATH:$HOME/go/bin:$HOME/build/node-v22.1.0/out/Release
