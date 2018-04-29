" Install Vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-plug installs plugins in this folder:
call plug#begin('~/.vim/plugged')
        Plug 'sheerun/vim-polyglot'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
        Plug 'dracula/vim', { 'as': 'dracula' }
	" Plug 'joshdick/onedark.vim'
	" Plug 'chriskempson/tomorrow-theme'
	" Plug 'chriskempson/base16-vim'
	Plug 'mhartington/oceanic-next'
	Plug 'skielbasa/vim-material-monokai'
	Plug 'hzchirs/vim-material'
        Plug 'dikiaap/minimalist'
call plug#end()
" Now call :PlugInstall in Vim

syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
if (has("termguicolors"))
"  set termguicolors
endif
" syntax enable
" set t_Co=256

" set background=dark
" set termguicolors
" colorscheme OceanicNext
" colorscheme dracula
colorscheme OceanicNext

" Vim-airline config:
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline_skip_empty_sections = 1
