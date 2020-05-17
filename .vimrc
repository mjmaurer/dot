set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" ------- vim plug includes -------
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'

call plug#end()

" ------ Google mappings -------
if system('hostname') =~ 'google'
  source ~/googlestuff.vim
endif

" ------ style ----------
set t_Co=256
colorscheme gruvbox
syntax on
set background=dark
" ----- airline -------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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
" gitgutter
nmap H <Plug>GitGutterPrevHunk
nmap L <Plug>GitGutterNextHunk
nmap <Leader>d <Plug>GitGutterPreviewHunk
nmap <Leader>qd :pc<CR>
" ALE
let g:ale_linters_explicit = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

cmap afix ALEFix
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" -------- denite --------

" ------- random shit ----------
" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

" Always show statusline
set laststatus=2

