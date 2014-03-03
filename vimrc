" To disable a plugin, add it's bundle name to the following list
" Via http://stackoverflow.com/a/5316897/56333
let g:pathogen_disabled = []

" Determine if we're running on a Mac. 
" If not, disable Dash plugin
" http://stackoverflow.com/a/2842811/56333
 if has("unix")
   let s:uname = substitute(system("uname"), '\n', '', '')
   if s:uname != "Darwin"
     call add(g:pathogen_disabled, 'dash')
   endif
 endif

"Pathogen settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

syntax enable

"For Solarized color scheme
if has('gui_running')
    set background=light
    colorscheme solarized
endif

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
