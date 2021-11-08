call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-easy-align'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'edkolev/tmuxline.vim'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Intellisense and code completion with syntax highlighting
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-tsserver']

  Plug 'airblade/vim-gitgutter'

  Plug 'stephpy/vim-yaml'

" FuzzyFinder (для быстрого поиска)
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" NERDTree - быстрый просмотр файлов
  Plug 'preservim/nerdtree'
" Дополнения для NERDTree
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ryanoasis/vim-devicons'

" Темы
  Plug 'KeitaNakamura/neodark.vim'
" Проверка Синтаксиса
  Plug 'scrooloose/syntastic' 
" Поддержка Python
  Plug 'klen/python-mode'
call plug#end()

set showcmd
set cmdheight=1
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set et
set ai
set si
set history=700
set autoread
set so=7
set lazyredraw
set ignorecase
set smartcase
set hlsearch
set incsearch

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set timeoutlen=1000 ttimeoutlen=1

" Use persistent history
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs


" Figure out the system Python for Neovim.
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"set nocompatible
"set t_Co=256

" Делаем линейку для отображения на какой мы строке и сколько расстояния до
" других строк в **NeoVim**
"set number
"set ruler

" Комбинация клавиш jkl - действует как Escape в режиме Insert
inoremap jkl <ESC>

" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

" В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

let g:airline_enable_syntastic=1
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

syntax on
colorscheme neodark
