#!/bin/bash

# TODO: dynamically grab the location of `.dotfiles` if possible
HERE=$HOME/.dotfiles
CONFIG_HOME=$HOME/.config

VERSION_CONTROL="simple"
LINK="ln -fsiL"

# ln $HOME/.dotfiles/.zshrc $HOME/
# ln $HOME/.dotfiles/.gitconfig $HOME/
# ln $HOME/.dotfiles/nvim/ $CONFIG_HOME/ 
# ln $HOME/.dotfiles/sway/ $CONFIG_HOME/

for F in $(ls -A $HERE)
do
    [[ "$F" == "bootstrap.sh" ]] && continue
    if [[ "$(file $HERE/$F)" == "$HERE/$F: directory" ]]
    then
        # directories go in ~/.config
        $LINK $HERE/$F/ $CONFIG_HOME/
    else
        # non-directories (for now) go in ~
        $LINK $HERE/$F/ $HOME/
    fi
done
