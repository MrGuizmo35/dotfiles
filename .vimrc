" Vundle install
set nocompatible              " be iMproved, required
filetype off                  " required

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
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'altercation/vim-colors-solarized'
syntax enable
set autoindent
set number
set relativenumber
set background=dark
colorscheme badwolf
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
set cursorline
filetype indent plugin on
set hidden
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set laststatus=2
set confirm
"set visualbell
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
let mapleader=","
"code folding
nnoremap <space> za
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax

nnoremap <leader>s :mksession!<CR>

set ruler
set ignorecase
set smartcase

Plugin 'christoomey/vim-tmux-navigator'

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

Plugin 'benmills/vimux'

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Add Tagbar here "
 Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

 "set autochdir
 " set tags to .tags file
 set tags=.tags;

 " Allow find in all subderictories
 set path+=**
 
 " Syntastic plugin
 Plugin 'scrooloose/syntastic'

 " Syntastic recommended settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"Vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
