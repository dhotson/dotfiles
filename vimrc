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
" set ttymouse=urxvt " Support mouse drag events in tmux
" set ttymouse=xterm2 " Support mouse drag events in tmux
set ttymouse=sgr " More modern mouse handling for wide screens
syntax on

autocmd Filetype ruby setlocal et ts=2 sts=2 sw=2 expandtab
autocmd Filetype coffee setlocal et ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype python setlocal ts=8 sts=4 expandtab
autocmd Filetype html.twig setlocal ts=2 sts=2 sw=2 expandtab

" au BufRead, BufNewFile *.twig set filetype='html.twig'

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
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_height = 16
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 4000000
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_working_path_mode='r'
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.svn|\.cache|\.assetic|\.build|node_modules|docs)$'

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

" Run PHP / Ruby test case
nnoremap <leader>p :Dispatch phpunit %<CR>
nnoremap <leader>ap :Dispatch phpunit<CR>
nnoremap <leader>c :Dispatch! ctags -R --languages=php<CR>
nnoremap <leader>b :!tmux split-window -l 12 boris<CR>

nnoremap <leader>j :! fixjsstyle %<CR><CR>


" Load .vimrc from working directory if available
set secure
set exrc

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


set colorcolumn=80 " Vertical bar at 80 chars
set modelines=0    " Disable modelines; not used, risk of security exploits.

" Use ack for grepping
set grepprg=ack
set grepformat=%f:%l:%m

" Highlight trailing whitespace etc
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/

" Slime send to tmux
let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" iTerm2 escape codes for changing cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
