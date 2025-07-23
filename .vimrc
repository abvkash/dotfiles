" Sane settings
set nocompatible backspace=2 clipboard^=unnamed,unnamedplus

" Directory configuration
set viminfo+=n~/.vim/viminfo dir=~/.vim/swaps undodir=~/.vim/undo undofile

" Indentation
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 smartindent
autocmd FileType make setlocal noexpandtab

" Search
set hlsearch incsearch ignorecase smartcase

" Misc
set nowrap hidden mouse+=a autochdir
set splitbelow splitright
set path+=** wildmenu 
set re=2

" Appearance
syntax on
set background=dark 
set number relativenumber
set cursorline laststatus=2 statusline=%F%m%r%h%w\ %=[%v\,%o]
colorscheme habamax
hi Normal ctermfg=white ctermbg=black

" Mapping
inoremap <C-c> <ESC>
noremap x "_x
noremap X "_X

" Netrw configuration
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:netrw_dirhistmax=0

" 
set errorformat+=%A%\\s%#File\ \"%f\"\\,\ line\ %l\\,\ in%.%#
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
