#!/usr/local/bin/zsh

##
## .zshrc for Z Shell
## By Ruben Schade, 2012-present
## MIT licenced
##
## Finally making the switch from tcsh. File completion and greater
## compatibility finally won me over ^_^
##

echo "\nHello Ruben! ^_^"

## PATH
## First line removes dupes from path, pretty cool!
typeset -U path
path=(./ ~/.local/bin /usr/local/sbin /usr/local/bin $path)

## OPTIONS
setopt AUTO_CD           ## Change to named dir if command doesn't exist
setopt AUTO_PUSHD        ## Make cd push previous dir onto the dir stack
setopt CDABLE_VARS       ## Try expanding as if preceeded by ~ if not dir
setopt PUSHD_IGNORE_DUPS ## Only push one directory copy onto stack
setopt AUTO_LIST         ## List choices on ambiguous completion
setopt AUTO_PARAM_SLASH  ## Append "/" instead of " " to dir parameters
setopt COMPLETE_ALIASES  ## Substitute aliases with complete path
setopt LIST_TYPES        ## Possible completions shown with mark
setopt EXTENDED_GLOB     ## Treat #/~/^ as patterns for gen filenames
setopt NOMATCH           ## Print error if no matches found
setopt HIST_NO_STORE     ## Clear history cmd from history list when invoked
setopt NO_CLOBBER        ## Don't create, truncate exising files
#setopt CORRECT_ALL      ## Try to correct spelling of arguments in line
setopt IGNORE_EOF        ## Do not exist on end-of-file
setopt NO_BEEP           ## No Road Runner sounds when I fail, please
umask 022

## PROMPT
## No colour nonsense, just bold so I can set colour in my terminal prefs
export PROMPT=$'\n%Bret:%?  %l:%h  %T  %n@%m  %~%b\nready %# '

## ENVIRONMENT VARIABLES
export BLOCKSIZE=m
export BROWSER=links
export CLICOLOR=1    ## <3 BSD
export EDITOR=vim
export PAGER=less    ## less is more, more or less
export VISUAL=less

## AUTO FILE EXTENSIONS
## Launch editor if file entered
alias -s c=$EDITOR
alias -s conf=$EDITOR
alias -s h=$EDITOR
alias -s ini=$EDITOR
alias -s java=$EDITOR
alias -s m=$EDITOR
alias -s markdown=$EDITOR
alias -s net=$EDITOR
alias -s md=$EDITOR
alias -s txt=$EDITOR

## AUTO BROWSER LAUNCH
## Bit of a hack, but will load browser if URL "extension" entered
## Honestly, on some flaky WiFi, ncurses internet is easiest to handle
alias -s au=$BROWSER
alias -s cc=$BROWSER
alias -s co=$BROWSER
alias -s de=$BROWSER
alias -s com=$BROWSER
alias -s edu=$BROWSER
alias -s net=$BROWSER
alias -s org=$BROWSER
alias -s sg=$BROWSER
alias -s tv=$BROWSER

## CRITICAL ALIASES
## Required to maintain system intrgrity
alias bird="echo BIRD BIRD BIRD, THE BIRD IS THE WORD!"
alias franks="echo He\'s a tiger in the rain... It\'s the thunder and lightning he can\'t explain..."
alias petedud="echo This is The Tale. This is The Tale. This is The Tale of Alan A\'Dale."
alias psy="echo HEEEEEEEEEEEY SEXY LADY!"

## SHELL ALIASES
## Lots of verbosity and warnings before destructive changes
alias cp='cp -iv'
alias df='df -h'
alias la='ls -aFh'
alias ll='ls -alFh'
alias ln='ln -fsv'
alias ls='ls -FGh'
alias lss='ls -FGsh'
alias md='mkdir'
alias mv='mv -iv'
alias rd='rmdir'
alias rm='rm -iv'
alias x='exit'

## APPLICATION ALIASES
## Compression ratio > memory, processing time
alias f='finger'
alias help='apropos'
alias perl='perl -w'
alias ping='ping -c5'
alias rzip='rzip -d'
alias rake='rake --verbose'
alias rsy='rsync -aXv'
alias ruby='ruby -w'
alias t='touch'
alias uname='uname -nrs'
alias vi='vim'
alias xz='xz -zf9evv'

## PLATFORM SPECIFIC ####################################################

## MAC OS X
case `uname` in 'Darwin')
    alias bi='brew install --verbose'
    alias bl='brew list'
    alias bp='brew upgrade --verbose'
    alias bs='brew search'
    alias bu='brew update --verbose'
    export EDITOR=mate
    ;;

## FREEBSD, NETBSD
## I've made the switch to pkgng and pkgin, boo yah!
'FreeBSD'|'NetBSD')
    alias pkg_add='pkg install'
    ## TODO: add more shortcuts for the pkgng/pkgin scripts
    ;;

## RED HAT UNIVERSE
'Linux')
    alias la='ls -aFh --color=auto'
    alias ll='ls -alFh --color=auto'
    alias ls='ls -FGh --color=auto'
    alias yi='yum -v install'
    alias yl='yum list installed'
    alias ys='yum search'
    alias yu='yum -v update'
    export EDITOR=geany
    ;;
esac

## EOF ##
