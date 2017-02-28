#!/bin/bash
#
# .bash_profile
#
# John Van Note
# 2016-02-27
#
# .bash_profile for dotfiles
#


dotfiles=( 'alias' 'ruby' 'bash_prompt' )

for dotfile in "${dotfiles[@]}"
do
    source ~/.$dotfile
done
