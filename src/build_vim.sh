#!/bin/bash

VIM_HOME=./files/vim
AUTO_HOME=$VIM_HOME/autoload
VNDL_HOME=$VIM_HOME/bundle
DARK_HOME=$VNDL_HOME/vim-colors-solarized

# Check for Pathogen, install if missing
if [ ! -d $AUTO_HOME ]; then
	echo "Installing Pathogen for vim at ${DARK_HOME}"
    mkdir -p $AUTO_HOME && \
    curl -LSso $AUTO_HOME/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Check for Vundle, install if missing
if [ ! -d $VNDL_HOME ]; then
	echo "Installing Vundle for vim at ${VNDL_HOME}"
    mkdir -p $VNDL_HOME && \
    git clone https://github.com/VundleVim/Vundle.vim.git $VNDL_HOME/Vundle.vim
fi

# Check for Solarized, install if missing
if [ ! -d $DARK_HOME ]; then
	echo "Installing Solarized for vim at ${DARK_HOME}"
    git clone https://github.com/altercation/vim-colors-solarized.git $DARK_HOME
fi
