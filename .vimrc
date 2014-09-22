"====================================
" Based on 
" https://github.com/mbrochh/vim-as-a-python-ide/blob/master/.vimrc
"==============================================
" Automatic reloading of .vimrc
autocmd! bufwritepost _vimrc source %

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Color scheme
color darkblue
 
" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Configure vim-powerline
set laststatus=2

" Configure Python 
execute pathogen#infect()
 
set foldmethod=indent
set foldlevel=99
 
syntax on                    " syntax highlighing
filetype on                  " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
 
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
 
"set completeopt=menuone,longest,preview

" crtlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
