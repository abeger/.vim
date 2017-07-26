set nocompatible              " be iMproved, required
filetype on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 's3rvac/vim-syntax-redminewiki'
Plugin 'rking/ag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vimwiki/vimwiki'
Plugin 'ervandew/supertab'
Plugin 'slim-template/vim-slim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'


"Tryouts
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()            " required
filetype plugin indent on    " required

" To disable a plugin, add its bundle name to the following list
" Via http://stackoverflow.com/a/5316897/56333
" let g:pathogen_disabled = []

" Determine if we're running on a Mac.
" If not, disable Dash plugin
" http://stackoverflow.com/a/2842811/56333
" if has("unix")
"   let s:uname = substitute(system("uname"), '\n', '', '')
"   if s:uname != "Darwin"
"     call add(g:pathogen_disabled, 'dash')
"   endif
" endif

filetype plugin on

syntax enable

"For Solarized color scheme
"if has('gui_running')
    set background=light
    colorscheme solarized
"endif

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

"Don't show some files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

"Change window directory and execute NERDTree
function! CdToNERDTree(dir)
    exec 'lcd '.a:dir
    exec 'NERDTree'
endfunction

"Shorthand commands
command! -n=1 -bar St :call SetTabWidth(<args>)
command! -n=? -complete=dir -bar Nt :call CdToNERDTree('<args>')
command! -n=0 -bar Ntf :NERDTreeFind

set nofoldenable

autocmd VimEnter * Nt .
"default to the editor rather than NERDtree if vim was called with a file as
"an argument
if argc() > 0
    autocmd VimEnter * wincmd p
endif

"Disable middle mouse pastes
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

" Consider all .redmine files Redmine wiki files.
au BufNewFile,BufRead *.redmine set ft=redminewiki

" Consider all .md files Markdown files.
au BufNewFile,BufRead *.md set ft=markdown

" Mappings for CommandT

noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>

augroup ruby_highlighting
    au!
    au BufNewFile,BufRead Gemfile      set filetype=ruby
    au BufNewFile,BufRead Gemfile.lock set filetype=ruby
    au BufNewFile,BufRead Guardfile    set filetype=ruby
    au BufNewFile,BufRead Capfile      set filetype=ruby
augroup END

let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1},
                     \{'path': '~/personal_wiki/',
                     \ 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1}]

inoremap jk 

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = "bundle"
let g:syntastic_ruby_rubocop_args = "exec rubocop"
