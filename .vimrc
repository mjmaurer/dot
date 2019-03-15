set nocompatible

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
set nocompatible
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" ------- vundle includes -------
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'


" ------- vundle boilder ---------
call vundle#end()            " required


" ------ Google mappings -------
if system('hostname') =~ 'google'
"  source ~/googlestuff.vim
endif


filetype plugin indent on
