"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

:let mapleader = ","
"activate pathogen
call pathogen#infect()

let g:Powerline_symbols = 'fancy'
" split resizing
:map - <C-W><
:map + <C-W>>

"enable exrc
set exrc
"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

" use tab to jump windows..
map <Tab> <C-w>w

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set number      "show line numbers

"display tabs and trailing spaces
set list

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase " Case-insensitive searching.
set smartcase " But case-sensitive if expression contains a capital letter.

set number " Show line numbers.
set ruler " Show cursor position.

set incsearch " Highlight matches as you type.
set hlsearch " Highlight matches.

set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile

    set colorcolumn=+1 "mark the ideal max text width
endif
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cursorline
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set formatoptions-=o "dont continue comments when pushing o/O
" set cursor highlight..
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256
colorscheme distinguished

"hide buffers when not displayed
set hidden

" " Always show the status line
set laststatus=2
"
" " Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \

" make buffer cycling available
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>
