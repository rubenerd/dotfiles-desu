""""""
"" .vimrc for Vim, everyone's favourite editor
"" By Ruben Schade, 2004-present
""

"" Displaying text
set linebreak
set lazyredraw
set number

"" Syntax, highlighting and spelling
syntax on
set background=light
set hlsearch         "" highlight search results

"" Messages and info
set noerrorbells
set ruler
set showmode

"" Tabs and indenting
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4

"" Reading and writing files
set encoding=utf-8

"" Disable arrow keys: old habits die hard
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"" For MacVim and GVim (alternative to .gvimrc)
if has("gui_running")
    set guifont=Source\ Code\ Pro:h14
    set background=light
    set guioptions-=T
    set guioptions+=e

    "" Taking a break from NerdTree; leaving here for reference
    
    "" Open NERDTree by default
    "" autocmd vimenter * NERDTree

    "" Close Vim if only NERDTree is open
    "" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

"" EOF
