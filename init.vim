syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set number
set showcmd
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set guioptions=c
set number relativenumber

"omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete


"ALE PLUGIN
let g:ale_javascript_eslint_executable = 'eslint'       
"Nerdtree Toggle Mapping
let g:ale_javascript_eslint_use_global=1
map <C-t> :NERDTreeToggle<CR>

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1             
"Plug-Vim plugin manager

call plug#begin('~/.vim/plugged')
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
    "Emmet Plugin
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'pangloss/vim-javascript'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mxw/vim-jsx'
    Plug 'w0rp/ale'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme gruvbox
let g:AutoPairsFlyMode = 1


"MAXIMIZE GVIM
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif
