set nocompatible backspace=2 clipboard^=unnamed,unnamedplus
set binary noeol hidden nowrap mouse+=a autochdir

set viminfo+=n~/.vim/viminfo dir=~/.vim/swaps undodir=~/.vim/undo undofile

set expandtab tabstop=2 shiftwidth=2 softtabstop=2 smartindent
autocmd FileType make setlocal noexpandtab

set hlsearch incsearch ignorecase smartcase
set number relativenumber
set splitbelow splitright
set shortmess+=Iac path+=** wildmenu " c -> Turn off completion messages
set re=2 " Fixes vim hanging when opening a ts file

syntax on
set t_Co=16 bg=dark cursorline laststatus=2 statusline=%F%m%r%h%w\ %=[%v\,%o]
colorscheme custom

inoremap <C-c> <ESC>
noremap x "_x
noremap X "_X

let g:netrw_liststyle=3 
let g:netrw_banner=0 
let g:netrw_browse_split=4 
let g:netrw_winsize=25 
let g:netrw_dirhistmax=0

set errorformat+=%A%\\s%#File\ \"%f\"\\,\ line\ %l\\,\ in%.%#
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow