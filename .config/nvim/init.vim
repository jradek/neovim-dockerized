" vim plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'

" Plug 'dracula/vim'
" Plug 'vim-scripts/Zenburn'
" Plug 'morhetz/gruvbox'
" Plug 'sjl/badwolf'
" Plug 'chriskempson/base16-vim'

Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'  " indention lines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}

Plug 'tpope/vim-commentary'  "commenting with gcc command
Plug 'w0rp/ale'

call plug#end()


source $HOME/.config/nvim/general.vimrc
source $HOME/.config/nvim/keys.vimrc
source $HOME/.config/nvim/plugin_conf.vimrc

