set showmatch
set ignorecase
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=v
set expandtab
set autoindent
set number
set wildmode=longest,list:full
set encoding=utf-8
set cc=80
syntax on
syntax enable

filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all'}

call plug#end()

"Made Ctrl+s save the document
nnoremap <C-s> :wa<CR>

"Assigns Alt+J/K to move lines down/up
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Nerdtree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Switch tab with Ctrl+Left/Right
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


"Ale linting
nnoremap <A-enter> :ALECodeAction<CR>

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:rustfmt_autosave = 1

let g:airline#extensions#tabline#enabled = 1
