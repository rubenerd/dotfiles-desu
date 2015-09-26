#!/bin/sh

######
## Install Firefox extensions and such

set -e

_addonsroot='https://addons.mozilla.org/'
_list='https://addons.mozilla.org/en-us/firefox/collections/rubenerd/essentials/'

## Get my Firefox extension list from Mozilla, and extract URLs
_urls=`curl $_list | grep -o /firefox/downloads/latest/[0-9]*/addon-[0-9]*-latest.xpi`

## Download each file
for _url in $_urls; do
    curl -OL "${_addonsroot}${_url}"
done

## Install extensions
case `uname` in
    Darwin )
        /Applications/Firefox.app/Contents/MacOS/firefox-bin *xpi & ;;
    FreeBSD|NetBSD )
        /usr/local/bin/firefox-bin *xpi & ;;
    Linux )
        /usr/bin/firefox-bin *xpi & ;; 
esac

