set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Fix idendation for python
Plugin 'vim-scripts/indentpython.vim'
" Dir tree
Plugin 'scrooloose/nerdtree'
"Auto-completion
Bundle 'Valloric/YouCompleteMe'
" Syntax checking
Plugin 'vim-syntastic/syntastic'
" Pep8 checks
Plugin 'nvie/vim-flake8'
" Colorscheme
Plugin 'jnurmine/Zenburn'
" PowerLine
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" CtrlP (file/buffer finder)
Plugin 'ctrlpvim/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Add proper PEP8 indendation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set cc=80

" Set leader key
let mapleader = " "

" Turn on line numbering
set nu

" Set colorcolumn to gray
highlight ColorColumn ctermbg=DarkGray

"Autocomplection
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable syntax checks
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["python", "flake8"]

" Set color scheme
set t_Co=256
let g:zenburn_high_Contrast = 1 
colorscheme zenburn

" Powerline
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2

" Add shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Show buffers
set showtabline=2

" Show what's under tab when opening files
set wildmenu

" Show syntax errors on <space>E
map <leader>e :Errors<CR>
