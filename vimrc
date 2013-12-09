"Pathogen settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

syntax enable

"For Solarized color scheme
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

filetype plugin indent on

"Fugitive settings
if v:version >= 700
    "set statusline+=%{fugitive#statusline()}
endif

"general settings
set expandtab
set ruler

set nocompatible

"Function to set tabwidth
function! SetTabWidth(width)
    let &tabstop=a:width
    let &softtabstop=a:width
    let &shiftwidth=a:width
endfunction

"Default tabwidth
call SetTabWidth(4)

"Change window directory and execute NERDTree
function! CdToNERDTree(dir)
    exec 'lcd '.a:dir
    exec 'NERDTree'
endfunction

"Shorthand commands
command! -n=1 -bar St :call SetTabWidth(<args>)
command! -n=? -complete=dir -bar Nt :call CdToNERDTree('<args>')

set nofoldenable
