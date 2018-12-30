"""""""""""""""""""""""""""
" Last Modified: 2018/04/29
" Author: mythosil
"""""""""""""""""""""""""""

if &compatible
  set nocompatible
endif

""" dein
let s:dein_dir = expand('~/.vim/bundle')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#add(s:dein_repo_dir)
  call dein#add('vim-scripts/taglist.vim')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('leafgarland/typescript-vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
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

""" cursor line
augroup CursorLine
  autocmd!
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

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

""" skeleton
autocmd BufNewFile *.c 0r $HOME/.vim/template/skeleton.c
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/skeleton.cpp
autocmd BufNewFile *.py 0r $HOME/.vim/template/skeleton.py
autocmd BufNewFile *.html 0r $HOME/.vim/template/skeleton.html
autocmd BufNewFile *.xml 0r $HOME/.vim/template/skeleton.xml
autocmd BufNewFile *.css 0r $HOME/.vim/template/skeleton.css

""" filetype autocmd
autocmd BufNewFile,BufRead *.psgi set filetype=perl
autocmd BufNewFile,BufRead *.ru set filetype=ruby
autocmd BufNewFile,BufRead *.erb set filetype=html
autocmd BufNewFile,BufRead *.ctp set filetype=php
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.gradle set filetype=groovy
autocmd BufNewFile,BufRead *.jelly set filetype=xml
autocmd FileType perl compiler perl
augroup PhpIndent
  autocmd!
  autocmd BufNewFile,BufRead *.php set shiftwidth=4
  autocmd BufNewFile,BufRead *.php set softtabstop=4
  autocmd BufNewFile,BufRead *.php set tabstop=4
augroup END

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
