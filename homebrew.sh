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
brew install -v ansible        ## easiest orchestration tool
brew install -v aria2          ## great download accelerator/resumer for crappy internet connections
brew install -v colordiff      ## diff, but with colour!
brew install -v coreutils      ## for testing non-standard gnu extentions
brew install -v curl           ## acronym for "curl is better than wget"
## brew install -v dcfldd      ## replaced with pv
brew install -v ddrescue       ## recover data using multiple reads and reconstruction
brew install -v dvtm           ## console tiling "window" manager
brew install -v fortune        ## why is this not defauly everywhere?
brew install -v gnupg          ## secure email and package signing
brew install -v htop-osx       ## more visual top
brew install -v iperf          ## network throughput tester
brew install -v ipmitool       ## ipmi control client
brew install -v links          ## simple console browser without distractions
brew install -v mkvtoolnix     ## extract, rebuild mkv video bundles
brew install -v msmtp          ## for sending mail with slrn
brew install -v mtr            ## network diagnostic tool and port scanner
brew install -v nicovideo-dl   ## download from nicovideo
brew install -v packer         ## hashicorp vm template builder
brew install -v p7zip          ## for unzipping (people still send these in 2016)
brew install -v pngcrush       ## losslessly reduce pngs
brew install -v postgresql     ## database, personal testing and projects
brew install -v puppet         ## another orchestration tool, for old stuff that still uses
brew install -v pv             ## visualise progress, speed of piped data (useful for dd)
brew install -v rzip           ## high compression ratio with large dictionary size
brew install -v saltstack      ## another compelling orchestration tool
brew install -v screen         ## run stuff that can't be daemonised
brew install -v slrn           ## solid news reader
brew install -v sshuttle       ## poor man's vpn over ssh
brew install -v ssllabs-scan   ## console interface for ssl testing
brew install -v speedtest_cli  ## console interface for ubiquitous speedtest
brew install -v testdisk       ## brilliant file system recovery utility
brew install -v vault          ## hashicorp secrets store
brew install -v watch          ## run same command after defined intervals
brew install -v xz             ## high ratio compression
brew install -v youtube-dl     ## download video from youtube, vimeo

## Install podcasting brews
brew install -v eye-d3          ## console id3 tag editor
brew install -v flac            ## lossless audio archive encoder
brew install -v graphicsmagick  ## not imagemagick, for processing images
brew install -v hugo            ## fastest static site generator
brew install -v lame            ## mp3 encoder
brew install -v libav           ## not ffmpeg, for encoding audio
brew install -v mp3gain         ## lossless mp3 normaliser
brew install -v normalize       ## normalise volume across series of clips
brew install -v sox             ## swiss army knife for audio processing

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
brew cask install --verbose xquartz            ## dependency for a few things
brew cask install --verbose 1password          ## password manager that doesn't store on their servers
brew cask install --verbose adium              ## xmpp client with OTR
brew cask install --verbose alfred             ## app launcher, calculator, snippet expander...
brew cask install --verbose audio-hijack       ## application audio source and podcast recorded
brew cask install --verbose boom               ## system-wide audio calibrator and equaliser
brew cask install --verbose calibre            ## ebook organiser and converter
brew cask install --verbose dropbox            ## great for encrypted sparsebundle syncing
brew cask install --verbose firefox            ## still my primary browser since the phoenix days
brew cask install --verbose hazel              ## automatically act based on file system changes
brew cask install --verbose grandperspective   ## visualise drive usage
brew cask install --verbose inkscape           ## vector graphics editor, needs xquartz
brew cask install --verbose lastfm             ## audio scrobbler client
brew cask install --verbose libreoffice        ## latest iteration of the free openoffice.org suite
brew cask install --verbose lisanet-gimp       ## lisanet's built gimp (ugh, that name) with extra goodies
brew cask install --verbose macvim             ## aqua port of the world's [ESC] favourite [ESC] editor
brew cask install --verbose meteorologist      ## weather forecast in your menu bar
brew cask install --verbose mpv                ## *easily* the best video player
brew cask install --verbose nvalt              ## note taking and personal wiki  
brew cask install --verbose quicktime-player7  ## for ancient referenced mov files mpv/vlc can't handle
brew cask install --verbose tigervnc-viewer    ## simple, fast vnc viewer
brew cask install --verbose thunderbird        ## email and newsgroups
brew cask install --verbose viscosity          ## best mac vpn client
brew cask install --verbose vivaldi            ## chromium-based browser with sidebar tabs

## Previously installed casks
## brew cask install --verbose chromium     ## browser, use vivaldi for it now
## brew cask install --verbose istat-menus  ## visualise resource use, but found distracting
## brew cask install --verbose omnifocus    ## GTD task organiser, use asana now
## brew cask install --verbose parallels    ## best type1 mac hypervisor for gpu, replaced with game box 

## Install VM brews and casks
brew install -v qemu --HEAD             ## universal, cross platform emulator
brew cask install --verbose dosbox      ## dos emulator for games
brew cask install --verbose scummvm     ## scumm interpreter for humongous entertainment games
brew cask install --verbose vagrant     ## decent hashicorp tool for vm deployments
brew cask install --verbose virtualbox  ## free, fast type1 hypervisor

## Tap and install homebrew/fonts
brew tap -v homebrew/fonts
brew cask install --verbose font-bitstream-vera
brew cask install --verbose font-inconsolata
brew cask install --verbose font-liberation-mono-for-powerline
brew cask install --verbose font-liberation-sans
brew cask install --verbose font-lusitana   ## not to be confused with lusitania
brew cask install --verbose font-open-sans  ## dont like it, but to save it being loaded maybe?
brew cask install --verbose font-pt-mono
brew cask install --verbose font-pt-sans
brew cask install --verbose font-pt-serif
brew cask install --verbose font-source-code-pro
brew cask install --verbose font-source-sans-pro
brew cask install --verbose font-source-serif-pro

## List installed casks, and we're done!
brew list

## EOF

