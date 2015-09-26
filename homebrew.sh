#!/bin/sh

######
## homebrew.sh for Homebrew and Homebrew Cask on OS X
## <http://github.com/Homebrew/homebrew>
## <http://github.com/caskroom/homebrew-cask>
##
## By Ruben Schade, 2012-present
##

set -e

## Install and update homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew -v update
brew install -v git

## Tap homebrew repos
brew tap -v homebrew/binary
brew tap -v homebrew/dupes
brew tap -v homebrew/fonts

## Install brews
brew install -v ansible
brew install -v aria2
brew install -v colordiff
brew install -v curl
brew install -v dcfldd
brew install -v ddrescue
brew install -v dvtm
brew install -v ffmpeg
brew install -v flac
brew install -v fortune
brew install -v gpg
brew install -v hugo
brew install -v imagemagick --with-librsvg --with-libtiff --with-lib-wmf --without-magick-plus-plus
brew install -v imagemagick
brew install -v htop-osx
brew install -v lame
brew install -v mkvtoolnix
brew install -v normalize
brew install -v openssh
brew install -v openssl
brew install -v p7zip
brew install -v packer
brew install -v pngcrush
brew install -v puppet
brew install -v qemu
brew install -v rsync
brew install -v rzip
brew install -v screen
brew install -v speedtest_cli
brew install -v testdisk
brew install -v vault
brew install -v watch
brew install -v xz
brew install -v youtube-dl

## Install homebrew-cask
brew install caskroom/cask/brew-cask
ln -s /Applications ~/Applications

## Install casks
brew cask install --verbose adium
brew cask install --verbose atext
brew cask install --verbose audio-hijack
brew cask install --verbose boom
brew cask install --verbose calibre
brew cask install --verbose dosbox
brew cask install --verbose dropbox
brew cask install --verbose firefox
brew cask install --verbose gimp-lisanet
brew cask install --verbose grandperspective
brew cask install --verbose inkscape
brew cask install --verbose libreoffice
brew cask install --verbose macvim
brew cask install --verbose mpv
brew cask install --verbose nvalt
brew cask install --verbose omnifocus
brew cask install --verbose 1password
brew cask install --verbose parallels
brew cask install --verbose quicktime-player7
brew cask install --verbose scummvm
brew cask install --verbose tigervnc-viewer
brew cask install --verbose thunderbird
brew cask install --verbose vagrant
brew cask install --verbose virtualbox
brew cask install --verbose viscocity
brew cask install --verbose xquartz

## List installed casks, and we're done!
brew list

## EOF

