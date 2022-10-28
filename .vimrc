" ---------------------------AUTO RELOAD VIMRC------------------------------
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" --------------------------------GENERAL-----------------------------------
" Set compatibility to Vim only.
set nocompatible

" --------------------------------PLUGINS-----------------------------------

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" -------------------------------COPY PASTE---------------------------------

" Vim's auto indentation feature does not work properly with text copied from 
" outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Sets defaults clipboard to the sustem clipboard
set clipboard=unnamedplus

" -------------------------------TEXT FORMATTING---------------------------

" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to 
" the width of your screen.
set textwidth=79

" Encoding
set encoding=utf-8

" ----------------------------------PYTHON---------------------------------
" Tab key settings
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Convert tab into 4 spaces
set expandtab

" Autoindentation when create function
set autoindent

" Autocomplite
set wildmode=longest,list,full

" ----------------------------------MOUSE------------------------------------

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=8

" Enable mouse selection
set mouse=a

" Speed up scrolling in Vim
set ttyfast

" Fixes common backspace problems
set backspace=indent,eol,start

" ---------------------------------DISPLAY-----------------------------------

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to 
" jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number relativenumber

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Enable incremental search
set incsearch

" Turn on syntax highlighting.
syntax on

set colorcolumn=80

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" -------------------------------KEY BINDS----------------------------------

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Keybind for copy & paste
:vmap <C-S-C> "+y
:vmap <C-S-V> "+p
