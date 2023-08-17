set number
syntax enable
set mouse=a
colorscheme gruvbox
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>
set wrap
set ruler
set laststatus=2
set incsearch
set hlsearch
set cursorline
set showmatch
filetype plugin indent on
set wildmenu
set wildmode=list:longest,full
set relativenumber
set clipboard=unnamedplus
set mouse=a
set statusline=%<%F%h%m%r%=%-14.(%l,%c%V%)\ %P
set undofile
if has("termguicolors")
    set termguicolors
endif
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
call plug#end()
let g:AutoPairsMapSpace = 0
let g:AutoPairsMapCR = 0
map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-python',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-tsserver',
    \ 'coc-markdownlint',
    \ ]
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'javascript': ['eslint'],
    \ }
let g:fugitive_git_executable = 'git'
autocmd VimEnter * NERDTree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree' | q | endif
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>ep :ALEPrevious<CR>
nmap <silent> <leader>en :ALENext<CR>
nmap <silent> <leader>eb :ALEToggle<CR>
