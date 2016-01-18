#!/bin/sh

######
## homebrew.sh for Homebrew and Homebrew Cask on OS X
## <http://github.com/Homebrew/homebrew>
## <http://github.com/caskroom/homebrew-cask>
##
## By Ruben Schade, 2012-present
##

set -e

## Install Xcode Command Line Tools first
xcode-select --install

## Install and update homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew -v update
brew install -v git

## Install brews
brew install -v ansible
brew install -v aria2
brew install -v colordiff
brew install -v curl
brew install -v dcfldd
brew install -v ddrescue
brew install -v dvtm
brew install -v fortune
brew install -v gnupg
brew install -v htop-osx
brew install -v iperf
brew install -v lastfm
brew install -v links
brew install -v mtr
brew install -v nicovideo-dl
brew install -v openssl
brew install -v packer
brew install -v p7zip
brew install -v pngcrush
brew install -v postgresql
brew install -v puppet
brew install -v qemu --HEAD
brew install -v rzip
brew install -v screen
brew install -v sshuttle
brew install -v speedtest_cli
brew install -v testdisk
brew install -v vault
brew install -v watch
brew install -v xz
brew install -v youtube-dl

## Install podcasting brews
brew install -v eye-d3
brew install -v ffmpeg --with-faac
brew install -v flac
brew install -v hugo
brew install -v imagemagick --without-magick-plus-plus --with-librsvg --with-libwmf
brew install -v lame
brew install -v mp3gain
brew install -v mkvtoolnix
brew install -v normalize
brew install -v sox

## Tap and install homebrew/dupes
brew tap -v homebrew/dupes
brew install -v bc
brew install -v ncurses
brew install -v rsync
brew install -v openssh

## Install homebrew-cask
brew install caskroom/cask/brew-cask
ln -s /Applications ~/Applications

## Install casks
brew cask install --verbose adium
brew cask install --verbose atext
brew cask install --verbose audio-hijack
brew cask install --verbose boom
brew cask install --verbose calibre
brew cask install --verbose dropbox
brew cask install --verbose firefox
brew cask install --verbose gimp-lisanet
brew cask install --verbose grandperspective
brew cask install --verbose xquartz
brew cask install --verbose inkscape
brew cask install --verbose libreoffice
brew cask install --verbose macvim
brew cask install --verbose mpv
brew cask install --verbose nvalt
brew cask install --verbose omnifocus
brew cask install --verbose 1password
brew cask install --verbose quicktime-player7
brew cask install --verbose slack
brew cask install --verbose tigervnc-viewer
brew cask install --verbose thunderbird
brew cask install --verbose viscocity

## Install VM brews and casks
brew cask install --verbose dosbox
brew cask install --verbose parallels
brew cask install --verbose scummvm
brew cask install --verbose vagrant
brew cask install --verbose virtualbox

## Tap and install homebrew/fonts
brew tap -v homebrew/fonts
brew cask install --verbose font-bitstream-vera
brew cask install --verbose font-inconsolata
brew cask install --verbose font-source-code-pro
brew cask install --verbose font-source-sans-pro
brew cask install --verbose font-source-serif-pro

## List installed casks, and we're done!
brew list

## EOF

