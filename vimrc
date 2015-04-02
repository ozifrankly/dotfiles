"NeoBundle Scripts-----------------------------
if has('vim_starting')
if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ozzy/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/ozzy/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle "Valloric/YouCompleteMe"
NeoBundle 'vim-scripts/c.vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'

NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-endwise'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'conormcd/matchindent.vim'

NeoBundle "vim-scripts/vim-coffee-script"
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


let mapleader = ","

syntax on
set hidden

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Highlight searches (use <C-L> to temporarily turn off highlighting; i
" see the mapping of <C-L> below)
set hlsearch


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled,
" keep
 " the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the
" status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
"set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1

" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
 set shiftwidth=2
 set softtabstop=2
 set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=2
set tabstop=2

""""""""""""""
"  NERDTree  "
""""""""""""""

map <leader>n :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc$','\.o$','\~$']

"""""""""""""""""""""""""""""""""""""""
"  Copy and paste to clipbord
""""""""""""""""""""""""""""""""""""""
map <leader>y "*y
map <leader>p "*p


""""""""""""""""""""""""""
"  Tab navagation        "
""""""""""""""""""""""""""

map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tabsplit<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>


noremap <leader>w <C-w>v<c-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


