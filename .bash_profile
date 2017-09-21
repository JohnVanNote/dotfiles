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
<<<<<<< HEAD
    'github' \
    'ruby' \
    'specific'
    )
=======
    'globalgitconfig' \
    'ruby' )
>>>>>>> 29bf5c2775c8b4751f1df8800d32e8a9791a3118

for dotfile in "${dotfiles[@]}"
do
    if [ -f ~/.$dotfile ]; then
        source ~/.$dotfile
    fi
done
