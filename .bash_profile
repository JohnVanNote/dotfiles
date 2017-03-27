#!/bin/bash
#
# .bash_profile
#
# John Van Note
# 2016-02-27
#
# .bash_profile for dotfiles
#


dotfiles=( \
    'aliases' \
    'aliases-git' \
    'bash_prompt' \
    'github' \
    'ruby' \
    'specific'
    )

for dotfile in "${dotfiles[@]}"
do
    if [ -f ~/.$dotfile ]; then
        source ~/.$dotfile
    fi
done
