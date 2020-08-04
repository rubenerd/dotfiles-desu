#!/usr/bin/env oksh

######
## Ruben's portable OpenBSD Kornshell config
## Created 2019-07-17

## Don't run unless interactive
[[ -o interactive && -t 0 ]] || return

## Inception shells within my shells
(( SHLVL++ ))

## I'm liking basic, inverted prompts now
PS1='\n$(tput smso)${USER}@${HOST}:${PWD}$(tput rmso)\n\$ '

## Path to my personal library repo
[ -d ~/Repos/mugboss/bin ] && export PATH="~/Repos/mugboss/bin:$PATH"
[ -d /opt/pkg ] && export PATH="/opt/pkg/bin/:$PATH"

## Environment variables
export BLOCKSIZE=M
export BROWSER=links
export CLICOLOR=1  ## for FreeBSD and macOS
export EDITOR=vi
export GREP_OPTIONS='--color=auto --files-with-matches --recursive'
export HISTCONTROL="ignorespace"
export LC_ALL='en_US.UTF-8'  ## should already be set, just in case
export PAGER=less
export XML_CATALOG_FILES='/usr/local/etc/xml/catalog'  ## for Docbook

## Shell options
set -o emacs -o ignoreeof
## set -o allexport -o trackall

## For TeX, installed via pkgsrc
if [ -d /opt/pkg/share/texmf-dist/ ]; then
    export INFOPATH="/opt/pkg/share/texmf-dist/doc/man:$INFOPATH"
    export MANPATH="/opt/pkg/share/texmf-dist/doc/man:$MANPATH"
fi

## HP-UX style listings
alias ls='ls -F'       ## list directory
alias la='ls -AF'      ## list all
alias ll='ls -AlFO'    ## long list
alias lt='ls -AlrtFO'  ## long list, sorted by date, recent last

## OS-specific stuff
case `uname` in
    FreeBSD)
        ! command -v svn >/dev/null && alias svn='svnlite'
        ;;
    NetBSD)
        if [ command -v colorls >/dev/null ]; then
            alias ls='colorls -F'
            alias la='colorls -AF'
            alias ll='colorls -AlFO'
            alias lt='colorls -AlrtFO'
        fi
        export CVS_RSH=ssh
        export CVSROOT='anoncvs@anoncvs.jp.NetBSD.org:/cvsroot'
        ;;
    Linux)
        alias ls='ls -F --color=auto'
        alias la='ls -AF --color=auto'
        alias ll='ls -AlFO --color=auto'
        alias lt='ls -AlrtFO --color=auto'
        ;;
esac

## I like verbosity
alias cp='cp -iv'
alias ln='ln -i'
alias lzop='lzop -v'
alias md='mkdir -v'
alias mv='mv -iv'
alias rd='rmdir -v'
alias rm='rm -iv'
alias rms='rm -iPv'  ## slightly more secure 3-pass delete
alias top='top -s1'

## For shells
alias cls='tput clear'
alias rez='eval $(resize)'
alias san='stty sane'

## Software aliases (nasty git stuff is now in gitconfig [alias])
alias a2='aria2c --max-concurrent-downloads=1'
alias a2t='aria2c --bt-force-encryption --max-overall-upload-limit=200 --max-overall-download-limit=200'
alias diff='colordiff'
alias jpo='jpegoptim --preserve --totals --verbose'
alias pnc='pngcrush -blacken -fix -rem alla -oldtimestamp -ow -reduce -v'
alias pz='plzip -9v'
alias rsync='rsync -rvhtlX --progress --stats --itemize-changes'
alias yt="youtube-dl"

## Other useful aliases
alias ..='cd ..'
alias ap='apropos'
alias ps='ps aux'
alias popd='cd -'
alias x="echo Goodbye! && exit"

## oksh command completions
[ -f ~/.oksh_completions ] && . ~/.oksh_completions

## EOF

