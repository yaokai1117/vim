
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu

" use jk instead of esc
inoremap jk <ESC>

" Enable mouse usage
set mouse=a

" Autpmatically save before commands like :next and :make
set autowrite

" Do smart case matching
set smartcase

" Show (partial) command in status line
set showcmd

" using a dark background
set background=dark

" do incremental searching
set incsearch

" highlight search results
set hlsearch

" show the cursor position all the time
set ruler

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set so=7

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

