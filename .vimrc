set nocompatible

set number 
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme elflord
set nowrap
set autochdir
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set ignorecase
set smartcase
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx



" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}
call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'

call plug#end()

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map <esc> :noh <CR>
" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

" }}}




