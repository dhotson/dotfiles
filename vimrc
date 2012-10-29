call pathogen#infect()
colorscheme jellybeans_pda
set ignorecase
set smartcase
set incsearch
set hlsearch
set smartindent
set scrolloff=3
set number
map <C-o> :CommandT<CR>
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set nowrap
let g:Powerline_symbols = 'fancy'
let g:syntastic_phpcs_disable = 1
set encoding=utf-8
set cursorline
set ttyfast
set ttymouse=xterm2 " Support mouse drag events in tmux
syntax on

autocmd Filetype ruby setlocal et ts=2 sts=2 sw=2 expandtab
autocmd Filetype coffee setlocal et ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2 noexpandtab

" set expandtab
" set tabstop=2
" set softtabstop=2
" set shiftwidth=2

" Leader of '\' is too far from home row.
let mapleader = ";"
let g:mapleader = ";"

""""""""""
" Plugins

" ctrlp.vim
let g:ctrlp_max_height = 16
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 40000

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" CommandT
let g:CommandTMaxHeight = 16
let g:CommandTMaxFiles=40000

" Ack (deliberate trailing whitespace)
nnoremap <leader>a :Ack

" NERDTree
nmap <silent> <leader>n :NERDTreeToggle<CR>
map <leader>- :NERDTreeFind<CR>

set clipboard=unnamed

filetype plugin on

set completeopt+=menuone
set completeopt+=longest

set pumheight=12

set mouse=a

autocmd BufWritePre * :%s/\s\+$//e " automatically kill trailing whitespace

map <leader>v :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set backupdir=~/tmp,/tmp
set directory=~/tmp,/var/tmp,/tmp

" Show options when using :tag blah<tab>
set wildmenu

set splitbelow
set splitright

" Allow unsaved files while switching between files with ctags CommandT etc
set hidden

" Run PHP test case
nnoremap <leader>p :! php ./scripts/test.php %<CR>


" Load .vimrc from working directory if available
set secure
set exrc
