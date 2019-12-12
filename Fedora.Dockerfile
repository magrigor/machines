FROM "fedora"
RUN yum install -y vim mc lynx
RUN echo $'""Created by Dockerfile\n\
command! FixWhitespace :%s/\s\+$//e\n\
set nocompatible\n\
filetype indent plugin on\n\
syntax on\n\
set laststatus=2\n\
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\\ (line\\ %l\\/%L,\\ col\\ %c)\\\n\
set ruler\n\
set number\n\
let no_buffers_menu=1\n\
set encoding=utf-8\n\
set fileencoding=utf-8\n\
set fileencodings=utf-8\n\
set ttyfast\n\
set ma\n\
set incsearch\n\
set hlsearch\n\
set ignorecase\n\
set smartcase\n\
set wildignore+=*/tmp/*,*/node_modules/*,*/dist/*,*.so,*.swp,*.zip\n\
set fileformats=unix,dos,mac\n\
set backspace=indent,eol,start\n\
set autoindent\n\
set confirm\n\
set tabstop=4\n\
set softtabstop=0\n\
set shiftwidth=4\n\
set expandtab\n\
set modeline\n\
set modelines=10\n\
set hidden\n\
set noswapfile\n\
set nobackup\n\
set showcmd\n\
set showmode\n\
set visualbell\n\
set t_vb=\n\
set mouse=a\n'\
>> /root/.vimrc

