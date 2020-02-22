# My vim config intro

Here is an memo for my vim configuration

## Vim/Neovim

Currently I am using neovim, and will be switched to vim if needed, or in the future
the vim has better performance, but currently I think nvim is a better choice

## Plugins
Here are the main plugins that I am using:

'''
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comman usage
Plug 'tpope/vim-surround' 
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'simeji/winresizer'
Plug 'vimwiki/vimwiki'

" Install Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
'''

### coc.nvim

I use *coc.nvim* for all the LSP stuffs.
It is such a powerful plugin that could empower Vim like VSCode,
and I hate writing code in a browser like VSCode,
let alone the poor performance of VSCodeVim.

And I also use some plugins from *coc.nvim*:
['coc-json',
'coc-html',
'coc-lists',
'coc-highlight',
'coc-pairs',
'coc-yank',
'coc-git',
'coc-spell-checker',
'coc-markdownlint']

### vimwiki

A note organize plugin I used to organize my notes and tdl

### winresizer

Resize the window split by using <C-e>
