
" basic settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd


set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
syntax enable

set expandtab
set tabstop=4
set shiftwidth=2


set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" for vimdiff
set diffopt=internal,filler,algorithm:histogram,indent-heuristic

" no ~files
set noundofile

set backspace=indent,eol,start