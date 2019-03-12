set nocompatible              " be iMproved, required
filetype off                  " required

" ------ style ----------
colo desert
syntax on

" -------  normal mappings -------------
nmap J :bp<cr>
nmap K :bn<cr>


" ------- random shit ----------
" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

" ------- vundle boiler ---------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" ------- vundle includes -------
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'

" ------- vundle boilder ---------
call vundle#end()            " required
filetype plugin indent on    " required
