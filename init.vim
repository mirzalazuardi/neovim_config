set number relativenumber
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

"vimplug conf 
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'plasticboy/vim-markdown'
"Plug 'powerline/powerline' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular' 
Plug 'majutsushi/tagbar'
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-rails' 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kien/rainbow_parentheses.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'mattesgroeger/vim-bookmarks' 
Plug 'rking/ag.vim'
Plug 'elzr/vim-json'
Plug 'aquach/vim-http-client' 
Plug 'tpope/vim-repeat'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim' 
call plug#end()

colorscheme jellybeans

"deoplete conf
let g:deoplete#enable_at_startup = 1

"rainbow_parentheses conf
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"indent_guides conf
"let g:indent_guides_enable_on_vim_startup = 1 
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

let g:airline_powerline_fonts = 1 
