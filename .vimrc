set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Wombat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




set hidden
nnoremap ' `
nnoremap ` '
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest

set ignorecase 
set smartcase
set title
set ruler


" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.


" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"


" Python stuff
" set tabstop=4
" set shiftwidth=4
" set smarttab
" set expandtab
" set softtabstop=4
" set autoindent
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Line numbers on
set number
" Toggle line numbers with F2
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Remove trailing spaces
function TrimWhiteSpaces()
	%s/\s*$//
	''
:endfunction


set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1
" #nmap <F6> /}<CR>za%<ESC>:nohlsearch<CR>
nmap <F6> za

"colorscheme ir_black 
colorscheme wombat 
"colorscheme clarity
set gfn=Liberation\ Mono\ 11

" set mouse=a

set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }



filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

 
" Highlight for over 80
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

if exists('+colorcolumn')
      set colorcolumn=100
else
      au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif




