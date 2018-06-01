" Install Vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-plug installs plugins in this folder:
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'mhartington/oceanic-next'
Plug 'mbbill/undotree'
Plug 'itchyny/vim-cursorword'
call plug#end()
" Now call :PlugInstall in Vim

" Basics
set encoding=UTF-8
syntax on
set number

" Spaces and Tabs
set tabstop=4
set softtabstop=4
set expandtab
" autocmd FileType make   set noexpandtab

" UI
set cursorline
filetype indent on
set showmatch

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Movement
" move vertically by visual line:
nnoremap j gj
nnoremap k gk

" Easier split window navigation with Ctrl+hjkl
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" Cycle between split windows with Ctrl+c
map <C-c> <C-w>w
" Set split behavior to create the new window below/right
set splitbelow
set splitright

" Looks and colors
if (has("termguicolors"))
          " set termguicolors
endif
set t_Co=256

" set background=dark
" set termguicolors
colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" Vim-airline config:
" let g:airline_powerline_fonts = 1
" let g:airline_theme='oceanicnext'
" let g:airline_skip_empty_sections = 1
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'one',
  \ }
