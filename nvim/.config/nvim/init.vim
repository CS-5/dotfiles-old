"""""""""""""
"  Plugins  "
"""""""""""""
let g:polyglot_disabled = ['go']

call plug#begin()
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'sheerun/vim-polyglot'
call plug#end()

"""""""""""""
"    Go     "
"""""""""""""
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_template_autocreate = 0
let g:tagbar_width = 66

"""""""""""""
"   Misc    "
"""""""""""""
filetype plugin indent on
syntax on          " Syntax highlighting
set number         " Line numbering
set ruler          " Line at the bottom
set title          " Terminal title == filename
set expandtab      " Spaces instead of tabs
set shiftwidth=4   " 4-space tabs
set tabstop=4      " 4-space indent
set incsearch      " Highlight first matches of search
set hlsearch       " Highlight all matches
set ignorecase     " Ignore case when searching
set smartcase      " SmartCase when searching
set belloff=all    " Disable Bell
set colorcolumn=80 " Vertical Ruler


"""""""""""""
"   Keys    "
"""""""""""""
let mapleader="\<M>"

  " :GoTest
  "   "
  "   autocmd FileType go nmap <Leader>t <Plug>(go-test)
  "   autocmd FileType go nmap <Leader>r <Plug>(go-run)
  "   autocmd FileType go nmap <Leader>d <Plug>(go-doc)
