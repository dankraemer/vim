" #############################################################################
"
" VIM Settings
" 
"  _____                _  __                                   
" |  __ \              | |/ /                                   
" | |  | | __ _ _ __   | ' / _ __ __ _  ___ _ __ ___   ___ _ __ 
" | |  | |/ _` | '_ \  |  < | '__/ _` |/ _ \ '_ ` _ \ / _ \ '__|
" | |__| | (_| | | | | | . \| | | (_| |  __/ | | | | |  __/ |   
" |_____/ \__,_|_| |_| |_|\_\_|  \__,_|\___|_| |_| |_|\___|_|   
"
" Created by: Dan Kraemer  
" (c) 2016
"
" #############################################################################


" -----------------------------------------------------------------------------
" General configurations 
" -----------------------------------------------------------------------------

syntax   on    " Turn on syntax highlightning
filetype on    " Enable File type detection
set number     " Show line numbers
set linebreak  " Split lines. Do not split words 
set t_Co=256
set cursorline

" -----------------------------------------------------------------------------
  " Colors and Themes 
" -----------------------------------------------------------------------------

set laststatus=2        " Show a status line
set background=dark     " Dark background preferred
colorscheme PaperColor  " Nice colorscheme

let g:lightline = { 'colorscheme': 'default' }

" -----------------------------------------------------------------------------
" Spaces and Tabs 
" -----------------------------------------------------------------------------

set tabstop=2      " Width of a <TAB> character
set softtabstop=2  " Number of spaces to be inserted for a <TAB> when editing
set shiftwidth=2   " Number of spaces to insert or remove with identation commands 
set expandtab      " Expand <TAB> to spaces

" -----------------------------------------------------------------------------
" Search 
" -----------------------------------------------------------------------------

set incsearch   " Find next match as we type the search
set hlsearch    " Highlight matches
set ignorecase  " Ignore case then searching ...
set smartcase   " ... unless we type a capital

" -----------------------------------------------------------------------------
" Key Mappings
" -----------------------------------------------------------------------------

nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" -----------------------------------------------------------------------------
" Abreviations 
" -----------------------------------------------------------------------------

ab #i #include <>
ab main int main(int argc, char ** argv)

" -----------------------------------------------------------------------------
"  Cscope configurations 
" -----------------------------------------------------------------------------

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

