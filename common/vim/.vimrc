set noeb vb t_vb=
set shortmess+=I
set autochdir

set nocompatible

" --- Vundle ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'adlawson/vim-sorcerer'
Plugin 'sjl/badwolf'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpenguinltg/vim-closing-brackets'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-rooter'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'vim-scripts/SelectBuf'
Plugin 'qpkorr/vim-bufkill'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'maralla/completor.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'
Plugin 'vhdirk/vim-cmake'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'letorbi/vim-colors-borland'
Plugin 'OrangeT/vim-csharp'

call vundle#end()
" --- Vundle ---

filetype plugin indent on

" --- Scheme ---
syntax on
colorscheme badwolf

let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
" --- Scheme ---

" --- Settings ---
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamedplus
set copyindent
set cursorline
set enc=utf-8
set expandtab
set fenc=utf-8
set foldmarker=/**,*/
set foldmethod=marker
set gdefault
set hidden
set history=1000
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\ \ ,trail:·
set nobackup
set noshowmode
set noswapfile
set nowrap
set number
set relativenumber
set ruler
set scrolloff=999
set shiftround
set shiftwidth=4
set showcmd
set softtabstop=4
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=4
set timeout timeoutlen=1000 ttimeoutlen=100
set undodir=~/.vim/vimfiles/undo
set undofile
set undolevels=1000
set wildmenu
set wildmode=list:longest,list:full

" --- Keyboard ---
let mapleader="\<Space>"

nnoremap ; :

imap <silent> jj <Esc>

nmap <F1> <nop>
imap <F1> <nop>
vmap <F1> <nop>

nmap <silent> <F2> :w<CR>
imap <silent> <F2> <Esc>:w<CR>
vmap <silent> <F2> <Esc>:w<CR>

map <silent> <F7> :set hlsearch!<CR>

nmap <silent> <F8> :AsyncRun -cwd=<root> make<CR><C-l>
nmap <silent> <F9> :AsyncRun -cwd=<root> ./run.sh<CR>

nnoremap ' `
nnoremap ` '

nmap B ^
vmap B ^
nmap E $
nmap E $

nnoremap Y y$

nmap <CR> G

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <C-j> 10j
nmap <C-k> 10k

map <silent> <Left> <Plug>(ale_previous_wrap)
map <silent> <Right> <Plug>(ale_next_wrap)

nmap <Leader>l <C-W><C-L>
nmap <Leader>h <C-W><C-H>
nmap <C-h> <C-W><C-j>
nmap <C-l> <C-W><C-k>

nmap <silent> <Leader>t :enew<CR>
nmap <silent> <Leader>k :bnext<CR>
nmap <silent> <Leader>j :bprevious<CR>
nmap <silent> <Leader>q :BD!<CR>
nmap <silent> <Leader>w :ccl<CR>

nnoremap j gj
nnoremap k gk

nmap <C-o> o<Esc>ko
imap <C-o> <Esc>o<Esc>ko

" nmap <silent> <C-Z> <Esc>:set foldmarker=/**,*/<CR>:set foldmethod=marker<CR>

nmap <Tab> %

nmap <Leader>= <C-W>=

nnoremap <Leader>v V`]
" --- Keyboard ---

" --- Airline ---
" let g:airline_theme='lucius'
" let g:airline_theme='papercolor'
let g:airline_theme='nord'

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#rith_sep=''
let g:airline#extensions#bufferline#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

let g:airline_section_y=''
" --- Airline ---

" --- AsyncRun ---
let g:asyncrun_open = 30
" --- AsyncRun ---

" --- fzf ---
nmap <F1> :Files<CR>
let g:fzf_layout = { 'down': '~20%' }
" --- fzf ---

" --- ack.vim ---
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
" --- ack.vim ---

" --- SelectBuf ---
let g:selBufAlwaysHideBufNums = 1
let g:selBufAlwaysShowPaths = 0
" --- SelectBuf ---

" --- Completor ---
let g:completor_clang_binary = '/usr/bin/clang++'
let g:completor_python_binary = '/usr/bin/python'

let g:completor_auto_trigger = 1
let g:completor_completion_delay = 160
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>  pumvisible() ? "\<C-y>" : "\<cr>"
" --- Completor ---

" --- Clang Complete ---
let g:clang_library_path='/usr/lib'
" --- Clang Complete ---

" --- Tagbar ---
map <F4> :TagbarToggle<CR>
" --- Tagbar ---

highlight ColorColumn ctermbg=2
match ColorColumn /\%121v\s*\S/
