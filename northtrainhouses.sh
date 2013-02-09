#!/usr/bin/env sh

##
## North (Shore/Sydney) Train Houses
## By Ruben Schade, 2013.02
## MIT licenced
##
## Looking for a property along the North Shore railway line in Sydney? This 
## saved me a crazy amount of time when using RealEstate.com.au :'D
##

if [[ $(uname) == 'Darwin' ]]; then

    echo "Milsons Point, NSW 2061; North Sydney, NSW 2060; Waverton, NSW 2060; Wollstonecraft,  NSW 2065; St Leonards, NSW 2065; Artarmon, NSW 2064; Chatswood, NSW 2067; Roseville;Roseville, NSW 2069; Lindfield, NSW 2070; Killara, NSW 2071; Gordon, NSW 2072; Pymble, NSW 2073; Turramurra, NSW 2074; Warrawee, NSW 2074; Wahroonga, NSW 2076; Waitara, NSW 2077; Asquith, NSW 2077; Mount Colah, NSW 2079; Mount Kuring-Gai, NSW 2080; Cammeray, NSW 2062; Crows Nest, NSW 2065; Willoughby, NSW 2068; West Pennant Hills, NSW 2125; East Ryde, NSW 2113; Greenwich, NSW 2065; Naremburn, NSW 2065; Mcmahons Point, NSW 2060; Westleigh, NSW 2120; West Pymble, NSW 2073; Lane Cove North, NSW 2066;" | pbcopy

    echo "Paste clipboard into RealEstate.com.au now for North Shore railway suburbs!"

else

    echo "This uses the Mac OS X pasteboard, sorry"
    
fi
