#!/bin/sh

##
## homebrew.sh for Homebrew and Homebrew Cask on OS X
## <http://github.com/Homebrew/homebrew>
## <http://github.com/caskroom/homebrew-cask>
##
## By Ruben Schade, 2012-present
##

echo "Installing and updating homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
beew install git

echo "Installing general brews..."
brew install colordiff
brew install curl
brew install dcfldd
brew install ddrescue
brew install dvtm
brew install flac
brew install fortune
brew install gpg
brew install imagemagick --with-librsvg --with-libtiff --with-lib-wmf --without-magick-plus-plus
brew install lame
brew install libav
brew install lftp
brew install mcrypt
brew install mkvtoolnix
brew install nasm
brew install nvi
brew install openssl
brew install perl
brew install pngcrush
brew install postgres  ## stable bottled version
brew install quicksilver
brew install ruby
brew install rzip
brew install speedtest_cli
brew install subversion
brew install tcsh
brew install watch
brew install xz
brew install youtube-dl

echo "Installing homebrew/dupes..."
brew tap homebrew/dupes
brew install rsync
brew install screen

echo "Installing homebrew casks..."
ln -s /Applications ~/Applications
brew install caskroom/cask/brew-cask
brew cask install adium
brew cask install calibre
brew cask install firefox
brew cask install gimp-lisanet
brew cask install grandperspective
brew cask install ichm
brew cask instakk inkscape
brew cask install istat-menus
brew cask install libreoffice
brew cask install macvim
brew cask install mpv
brew cask install scummvm
brew cask install textexpander
brew cask install textmate
brew cask install thunderbird

echo "Install work virtualisation stuff..."
brew install ansible
brew install puppet
brew install qemu
brew install homebrew/binary/packer
brew cask install dosbox
brew cask install parallels
brew cask install virtualbox
brew cask install vmware-fusion

echo "Listing installed goodness, and we're done..."
brew list

## EOF

