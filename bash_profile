#!/usr/bin/env bash

######
## .bash_profile to load bash
## 2014-04

## Source other bashrc files first if available
[ -f /etc/bashrc ] && . /etc/bashrc
[ -f /usr/local/etc/bashrc ] && . /usr/local/etc/bashrc
[ -f ~/.bashrc ] && . ~/.bashrc

## EOF

