" Basic settings

" For Syntax highlighting
set re=0

" Set color scheme
syntax enable
colorscheme default

" Display row number
set number
highlight LineNr ctermbg=lightgray

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Keep 1000 lines of command line history
set history=1000

" Show commands
set showcmd

" Show the cursor position all the time
set ruler
set cursorline
highlight CursorLine cterm=NONE
highlight CursorLineNr cterm=NONE ctermfg=NONE ctermbg=darkgray

" Tab settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent
filetype plugin indent on

" Search settings
set wrapscan
set incsearch
set hlsearch

" Remember cursor position
if has("autocmd")
  augroup vimStartup
    autocmd BufReadPost *
     \ if line("'\"") >= 2 && line("$") && &ft !~# 'commit'
     \ |   exe "normal! g`\""
     \ | endif
  augroup END
endif

" Autocomplete for HTML
augroup autoCompHtml
  autocmd!
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" Plugin
call plug#begin()
  Plug 'github/copilot.vim'
call plug#end()
