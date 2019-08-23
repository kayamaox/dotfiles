filetype plugin indent on
syntax on
syntax enable
set autoindent
set backspace=indent,eol,start
set hidden
set hlsearch
set laststatus=2
set noshowmode
set mouse=a
set noundofile
set number
set wildmenu
set autochdir
set termguicolors

let mapleader = ","
let g:SnazzyTransparent = 1
let g:javascript_plugin_flow = 1
let g:rigel_airline = 1
let g:airline_theme = 'rigel'

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'Rigellute/rigel'
Plug 'pangloss/vim-javascript'
Plug 'chr4/nginx.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'angamaiton/vim-snazzy'
Plug 'connorholyday/vim-snazzy'
Plug 'arcticicestudio/nord-vim'
Plug 'mxw/vim-jsx'

call plug#end()

" Theme
try
    colorscheme snazzy
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
let g:lightline = {'colorscheme': 'snazzy'}

" Buffer
nnoremap gb :ls<CR>:b<Space>

" Finder
set path=.,**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *

" CtrlP
let g:ctrlp_show_hidden = 1

" Wildmenu
set wildmode=list:full
set wildignorecase
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*,*/node_modules/**/*
set wildignore+=tags
set wildignore+=*.tar.*