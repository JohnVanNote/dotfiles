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
    'env_vars' \
    'globalgitconfig' \
    'muttrc' \
    'ruby' )

for dotfile in "${dotfiles[@]}"
do
    source ~/.$dotfile
done
