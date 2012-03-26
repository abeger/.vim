"Pathogen settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"Fugitive settings
if v:version >= 700
    "set statusline+=%{fugitive#statusline()}
endif

"general settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ruler

set nocompatible

