#!/bin/bash
#
# make_pathogen.sh
#
# John Van Note
# 2017-03-21
#
# Make pathogen plugin for vimrc
#

VIM_HOME=$HOME/.vim
AUTO_HOME=$VIM_HOME/autoload
BNDL_HOME=$VIM_HOME/bundle

#echo $VIM_HOME
#echo $AUTO_HOME
#echo $BNDL_HOME

if [ ! -d $AUTO_HOME ]; then
    mkdir -p $AUTO_HOME $BNDL_HOME && \
    curl -LSso $AUTO_HOME/pathogen.vim https://tpo.pe/pathogen.vim
fi
