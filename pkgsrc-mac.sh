#!/bin/sh

######
## pkgsrc for Mac, to replace Homebrew
## 2020-06

_PYTHON="38"

## Utilities
pkgin install ansible aria2 arping cdrtools colordiff colorize dcfldd      \
    ddrescue entr fortune git htop httping ioping lzip lzop mdf2iso mosh   \
    mtr ncftp nmap nvi oksh openssl ossp-uuid patch perl python${_PYTHON}  \
    ruby rsync screen sipcalc sqlite3 subversion tcpdump tcpdstat testdisk \
    the_silver_searcher tree unrar unzip watch wtf

## Console apps
pkgin install dialog emacs irssi links minicom ncurses oksh screen vim

## Documentation and writing
pkgin install chktex cmark docbook docbook-website docx2txt go-hugo hunspell \
    hunspell-en_GB py${_PYTHON}-mkdocs tesseract texlive-collection-latex    \
    texlive-collection-latex-doc wordnet

## Podcasting and media
pkgin install cmark cowsay eyed3 ffmpeg4 figlet figlet-fonts flac gifsicle \
    ImageMagick lame mkvtoolnix neofetch normalize p5-Image-ExifTool       \
    pngcrush youtube-dl

## Fonts
pkgin install Code-New-Roman dejavu-ttf inconsolata-g sourcesans-fonts \
    sourcehansans-fonts
mkdir /Library/Fonts/pkgsrc
cp /opt/pkg/share/fonts/X11/OTF/* /Library/Fonts/pkgsrc/
cp /opt/pkg/share/fonts/X11/TTF/* /Library/Fonts/pkgsrc/

## Help out
pkgin install pkgsurvey
/opt/pkg/bin/pkgsurvey

