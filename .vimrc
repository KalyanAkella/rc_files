set noswapfile                                                                                                                                                                                                                                                            
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/command-t'
Plugin 'https://github.com/vim-scripts/paredit.vim.git'
Plugin 'https://github.com/guns/vim-clojure-highlight.git'
Plugin 'https://github.com/guns/vim-clojure-static.git'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'rust-lang/rust.vim'
Plugin 'https://github.com/fatih/vim-go.git'
call vundle#end()
syntax on
filetype on
filetype plugin on
filetype indent on
set hls 
set number
set smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set cursorline
imap <S-CR> <CR><CR>end<Esc>-cc
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:netrw_altv=1
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore | wincmd p
augroup END 

let g:rustfmt_autosave=1
let g:syntastic_rust_checkers = ['rustc']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
set tags+=./tags;$HOME
set clipboard=unnamed
