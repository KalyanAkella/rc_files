set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/command-t'
call vundle#end()
syntax on
filetype on
filetype plugin on
filetype indent on
set number
set smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
imap <S-CR> <CR><CR>end<Esc>-cc
