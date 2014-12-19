set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'ervandew/supertab'
  Plugin 'whatyouhide/vim-gotham'
call vundle#end()
filetype plugin indent on

colorscheme gotham
