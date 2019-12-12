FROM "alpine"
RUN apk add --update vim mc 
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
set mouse=a\n\
nnoremap <silent> <leader>sh :terminal<CR>\n\
nnoremap <leader>. :lcd %:p:h<CR>\n\
noremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>\n\
noremap <leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>\n\
nnoremap <silent> <leader>b :Buffers<CR>\n\
nnoremap <silent> <leader>e :FZF -m<CR>\n\
noremap <leader>z :bp<CR>\n\
noremap <leader>q :bp<CR>\n\
noremap <leader>x :bn<CR>\n\
noremap <leader>w :bn<CR>\n\
noremap <leader>c :bd<CR>\n\
noremap <leader>h :<C-u>split<CR>\n\
noremap <leader>v :<C-u>vsplit<CR>\n\
nnoremap <silent> <leader><space> :noh<cr>'\
>> /root/.vimrc