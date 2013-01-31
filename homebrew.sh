#!/usr/bin/env sh

##
## homebrew.sh for Homebrew package manager on OS X
## By Ruben Schade, 2012-present
## MIT licenced
##
## I used pkgsrc and MacPorts for the longest time on OS X, but giving
## Homebrew a try as my primary package manager on my MacBook Air. I
## appreciate their effort not to duplicate software bundled with OS X,
## but generally this software is outdated, so I install homebrew/dupes
## first. Also, The Bird is The Word.
##

echo "INSTALLING HOMEBREW..."
ruby -e "`curl -fsSkL raw.github.com/mxcl/homebrew/go`"

echo "TAPPING HOMEBREW/DUPES (AVOID OLD VERSIONS SHIPPED WITH OS X)..."
brew tap -v homebrew/dupes

echo "UPDATING..."
brew update -v

echo "INSTALLING DEPENDENCIES..."
brew install -v git-base mercurial

echo "INSTALLING GOODNESS..."
brew install -v \
    curl \
    ddrescue \
    dvtm \
    flac \
    git-extras \
    gpg \
    imagemagick \
    lame \
    links \
    macvim \
    mc \
    mcrypt \
    mkvtoolnix \
    ncftp \
    perl \
    pngcrush \
    qemu \
    rsync \
    ruby \
    s3cmd \
    vim \
    xz

echo "TAPPING MPV-PLAYER AND INSTALLING..."
brew tap mpv-player/mpv
brew install --HEAD mpv

echo "CLEANING UP..."
brew cleanup -v

echo "LISTING INSTALLED GOODNESS..."
brew list

echo "ALL DONE. THE BIRD IS THE WORD."
