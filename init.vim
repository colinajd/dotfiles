call plug#begin('~/.local/share/nvim/plugged')

" golang plugin
Plug 'fatih/vim-go'

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" start screen
Plug 'mhinz/vim-startify'

" colour scheme
Plug 'flazz/vim-colorschemes'

" vim polygot
Plug 'sheerun/vim-polyglot'

" vue plugin
Plug 'posva/vim-vue'

" aysnc linter
Plug 'w0rp/ale'

let &runtimepath.=',~/.local/share/nvim/plugged/ale'

Plug 'sbdchd/neoformat'

call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype off
syntax on

set t_Co=256
colo madeofcode

autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
