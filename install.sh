#!/bin/sh

######
## install.sh - Desktop orchestration installer fun
## Easiest way to keep dotfiles in version control
## 2015-08


linkup() {
    if [ -f ~/.$1 ]; then
        echo "$1 already exists."
    else
        ln -s $(pwd)/$1 ~/.$1
        echo "Linked $1, which I may or may not have done like a boss."
    fi
}

linkup cvsrc
linkup emacs
linkup gitconfig
linkup kshrc
linkup oksh_completions
linkup profile
linkup tidyrc
linkup vimrc

case $(uname) in
    Darwin)
        linkup shuttle.json
        ;;
    NetBSD)
        linkup cvsrc
        ;;
esac

## EOF

