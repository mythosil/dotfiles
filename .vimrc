"""""""""""""""""""""""""""
" Last Modified: 2020/01/03
" Author: mythosil
"""""""""""""""""""""""""""

if &compatible
  set nocompatible
endif

filetype plugin indent on
syntax enable

""" indent
set autoindent
set cindent
set cinoptions=:1s,p0,t0
set cinwords=if,else,while,do,for,switch,case
set smartindent

""" tab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

""" encoding
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,sjis,euc-jp

""" search
set hlsearch
set ignorecase
set incsearch
set nowrapscan
set smartcase

""" misc
set noexrc
set history=100
set formatoptions=tcqr
set backspace=indent,eol,start
set tags=./tags
set whichwrap=b,s
set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

""" ui
set background=dark
set number
set scrolloff=5
set showmatch
set splitbelow
set splitright
set wildmenu
set visualbell
set cursorline

""" netrw
let g:netrw_liststyle=3

""" TOhtml
let g:use_xhtml=1
let g:html_use_css=1
let g:html_no_pre=1

""" highlight
highlight Search ctermbg=cyan ctermfg=black
highlight Pmenu ctermbg=white ctermfg=black
highlight PmenuSel ctermbg=blue ctermfg=black

""" highlight (vimdiff)
highlight DiffAdd ctermfg=black ctermbg=2
highlight DiffChange ctermfg=black ctermbg=3
highlight DiffDelete ctermfg=black ctermbg=6
highlight DiffText ctermfg=black ctermbg=7

""" filetype autocmd
autocmd BufNewFile,BufRead *.ru set filetype=ruby
autocmd BufNewFile,BufRead *.erb set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.gradle set filetype=groovy

""" omni
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

""" key-mappings
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <C-l> zz
nnoremap <C-[> :pop<CR>
inoremap <C-a> <ESC><S-i>
inoremap <C-e> <ESC><S-a>
inoremap <C-l> <ESC>
inoremap <C-o> <ESC>o
onoremap ) t)
onoremap ( t(
let mapleader = ','

""" vim-markdown
let g:vim_markdown_folding_disabled = 1
