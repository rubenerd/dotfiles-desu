# Readme for dotfiles-desu
Personal stash of dotfiles and orchestration scripts
By Ruben Schade, 2012–present  
https://github.com/RubenSchade/dotfiles-desu

## What is this?
After years of SVN and hg (and cvs), I've finally decided to put Github to
use. Partly so I can learn git, but also because some of the indispensable
parts of my current workflow are hosted here. Pardon my
paradigm–synergising use of the word “workflow”.

**Update 2014**: I now use private Github repos at work. Mission 
Accomplished!

## No, really, what is this?
As my first test repo, this is nothing special. Mostly it will serve as a 
replacement for my SVN dotfiles repo on my old VPS which I've since
retired. That was a lot of acronyms, FYI. This includes:

* dotfiles for shells, apps and so on
* initialisation scripts
* <del>VM initialisation scripts for VirtualBox, QEMU and such</del> moving to its own repo
* one off Perl scripts
* probably more

## Wouldn't these work better as gists?
<del>Yes.</del>

Perhaps. This way though, I can grab all my dotfiles, then symlink on all my machines. It's like a dependency-free orchestration system (though
I'll probably want to move configuration files over to Ansible at some
point).

## Can I use these?

Go for it d(^_^)b. Though their utility is probably limited unless you
work in cloud infrastructure, and tend to bet on the wrong horse for many
tools.

