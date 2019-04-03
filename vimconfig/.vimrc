
" so % to reload this file

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" vim-plug  ******************************************************************
" PlugInstall or PlugUpdate to trigger
call plug#begin('~/.vim/plugged')
  Plug 'rakr/vim-one'
"  Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Vundle *********************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
"  Plugin 'vim-airline/vim-airline-themes'
"  Bundle 'edkolev/tmuxline.vim'
"  Plugin 'MarcWeber/vim-addon-mw-utils'
"  Plugin 'tomtom/tlib_vim'
"  Plugin 'garbas/vim-snipmate'
"  Plugin 'honza/vim-snippets'
"  Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" Misc Key Mappings **********************************************************
set backspace=indent,eol,start

map <F4> :!gnuindent -kr -ci2 -cli2 -i2 -l80 -nut<CR>

" Split Navigation ***********************************************************
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Indentation *****************************************************************
"set tabstop=2

set expandtab
set shiftwidth=2
set softtabstop=2
"set autoindent
"set smartindent

set pastetoggle=<f5>

" Line Numbers ****************************************************************
set number
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Colorschemes  *******************************************************************
" :colorscheme then Space followed by CTRLd to view installed colorschemes

colorscheme one
"colorscheme CandyPaper
set background=dark
syntax on
syntax enable

" Airline *********************************************************************
set noshowmode
set encoding=utf-8

set laststatus=2
set listchars=tab:>-,trail:-
set list

let g:airline_theme='one'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
