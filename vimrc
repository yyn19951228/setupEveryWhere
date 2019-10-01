set nu

set shortmess=at

syntax on

set nocompatible

set nobackup

set confirm

set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set colorcolumn=+1

set autoread

set cindent

set smartindent
set hlsearch

set background=dark

set showmatch

set ruler

set nocompatible

set novisualbell

set laststatus=2

autocmd InsertLeave * se nocul

autocmd InsertEnter * se cul
autocmd BufWritePre * %s/\s\+$//e

set showcmd

inoremap <C-b> <left>
inoremap <C-f> <right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-n> <down>
inoremap <C-p> <up>


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Vimjas/vim-python-pep8-indent'
call vundle#end()
filetype plugin indent on

" YCM setting
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
