#!/bin/bash
#
# build_vim.sh
#
# John Van Note
# 2017-03-21
#
# Install Plugins for Vim:
# - Pathogen
# - Vundle
# - Solarized
#

VIM_HOME=$HOME/.vim
AUTO_HOME=$VIM_HOME/autoload
VNDL_HOME=$VIM_HOME/bundle
SOLR_HOME=$VNDL_HOME/vim-colors-solarized

# Check for Pathogen, install if missing
if [ ! -d $AUTO_HOME ]; then
    mkdir -p $AUTO_HOME && \
    curl -LSso $AUTO_HOME/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Check for Vundle, install if missing
if [ ! -d $VNDL_HOME ]; then
    mkdir -p $VNDL_HOME && \
    git clone https://github.com/VundleVim/Vundle.vim.git $VNDL_HOME/Vundle.vim
fi

# Check for Solarized, install if missing
if [ ! -d $SOLR_HOME ]; then 
    git clone https://github.com/altercation/vim-colors-solarized.git $SOLR_HOME
fi
