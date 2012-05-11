Current Plugins
---------------

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion)
* [SnipMate](https://github.com/garbas/vim-snipmate), plus [SnipMate Snippets](https://github.com/honza/snipmate-snippets)
    * Depends on [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
    * Depends on [tlib](https://github.com/tomtom/tlib_vim)
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
* [Ack for Vim](https://github.com/mileszs/ack.vim) (Requires [ack](http://betterthangrep.com))
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gist.vim](https://github.com/mattn/gist-vim))
    * Depends on [webapi-vim](https://github.com/mattn/webapi-vim)

Installation
------------

### Install Modules:

    cd ~
    git clone git://github.com/abeger/.vim.git
    ln -s .vim/vimrc .vimrc
    cd .vim
    git submodule init
    git submodule update   

### Install Ack (if necessary):
See [ack.vim](https://github.com/mileszs/ack.vim) instructions.

### Configure Gist.vim:
See [Gist.vim](https://github.com/mattn/gist-vim) instructions.

TODO
---

* Figure out how to turn off Ack plugin if Ack is not present on the system.
