#!/bin/sh

######
## Ruben's basic Vim environment builder
## Requires "execute pathogen#infect()" in ~/.vimrc
##
## Revised January 2015

## I like keeping all my repos in one place, for easy updates
repos="~/Repos"

## Build Vim directory tree, if not done yet
mkdir -p ~/.vim/autoload
mkdir ~/.vim/bundle

## Install Pathogen (creates ~/.vim/autoload/)
git clone git@github.com:tpope/vim-pathogen.git
ln -s ${repos}/vim-pathogen/autoload/vim-pathogen.git ~/.vim/autoload/

## Install Solarized colours (go mixed spelling)
git clone git://github.com/altercation/vim-colors-solarized.git
ln -s ${repos}/vim-colors-solarized/ ~/.vim/bundle/

## Install NERDTree
git clone git@github.com:scrooloose/nerdtree.git
ln -s ${repos}/nerdtree/ ~/.vim/bundle/

## EOF

