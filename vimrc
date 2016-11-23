set nocompatible
let mapleader = ","
filetype off

" vim +PluginInstall +qall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'bling/vim-airline'
  Plugin 'ervandew/supertab'
  Plugin 'gmarik/Vundle.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'mustache/vim-mustache-handlebars'
  Plugin 'reedes/vim-wordy'
  Plugin 'rust-lang/rust.vim'
  Plugin 'tpope/vim-sensible'
  Plugin 'tpope/vim-sleuth'
  Plugin 'whatyouhide/vim-gotham'
call vundle#end()
filetype plugin indent on

colorscheme gotham
set guifont=Hack:h14

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
