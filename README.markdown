Current Plugins
---------------

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion)
* [SnipMate](https://github.com/garbas/vim-snipmate), plus [SnipMate Snippets](https://github.com/honza/vim-snippets)
    * Depends on [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
    * Depends on [tlib](https://github.com/tomtom/tlib_vim)
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
* [Ack for Vim](https://github.com/mileszs/ack.vim) (Requires [ack](http://betterthangrep.com))
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gist.vim](https://github.com/mattn/gist-vim)
    * Depends on [webapi-vim](https://github.com/mattn/webapi-vim)
* [Tabular](https://github.com/godlygeek/tabular)
* [Git Gutter](https://github.com/airblade/vim-gitgutter)
* [Solarized Colorscheme](https://github.com/altercation/vim-colors-solarized)
* [Dash.vim](https://github.com/rizzatti/dash.vim), (Only turned on on Macs. Requires [Dash.app](http://kapeli.com/))
    * Depends on [funcoo.vim](https://github.com/rizzatti/dash.vim)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-syntax-redminewiki](https://github.com/s3rvac/vim-syntax-redminewiki)


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

### Install Ack (if necessary):
See [ack.vim](https://github.com/mileszs/ack.vim#installation) instructions.

### Configure Gist.vim:
See [Gist.vim](https://github.com/mattn/gist-vim#install) instructions.

TODO
---

* Try out [Vundle](https://github.com/gmarik/Vundle.vim) instead of Pathogen.
* Figure out how to turn off Ack plugin if Ack is not present on the system.
* Figure out how to turn off Dash plugin if Dash is not present on the system.
* Get `Nt` with no args to default to directory of current file?
