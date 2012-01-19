call pathogen#infect()     " pathogen
call pathogen#helptags()   " call this when installing new plugins

filetype plugin indent on  " Automatically detect filetypes
"set nocompatible
syntax on                  " Turn on synax highlighting
set autochdir              " Automatically use the current file's directory as the working directory

:let g:xml_syntax_folding = 1
:set foldmethod=syntax

set t_Co=256
colorscheme mango

set tabpagemax=15          " Only show 15 tabs
set showmode               " display the current mode
set cursorline             " Background highlight current line

if has ('statusline')
    set laststatus=2                                                         "  Always show the status line

    set statusline=%<%f\                                                     "  Filename
    set statusline+=\ [%{getcwd()}]                                          "  Current dir
    set statusline+=%w%h%m%r                                                 "  Options
    "set statusline+=%{fugitive#statusline()}                                "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]                                            "  Filetype
    "set statusline+=\ [%{strftime(\" %l:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}]\  "  Current time
    "set statusline+=\ [A=\%03.3b/H=\%02.2B]                                 "  ASCII / Hexadecimal value of char
    set statusline+=[tabs=%{&ts}]
    set statusline+=%=%-14.(line:%l,col:%c%V%)\ %p%%                         "  Right aligned file nav info
endif

set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername} " nice title
set backspace=indent,eol,start            " Intuitive backspace
set number                                " Show line numbers
set showmatch                             " Show matching brackets / parens
set incsearch                             " Find as you type search
set hlsearch                              " Highlight search
set ignorecase                            " Case insensitive search
set smartcase                             " But case-sensitive if expression contains a capital letter
"set gdefault                              " The /g flag on :s substitutions by default

"set smartindent  "  Do smart autoindenting when starting a new line. Works for C-like programs.
"set autoindent   "  Indent at same level as previous line
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"imap <C-SPACE> <ESC>
imap <C-;> <ESC>

nnoremap ; :
nnoremap <CR> :noh<CR>
nnoremap <SPACE> za
nnoremap nt :NERDTreeToggle

"bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

au FileType xhtml set syntax=xml
