Current Plugins
---------------

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Tabular](https://github.com/godlygeek/tabular)
* [Git Gutter](https://github.com/airblade/vim-gitgutter)
* [Solarized Colorscheme](https://github.com/altercation/vim-colors-solarized)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-syntax-redminewiki](https://github.com/s3rvac/vim-syntax-redminewiki)
* [ag.vim](https://github.com/rking/ag.vim)


Shortcuts
---------

* **St [number]**: Sets all the tab width settings to _number_
* **Nt [dir]**: Changes working directory to _dir_ and activates NERDTree


Installation
------------

### Install Modules:

    cd ~
    git clone git@github.com:abeger/.vim.git
    ln -s .vim/vimrc .vimrc
    cd .vim
    git submodule init
    git submodule update   

### Initialize Plugins

    :PluginInstall

### Install The Silver Searcher (if necessary):
See [ag.vim](https://github.com/rking/ag.vim#installation) instructions.


TODO
---

* Get `Nt` with no args to default to directory of current file?
