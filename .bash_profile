#!/bin/bash
#
# .bash_profile
#
# John Van Note
# 2016-02-27
#
# .bash_profile for dotfiles
#


dotfiles=( 'aliases''git-aliases' 'bash_prompt' 'ruby' )

for dotfile in "${dotfiles[@]}"
do
    source ~/.$dotfile
done
