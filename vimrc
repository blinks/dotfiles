set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'ervandew/supertab'
  Plugin 'tpope/vim-sensible'
  Plugin 'whatyouhide/vim-gotham'
call vundle#end()
filetype plugin indent on

colorscheme gotham
set guifont=Monaco:h12

" Auto-source .vimrc on change.
autocmd! BufWritePost .vimrc source %
