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
DARK_HOME=$VNDL_HOME/vim-colors-solarized
ALE_HOME=$VNDL_HOME/ale

# Check for Pathogen, install if missing
# Source: https://github.com/tpope/vim-pathogen
if [ ! -d "$AUTO_HOME" ]; then
    message="Installing Pathogen, see source : "
    message+="https://github.com/tpope/vim-pathogen"
    echo $message

    mkdir -p "$AUTO_HOME" && \
    curl -LSso "$AUTO_HOME"/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Check for Vundle, install if missing
# Source: https://github.com/VundleVim/Vundle.vim
if [ ! -d "$VNDL_HOME" ]; then
    message="Installing Vundle, see source: "
    message+="https://github.com/VundleVim/Vundle.vim"
    echo $message
    
    mkdir -p "$VNDL_HOME" && \
    git clone https://github.com/VundleVim/Vundle.vim.git "$VNDL_HOME"/Vundle.vim
fi

# Check for Solarized, install if missing
# Source: https://github.com/altercation/vim-colors-solarized
if [ ! -d "$DARK_HOME" ]; then 
    message="Installing Solarized, see source: "
    message+="https://github.com/altercation/vim-colors-solarized"
    echo $message
    
    git clone https://github.com/altercation/vim-colors-solarized.git "$DARK_HOME"
fi

# Check for Ale, install if missing
# Source: https://github.com/w0rp/ale
if [ ! -d "$ALE_HOME" ]; then
    message="Installing Ale, see source: "
    message+="https://github.com/w0rp/ale"
    echo $message

    git clone https://github.com/w0rp/ale.git "$ALE_HOME"
fi
