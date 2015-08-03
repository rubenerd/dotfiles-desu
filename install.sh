#!/bin/sh

######
## install.sh - Desktop orchestration installer fun
## 2015-08

## Install dotfiles
_folder=`pwd`
ln -s $_folder/bashrc ~/.bashrc
ln -s $_folder/bash_profile ~/.bash_profile
ln -s $_folder/vimrc ~/.vimrc

## Install MacRumors colour profile fix
[ `uname` == "Darwin" ] && \
    sudo cp MacBookAirLG.icc /Library/ColorSync/Profiles/Displays/

## EOF

