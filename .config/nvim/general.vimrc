
" syntax on

filetype plugin indent on
language en_US

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

set laststatus=2
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac


set list listchars=tab:»·,trail:·,nbsp:·,eol:¬

" color scheme stuff
" set term=xterm-256colors
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
" let base16colorspace=256
let g:solarized_termtrans = 1 " This gets rid of the grey background
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"
" syntax enable
set background=dark
colorscheme solarized
" colorscheme badwolf
" colorscheme gruvbox
" set termguicolors


" other stuff
set number
set relativenumber
" set lazyredraw " this solves slow scrolling because of relative numbering

set smartcase
set smartindent
set showmatch

set incsearch
set hlsearch
set ruler
set cursorline
highlight CursorLine ctermbg=8
highlight Normal ctermbg=NONE

set wildmenu
set wildmode=list:longest,list:full

set backspace=indent,eol,start
