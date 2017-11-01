set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



"
Plugin 'crusoexia/vim-dracula'
Plugin 'vim-airline/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/tComment'
Plugin 'scrooloose/syntastic'

"
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamed


" store backup and swp files in these dirs to not clutter working dir
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"vim-solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
set t_Co=256   
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
if has('gui_running')
    set background=light
else
    set background=dark
endif


"let g:dracula_italic = 1
"colorscheme flattened_dark
"colorscheme plumber-dark
"colorscheme molokai
"colorscheme dracula
"colorscheme distinguished
"highlight Comment cterm=bold

"Scroll by mouse
set mouse=a
" General defaults
set tabstop=4     " a tab is four spaces
set softtabstop=4
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set expandtab     " use appropriate number of spaces when tabbing
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000  " remember more commands and search history
set undolevels=1000
                  " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title         " change the terminal's title
set ruler         " show the cursor position all the time
set pastetoggle=<F2>
                  " toggle paste mode
set nonumber      " dont show line numbers, for python mode
"set wrap          " wrap long lines, for python mode
nmap <f3> :set number! number?<cr>
                  " toggle showing line numbers
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
                  " highlight whitespace
nmap <silent> <Leader>/ :nohlsearch <CR>
                  " unhighlight search
set viminfo='20,\"50
                  " Tell vim to remember certain things when we exit
set hidden        " allow buffers to be hidden
set wildmode=longest,list,full
set wildmenu

set backupdir=~/.vim/backup
set directory=~/.vim/tmp
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

let g:vim_json_syntax_conceal = 0
autocmd BufNewFile,BufRead *.json set ft=javascript

" SyntasticCheck
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['flake8', 'pep8', 'pyflakes', 'pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
