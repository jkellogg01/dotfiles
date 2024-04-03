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

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
zstyle ':vcs_info:*' formats ': %F{red}%b%f'

NEWLINE=$'\n'
PROMPT="%F{yellow}%T%f [%F{cyan}%n@%m%f %1~]"'${vcs_info_msg_0_}'$NEWLINE"%# "

alias ls="ls --color=always"

export PATH=$PATH:~/zig/:~/go/bin
export EDITOR="nvim"


# Load Angular CLI autocompletion.
source <(ng completion script)

# Case-Insensitive Autocomplete
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

