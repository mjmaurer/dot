set nocompatible
filetype off

" ------ Google mappings -------
if system('hostname') =~ 'google'
  source ~/googlestuff.vim
endif

" ------ style ----------
set t_Co=256
syntax on
set background=dark

"================Spaces and Tabs==========="
    set tabstop=4
    set softtabstop=4
    set expandtab
    set shiftwidth=4
"==================UI Config==============="
    set number
    set showcmd
    set cursorline
    filetype indent on
    set showmatch
    set laststatus=2
" -------  normal mappings -------------
    nmap J :bp<cr>
    nmap K :bn<cr>
" =============Webpack============ "
:set backupcopy=yes

" Space as leader
map <Space> <Nop>
let mapleader=" "
" undo 
set undofile
set undodir=~/.vimundo

map <Space> <Nop>
let mapleader=" "

" Clipboard copy
noremap <Leader>y "+y
noremap <Leader>p "+p
set clipboard=unnamedplus

" Copy delete paste
noremap <Leader>rw viwp

" -------- coc --------
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" ------- random shit ----------
" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

" Always show statusline
set laststatus=2

