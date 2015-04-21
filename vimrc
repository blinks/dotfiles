set nocompatible
let mapleader = ","
filetype off

" vim +PluginInstall +qall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'ervandew/supertab'
  Plugin 'reedes/vim-wordy'
  Plugin 'tpope/vim-sensible'
  Plugin 'tpope/vim-sleuth'
  Plugin 'whatyouhide/vim-gotham'
  Plugin 'ludovicchabant/vim-gutentags'
call vundle#end()
filetype plugin indent on

colorscheme gotham
set guifont=Monaco:h12

" Auto-source .vimrc on change.
autocmd! BufWritePost .vimrc source %

" Return to the last cursor position when opening a file.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

if !exists("g:asciidoc_command")
  let g:asciidoc_command = "asciidoctor"
endif

function! AsciidocCompileAndRunFile()
  silent !clear
  execute "!" . g:asciidoc_command . " " . bufname("%")
endfunction
