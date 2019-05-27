" use gui tabs
set guioptions+=e
set mouse=a
set is
set foldmethod=indent
"set number relativenumber
filetype plugin indent on
let python_highlight_all=1
syntax on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set softtabstop=2
set expandtab
set inccommand=nosplit

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

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
  Plug 'zchee/deoplete-jedi'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  "Plug 'garbas/vim-snipmate'
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
  Plug 'vim-scripts/dbext.vim'
  Plug 'vim-scripts/SQLUtilities'
  Plug 'gregsexton/gitv', {'on': ['Gitv']}
  Plug 'c9s/helper.vim'
  Plug 'c9s/treemenu.vim'
  Plug 'c9s/hypergit.vim'
  Plug 'ngmy/vim-rubocop'
  Plug 'myusuf3/numbers.vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'kien/tabman.vim'
  Plug 'ervandew/supertab'
  Plug 'ledger/vim-ledger'
  Plug 'tpope/vim-dispatch'
  Plug 'jamessan/vim-gnupg'
  Plug 'aklt/plantuml-syntax'
  Plug 'tpope/vim-unimpaired'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'ahw/vim-pbcopy'
  Plug 'junegunn/goyo.vim'
  Plug 'nvie/vim-flake8' "syntax checking python
  Plug 'jalvesaq/nvim-r'
  Plug 'jmcantrell/vim-virtualenv'
  Plug 'vim-scripts/indentpython.vim'
  Plug 'wakatime/vim-wakatime'
  Plug 'thaerkh/vim-workspace'

  "color & icon
  Plug 'tomasr/molokai'
  Plug 'morhetz/gruvbox'
  Plug 'nanotech/jellybeans.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'icymind/neosolarized'
  Plug 'maxst/flatcolor'
  Plug 'ryanoasis/vim-devicons'
  Plug 'metakirby5/codi.vim'
  Plug 'inkarkat/vim-mark'
  Plug 'inkarkat/vim-ingo-library'

call plug#end()

let g:strip_whitespace_confirm = 1

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/opt/python/libexec/bin/python'

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

nmap <leader>il :IndentLinesToggle<CR>

"rspec conf
let g:rspec_runner = "os_x_iterm2"
"let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
"let g:rspec_command = "Dispatch rspec {spec}"
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
"vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

"deoplet & multiplecursor bug fixed conf
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

function! RemoveAllNumber()
  execute 'set nonumber'
  execute 'set norelativenumber'
  echo "relative & absolute number hidden"
endfunction

function! ToggleNERDTreeFind()
    if g:NERDTree.IsOpen()
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "rougify {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '40%' })
endfunction

nmap <C-f> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <C-g> :GFiles?<CR>
nmap <C-h><C-h> :History<CR>
nmap <C-m><C-m> :Maps<CR>
nmap <C-c><C-c> :Commands<CR>
"nmap <C-s><C-s> :Snippets<CR>
nmap <C-t> :tabnew<CR>
nmap <C-t><C-c> :tabclose<CR>
nmap <C-g><C-v> :Gitv<CR>
nmap <C-g><C-d> :Gdiff<CR>
nmap <leader>q :q<CR>
nmap <leader>qb :bd<CR>
nnoremap <leader>p :call ToggleNERDTreeFind()<CR>
nnoremap <F2> :call RemoveAllNumber()<CR>
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

"line movement
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

":command Q q
":command W w
":command J %!python -m json.tool "ERROR
"autocmd BufEnter * EnableStripWhitespaceOnSave

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
let g:tablineclosebutton=1
set encoding=UTF-8
set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h11
let g:airline_powerline_fonts = 1

"ledger conf
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
"Number of columns that will be used to display the foldtext. Set this when you think that the amount is too far off to the right.
let g:ledger_maxwidth = 80
"String that will be used to fill the space between account name and amount in the foldtext. Set this to get some kind of lines or visual aid.
let g:ledger_fillstring = '    -'
"If you want the account completion to be sorted by level of detail/depth instead of alphabetical, include the following line:
let g:ledger_detailed_first = 1
"By default vim will fold ledger transactions, leaving surrounding blank lines unfolded. You can use g:ledger_fold_blanks to hide blank lines following a transaction.
let g:ledger_fold_blanks = 0

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" gnupg
let g:GPGUsePipes=0

"function! StartUp()
    "if 0 == argc()
        "NERDTree
    "end
"endfunction

"autocmd VimEnter * call StartUp()

let g:plantuml_executable_script = 'plantuml'

" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>gbl :Gblame<CR>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

let g:vim_pbcopy_local_cmd = "pbcopy"

" margin
fun! ToggleCC()
  if &cc == ''
    set cc=80
  else
    set cc=
  endif
endfun

nnoremap <leader>80 :call ToggleCC()<CR>

let g:workspace_autocreate =1
let g:workspace_session_name = 'Session.vim'
