"load pathogen managed plugins
call pathogen#runtime_append_all_bundles()

syntax on

filetype plugin indent on

if has("gui_running")
  set lines=80
  set guifont=Menlo:h12
  set columns=177
  " highlight current line
  set cursorline
  hi CursorLine cterm=NONE ctermbg=black
  set cmdheight=2
endif

nmap <silent> <Leader>p :NERDTreeToggle<CR>
"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" shortcut to resize viewports
map <C-right> <C-w>10>
map <C-left> <C-w>10<
map <C-up> <C-w>10-
map <C-down> <C-w>10+


set statusline=%f      "tail of the filename
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} "RVM
set statusline+=%{fugitive#statusline()} "Git
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

set guioptions-=T "turn off needless toolbar on gvim/mvim
" Don't show scroll bars in the GUI
set guioptions-=L
set guioptions-=r

set cursorline

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Command-T configuration
let g:CommandTMaxHeight=10
let g:CommandTCancelMap='<Esc>' " commandT cancel with esc key.
