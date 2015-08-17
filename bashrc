#!/usr/bin/env bash

#######
## Ruben's .bashrc
## 2014-04

## Don't do anything if not interactive prompt
[ -z "$PS1" ] && return

## Simple, bold, two line prompt
export PS1='\n\[\e[1m\]\u@\h \w\n\$\[\e[0m\] '

## Basic path, more defined in system path
export PATH=~/.local/bin:/opt/bin:/usr/local/bin:$PATH

## Environment variables
export BLOCKSIZE=1m
export CLICOLOR=1  ## <3 BSD
export EDITOR=vim
export LC_ALL="en_US.UTF-8"  ## Unlike Slashdot, I use Unicode
export PAGER=less
export VISUAL=vim
export TZ='Australia/Sydney'
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"  ## Docbook

## HP-UX style directory listings
alias dir='ls'
alias la='ls -aF'
alias ll='ls -lFG'
alias ls='ls -FG'

## ls sort by...
alias lc='ll -tcr'  ## change time
alias le='ll -tur'  ## access time
alias lt='ll -rt'   ## sort by date
alias lz='ll -rS'   ## sort by size

## I like my file operations interactive and verbose
alias cp='cp -iv'
alias ln='ln -i'
alias mv='mv -iv'
alias rm='rm -iv'
alias rms='rm -ivP'  ## more secure 3 pass delete. Heh, RMS
alias mkdir='mkdir -pv'
alias rs='/usr/local/bin/rsync --recursive --verbose --times --human-readable --progress --xattrs --links'

## Human output
alias df='df -hm'
alias du='du -shm'
alias word="printf '%s\n' 'Everybody knows that the Bird is the Word!'"

## Other shortcuts
alias ctorrent='screen ctorrent -D 200 -U 50 -p 51413 -C 128'
alias h='history'
alias f='finger'
alias lame='lame -m j -q 0 --vbr-new -b 128 --verbose'
alias mpv='mpv --screenshot-format=jpg --screenshot-jpeg-quality 98'
alias ps='ps aux'
alias top='top -s1'
alias unrar='unrar x'
alias unzip='unzip -x'
alias vi='nvi'
alias xz='xz -9vv'
alias yt='youtube-dl'

## Git shortcuts and typos
alias gut='git'
alias ga='git add --verbose'
alias gc='git commit --verbose -m'
alias gl='git pull --verbose'
alias gp='git push --verbose'
alias gpm='git push --verbose origin master'
alias gs='git status'

## Silent pushd/popd
function cd() {
    if (("$#" > 0)); then
        if [ "$1" == '-' ]; then
            popd > /dev/null
        else
            pushd "$@" > /dev/null
        fi
    else
        cd $HOME
    fi
}

## Convert DASH video from YouTube to M4V
function dash() {
    ffmpeg -i "$1" -vcodec copy "${1}.CPOUT.m4v"
}

## Convert audio (from video or otherwise) to M4A
function ffa() {
    ffmpeg -i "$1" -vn -ab 320 '${1}.out.m4a'
}

## Convert all other video to MP4
function ffv() { 
    ffmpeg -i "$1" -crf 18 '"${1}.out.mp4'
}

## Tar XZ all the things
function txz() {
    _target=${1%/}
    tar -cJvf "${_target}.tar.xz" --options xz:compression-level=9 "$_target"
}

## EOF

