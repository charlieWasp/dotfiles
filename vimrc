set nocompatible

runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'mattn/emmet-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'FooSoft/vim-argwrap'
Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'wellle/targets.vim'
Plugin 'kana/vim-textobj-user'
" Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-line'
Plugin 'cohama/lexima.vim'

call vundle#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:indentLine_char = '|'
let g:indentLine_enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:argwrap_tail_comma = 1

syntax enable
set encoding=utf-8
set showcmd
filetype indent plugin on

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

autocmd FileType markdown setlocal colorcolumn= wrap  tw=120
autocmd FileType slim setlocal colorcolumn=120
autocmd FileType coffee iabbrev <buffer> cl console.log
autocmd FileType javascript setlocal tabstop=4 shiftwidth=4
autocmd FileType css setlocal tabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=4 shiftwidth=4
autocmd FileType ruby iabbrev <buffer> dp puts 'TEST' * 100

let mapleader = ","
set modelines=0
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set scrolloff=3
set autoindent
set showmode
set showcmd
set cursorline
set ttyfast
set laststatus=2
set undofile
set ruler
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set number

set splitbelow
set splitright

nnoremap <leader><space> :noh<cr>
nnoremap <Leader>m :CtrlPModified<CR>
nnoremap <Leader>M :CtrlPBranch<CR>
nnoremap tk :tabn<cr>
nnoremap tj :tabp<cr>
nmap <F8> :TagbarToggle<CR>
nnoremap <tab> %
vnoremap <tab> %
vnoremap <C-X> <Esc>`.``gvP``P
nnoremap <CR> o<Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
inoremap оо <ESC>
inoremap <esc> <nop>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>sv :so$MYVIMRC<cr>
nnoremap <c-_> :Commentary<cr>
vnoremap <c-_> :Commentary<cr>
nnoremap Y y$
nnoremap <leader>a :ArgWrap<CR>
nmap <leader>sts ds'i:jj

colorscheme wombat
