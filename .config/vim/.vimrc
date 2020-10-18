syntax on

" NERDTreeToggle
"
" 1. Переключение между окнами - Ctr + WW // Ctr + W + arrow
" 2. Открыть фaйл в новом окне - i
" 3. Показать dotfiles - I
"
" Go
"
" 1. Включить автокомплит - Ctr + X and Ctr + O

autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Flash screen instead of beep sound
set visualbell

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

filetype plugin indent on

set backspace=indent,eol,start

set nocompatible
set nobackup
set nowritebackup
set noswapfile
set hlsearch
set incsearch
set backspace=2

set ttymouse=sgr
set updatetime=500
set balloondelay=250
set signcolumn=yes

set autoindent
set smartindent


"Go

"Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"

"Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1   

" Airline

" air-line plugin specific commands
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

""""""""""""""""""""Plugins"""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

"common
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'

"git
Plug 'airblade/vim-gitgutter'

"Languages support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Window customize
Plug 'vim-airline/vim-airline'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" mappings
map <C-n> :NERDTreeToggle<CR>

" NerdTreeComands
au VimEnter *  NERDTree
