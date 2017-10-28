set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/command-t'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'henrik/vim-indexed-search'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


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
" Put your non-Plugin stuff after this linek


" Global config
let mapleader = "-"
set shell=/bin/zsh\ -l

set background=dark

set nu
set cursorline

" Show information at screen bottom
set laststatus=2
set ruler
set rulerformat=%-14.(%l,%c%V%)\ %P
" Active colors
hi StatusLine   ctermfg=lightcyan ctermbg=darkgrey cterm=bold 
" Inactive colors
hi StatusLineNC ctermfg=grey ctermbg=darkgrey cterm=bold

" Quality of life
set nowrap
set backspace=indent,eol,start

set wildmode=longest,list,full
set wildmenu

set textwidth=80
set tabpagemax=80
set autoindent
set expandtab
set smarttab

set noswapfile
set mouse=

" Folds
set foldmethod=syntax
set foldlevel=0

" Allow for unwritten changes in hidden buffers
set hidden

set softtabstop=2
set tabstop=2
set shiftwidth=2

inoremap jk <esc>
" inoremap kj <esc> someone has this in their username :'(
inoremap jj <esc>
inoremap kk <esc>
noremap ; :

let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Nerdtree
let NERDTreeHijackNetrw=1

map <C-n> :NERDTreeToggle<CR>


" :bk -> buffer kill, delete this buffer and replace 
"                     the window contents with that 
"                     of the previous buffer 
"                     (removes entry from ls)
cnoreabbrev <expr> bk ((getcmdtype() is# ':' && getcmdline() is#'bk')?('bp\|bd #<cr>'):('bk'))

" Command to toggle spell highlighting
if !exists(':Son')
  command Son set spelllang=en_ca spell
  command Soff set nospell
endif

" allow ctrl-w to act normaly in insert mode, 
inoremap <C-w><C-w> <esc><C-w><C-w>

" resource vimrc
nnoremap <leader>s :source<Space>$MYVIMRC<cr>
nnoremap <leader>e :CommandTBuffer<cr>
nnoremap <leader>o :e .<CR>
nnoremap <leader>a :A<CR>
nnoremap <leader><leader> :edit<Space>#<cr>
nnoremap <leader>f :edit<Space>.<cr>

