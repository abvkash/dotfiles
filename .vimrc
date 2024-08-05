" Sane settings
set backspace=2
set nocompatible

" Yank to system clipboard
set clipboard^=unnamed,unnamedplus

" No newlines at end of files
set binary noeol

set viminfo+=n~/.vim/viminfo
set dir=~/.vim/swaps
set undodir=~/.vim/undo
set undofile

" Indentation
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType make setlocal noexpandtab
set smartindent

set hlsearch incsearch ignorecase smartcase

set number relativenumber

set splitbelow splitright

set mouse+=a
set hidden
set autochdir
set nowrap
set shortmess+=Iac " c -> Turn off completion messages

set path+=**
set wildmenu

inoremap <C-c> <ESC>
noremap x "_x
noremap X "_X

" For vim's built-in file explorer
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=25
let g:netrw_dirhistmax=0

" Appearance
syntax on
set t_Co=16
set background=dark
set cursorline

hi Comment      ctermfg=darkgreen
hi Type         ctermfg=darkblue
hi Statement    ctermfg=red
hi StorageClass ctermfg=darkblue
hi Statement    ctermfg=magenta
hi Constant     ctermfg=red
hi Function     ctermfg=darkyellow

hi LineNr       ctermfg=darkgray
hi CursorLine   cterm=NONE
hi CursorLineNr cterm=NONE

" Quick fix format
set errorformat+=%A%\\s%#File\ \"%f\"\\,\ line\ %l\\,\ in%.%#
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

set laststatus=2
set statusline=%F%m%r%h%w
