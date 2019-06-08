set nocompatible

" ------ style ----------
colo desert
syntax on

" -------  normal mappings -------------
nmap J :bp<cr>
nmap K :bn<cr>

" Space as leader
map <Space> <Nop>
let mapleader=" "

" Clipboard copy
noremap <Leader>y "+y
noremap <Leader>p "+p
set clipboard=unnamedplus

" Copy delete paste
noremap <Leader>rw viwp 

" ALE
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" ------- random shit ----------
" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>


" ------- vundle boiler ---------
set nocompatible
filetype off
let vundleInstall='no'
if !filereadable($HOME . '/.vim/bundle/Vundle.vim/.git/config') && confirm("Clone Vundle?","Y\nn") == 1
    exec '!git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
    let vundleInstall='yes'
endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" ------- vundle includes -------
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'


" ------- vundle boilder ---------
call vundle#end()            " required
if vundleInstall =~ 'yes'
  autocmd VimEnter * silent! PluginInstall
endif

" ------ Google mappings -------
if system('hostname') =~ 'google'
  source ~/googlestuff.vim
endif


filetype plugin indent on
