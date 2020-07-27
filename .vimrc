set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.cpp,*.h,*.hpp,*.cc,*.c
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'

set encoding=utf-8

let python_highlight_all=1
syntax on

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

set nu

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'itchyny/lightline.vim'

Plugin 'vim-pandoc/vim-pandoc'

Plugin 'Lokaltog/powerline'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

set t_Co=256
set t_ut=

let g:python3_host_prog = '/usr/bin/python3'

let g:python_host_prog = '/usr/bin/python'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

let g:ycm_autoclose_preview_window_after_completion=1

map <leader>g : YcmCompleter GoToDefinitonElseDeclaration<CR>
