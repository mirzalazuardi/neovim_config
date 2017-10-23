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
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
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
Plug 'mkitt/tabline.vim' 
Plug 'freitass/todo.txt-vim'
Plug 'joshcheek/seeing_is_believing'
Plug 't9md/vim-ruby-xmpfilter' 
Plug 'ecomba/vim-ruby-refactoring'
Plug 'thoughtbot/vim-rspec' 

"color
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim' 
Plug 'mhartington/oceanic-next'
Plug 'icymind/neosolarized'
Plug 'maxst/flatcolor' 
call plug#end()

"set background=dark
set termguicolors
colorscheme OceanicNext

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

"powerline symbol
let g:airline_powerline_fonts = 1 

"fzf conf
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o) 
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line) 
" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction 
autocmd! User FzfStatusLine call <SID>fzf_statusline()

"seeing_is_believing conf
" Annotate every line
nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
" Annotate marked lines
nmap <leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
" Remove annotations
nmap <leader>c :%.!seeing_is_believing --clean<CR>;
" Mark the current line for annotation
nmap <leader>m A # => <Esc>
" Mark the highlighted lines for annotation
vmap <leader>m :norm A # => <Esc>

"rspec conf 
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR> 

"ruby refactoring conf
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>
