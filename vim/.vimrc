colo default
syntax on

set cursorline

set sc
set number
set mouse=a
set backspace=indent,eol,start

set splitright

set noexpandtab
set tabstop=4
set shiftwidth=4
set smartindent
set smarttab

set wrap
set noerrorbells
set noswapfile
set noshowmode
set laststatus=2
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('$HOME/.vim/plugged')

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'pbondoer/vim-42header'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'puremourning/vimspector'

call plug#end()

set termguicolors
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
colorscheme catppuccin_mocha
set background=dark
let g:rainbow_active = 1

"let g:lightline = { 'colorscheme': 'onehalfdark' }
"colorscheme onehalfdark
