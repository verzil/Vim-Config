"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Improved:
"       plugins are now enabled using [update]vim-plugs [prev]vundle, therefore it is
"       automatically managed
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plugs now
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plugs now  setups
" vim-plugs now  Script
filetype off                  " required

" set the runtime path to include Vundle and initialize
source ~/.vim_runtime/Plugins/plug.vim
let path='~/.vim_runtime/Plugins'
call plug#begin(path)
" let Vundle manage Vundle, required
Plug 'edkolev/tmuxline.vim'
Plug 'Valloric/YouCompleteMe', {'do': './install --all'}
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
Plug 'easymotion/vim-easymotion'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim.git'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'moll/vim-node'
Plug 'maksimr/vim-jsbeautify'
Plug 'sheerun/vim-polyglot'
Plug 'gorodinskiy/vim-coloresque'
Plug 'luochen1990/rainbow'
Plug 'mru.vim'
Plug 'YankRing.vim'
Plug 'zenorocha/dracula-theme/', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline-themes'
Plug 'smancill/conky-syntax.vim'
Plug 'xolox/vim-lua-inspect'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdcommenter'
Plug 'jcfaria/Nvim-R', {'for': 'R'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'vim-utils/vim-man'
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown', {'for': 'md'}
Plug 'JamshedVesuna/vim-markdown-preview', {'for': 'markdown'}
Plug 'sgeb/vim-matlab', {'for': 'matlab'}
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimproc.vim'
Plug 'thinca/vim-unite-history', {'do': 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'ton/vim-bufsurf'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
 "
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



let g:python_host_prog='/usr/bin/python2'

""""""""""""""""""""""""""""""
" => Java Complete
""""""""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-Add)
imap <F4> <Plug>(JavaComplete-Imports-Add)
nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
imap <F5> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
"let g:ctrlp_working_path_mode = 0

"map <leader>j :CtrlP<cr>
"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>

"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
"

""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
map <c-f> :FZF<cr>




""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux vim navigator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

let g:tmux_navigator_save_on_switch = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="badwolf"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#bufferline#enabled = 1
set noshowmode
set cmdheight =1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easy motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)

map <Leader>, <Plug>(easymotion-f)
map <Leader>. <Plug>(easymotion-F)
"nmap s <Plug>(easymotion-s)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow Active
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * colorscheme dracula
autocmd VimEnter * highlight Normal ctermbg=none
autocmd VimEnter * highlight NonText ctermbg=none
autocmd VimEnter * highlight LineNr ctermbg=none


if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

