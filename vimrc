if filereadable("../.vimrc.local")
  source ~/.vimrc.local
endif



execute pathogen#infect()
syntax on
filetype plugin indent on

" Global config
let mapleader = "-"
set shell=/bin/zsh\ -l
set tags=tags;/

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


set tabpagemax=80
set autoindent
set expandtab
set smarttab

set mouse=n

" Folds
set foldmethod=syntax
set foldlevel=99

" Allow for unwritten changes in hidden buffers
set hidden

" Currently commentted out for work
"set softtabstop=softtabstop3
"set tabstop=3
"set shiftwidth=3

inoremap jk <esc>
inoremap kj <esc>
inoremap jj <esc>
inoremap kk <esc>
noremap ; :


" Nerdtree
let NERDTreeHijackNetrw=1


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
nnoremap <leader>e :ls<cr>:edit<Space>#
nnoremap <leader>o :e .<CR>
nnoremap <leader>a :A<CR>
nnoremap <leader><leader> :edit<Space>#<cr>
nnoremap <leader>f :edit<Space>.<cr>

