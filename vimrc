""
"" .vimrc for Vim, everyone's favourite editor
"" By Ruben Schade, 2004-present
"" MIT licenced
""

"" For the unfortunately-named Pathogen plugin system
execute pathogen#infect()

"" Important
set nocompatible     "" use Vim defaults instead of vi compatibility

"" Moving around, searching and patterns
set ignorecase       "" ignore case when using a serch pattern

"" Displaying text
set wrap             "" long lines wrap
set linebreak        "" wrap long lines at characters in 'breakat'
set lazyredraw       "" don't redraw whil executing macros
set number           "" show the line number for each line
set numberwidth=4    "" number of colums to use for the line number

"" Syntax, highlighting and spelling
syntax on
set background=light "" dark background for terminal, light for GUI (see below)
set hlsearch         "" highlights all matches for last used search pattern

"" Messages and info
set showmode         "" show the current mode in statusline
set ruler            "" show cursor position below each window
set noerrorbells     "" don't wring the bell for error messages

"" Editing text
set backspace=2      "" specifies what <BS> can do in Insert mode

"" Tabs and indenting
set tabstop=4        "" number of spaces a <Tab> stands for
set shiftwidth=4     "" number of spaces used for each step of autoindent
set smarttab         "" a <Tab> in indent inserts 'shiftwidth' spaces
set expandtab        "" expand <Tab> to spaces in insert mode
set autoindent       "" automatically set indent of new line
set smartindent      "" do clever autoindenting (aw yeah)

"" Reading and writing files
set fileformats=unix,mac,dos
set encoding=utf-8

"" For MacVim and GVim (alternative to .gvimrc)
if has("gui_running")
    set guifont=Source\ Code\ Pro:h14
    set background=light
    set guioptions-=T
    set guioptions+=e
    colorscheme solarized

    "" Open NERDTree by default
    autocmd vimenter * NERDTree

    "" Close Vim if only NERDTree is open
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

"" EOF
