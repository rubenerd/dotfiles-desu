#!/usr/bin/env bash

######
## Ruben's .bashrc
## 2014-04

## Don't do anything if not interactive prompt
[ -z "$PS1" ] && return

## Simple, bold, two line prompt
export PS1='\n\[\e[1m\]\u@\h \w\n\$\[\e[0m\] '
##export PS1='\n\$ '

## Basic path, more defined in system path
export PATH=~/.rbenv/bin:~/.local/bin:/opt/perl5/bin:/opt/bin:/usr/local/bin:$PATH

## Add gnu coreutils manpages
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

## Environment variables
export BLOCKSIZE=1m
export CLICOLOR=1  ## <3 BSD
export EDITOR=vim
export LC_ALL="en_US.UTF-8"  ## Unlike Slashdot, I use Unicode
export NNTPSERVER="news.grc.com"
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

## Perlbrew Perl directory
if [ -d "/opt/perl5" ]; then
    export PERLBREW_ROOT=/opt/perl5
    source /opt/perl5/etc/bashrc
fi

######
## Useful functions

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
    avconv -i "$1" -vcodec copy "${1}.CPOUT.m4v"
}

## Convert audio (from video or otherwise) to M4A
function ffa() {
    avconv -i "$1" -vn -ab 320 '${1}.out.m4a'
}

## Convert all other video to MP4
function ffv() { 
    avconv -i "$1" -crf 18 '"${1}.out.mp4'
}

## Tar XZ all the things
function txz() {
    _target=${1%/}
    tar -cJvf "${_target}.tar.xz" --options xz:compression-level=9 "$_target"
}

## Convert iOS caf files to flac, retaining timestamps
function caf_to_flac() {
    _target="$1"
    avconv -i "$_target" "$_target.wav"
    flac --verify --best --delete-input-file "$_target.wav"
    touch -r "$_target" "$_target.flac"
    rm "$_target"
}

## Checks if command exists
function r_exists() {
    return command -v "$1" >/dev/null 2>&1
}

######
## Load all the things

## rbenv
r_exists rbenv && eval "$(rbenv init -)"

## thefuck
r_exists thefuck && eval $(thefuck --alias)

## Completions and launch acceleration for OrionVM Command Line Tools
r_exists ovm && type ovm > /dev/null 2>&1 && source `ovm completion`

## Completions and launch acceleration for Joviam Command Line Tools
r_exists joviam && type joviam > /dev/null 2>&1 && source `joviam completion`

## EOF

