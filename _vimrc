call pathogen#infect()
set nocompatible
set fileformats=unix,dos

set runtimepath^=~/vimfiles/bundle/ctrlp.vim

set backspace=indent,eol,start

syntax on
set background=light
let g:solarized_italic=0
colorscheme solarized

filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smartindent
set colorcolumn=80
set cursorline
"colorscheme koehler

set history=10000

set hlsearch
set incsearch

" Ctrl-s to save
nnoremap <C-s> :w<cr>
inoremap <C-s> <Esc>:w<cr>

set number
set ruler

set list
set listchars=tab:>\ ,eol:¬,nbsp:.

" for training purposes
inoremap <Esc> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

" ctags
nnoremap <F3> <C-]>

" propose replacing [XX_YYY] with ['XX_YYY']
nnoremap <F12> yi[:%s/\[<C-r>"\]/['<C-r>"']/gc<CR>

" move current line down
noremap - ddp
" move current line up
noremap _ ddkP

" uppercase current word with Ctrl+u
inoremap <c-u> <esc>viwUi

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>c yyp<c-a>wdei
nnoremap <leader>d :bd<cr>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>h "=strftime("%Hh%M")<CR>P>>EA
vnoremap <leader>i xiisset(<Esc>pa) ? <Esc>pa : null<Esc>
nnoremap <leader>j <C-W><C-W><C-F><C-W><C-W>
nnoremap <leader>k <C-W><C-W><C-B><C-W><C-W>
nnoremap <leader>l :!php -l %<cr>
nnoremap <leader>m :!mocha --compilers coffee:coffee-script %<cr>
nnoremap <leader>o o<Esc>"=strftime("%Hh%M")<CR>p>>A<Space>
nnoremap <leader>O O<Esc>"=strftime("%Hh%M")<CR>p>>A<Space>
nnoremap <leader>p "*p
nnoremap <leader>P "*P
nnoremap <leader>sa ggVG"*y<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>t :!phpunit %<cr>
nnoremap <leader>w i <Esc>la <Esc>h
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
vnoremap <leader>y "*y
nnoremap <leader><Space> :nohls<cr>

cnoremap %% <C-R>=expand('%:h').'/'<cr>

inoremap jk <Esc>

" juste an example, not using it
iabbrev psf public static function()<cr>{<cr>}<Esc>:?(<cr>:nohls<cr>wweli

au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab

set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

" maximize gvim window when opening, works on windows 7, french
au GUIEnter * simalt ~n
