"""""""""""""""""""""""""""
" Last Modified: 2013/07/01
" Author: mythosil
"""""""""""""""""""""""""""

""" neobundle
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'echo "Sorry, cannot update vimproc binary file in Windows."',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'taglist.vim'
NeoBundle 'sudo.vim'
NeoBundle 'derekwyatt/vim-scala'

""" filetype
syntax on
filetype plugin indent on

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
"set paste
set tags=./tags
set whichwrap=b,s
set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

""" ui
set background=dark
set number
set scrolloff=5
"set showcmd
set showmatch
set splitbelow
set splitright
set wildmenu
set visualbell
set cursorline
augroup cch
  autocmd! cch
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

""" skeleton
autocmd BufNewFile *.c 0r $HOME/.vim/template/skeleton.c
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/skeleton.cpp
autocmd BufNewFile *.pl 0r $HOME/.vim/template/skeleton.pl
autocmd BufNewFile *.psgi 0r $HOME/.vim/template/skeleton.psgi
autocmd BufNewFile *.py 0r $HOME/.vim/template/skeleton.py
autocmd BufNewFile *.html 0r $HOME/.vim/template/skeleton.html
autocmd BufNewFile *.html 0r $HOME/.vim/template/skeleton.xml
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

""" omni
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

""" unite
nnoremap <Space>ub :<C-u>Unite buffer<CR>
nnoremap <Space>uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <Space>ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <Space>uu :<C-u>Unite buffer file_mru<CR>
nnoremap <Space>us :<C-u>Unite snippet<CR>
nnoremap <Space>um :<C-u>Unite mark<CR>

""" neocomplcache
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" Ignore case
let g:neocomplcache_enable_ignore_case = 1
" Buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'php' : $HOME . '/.vim/dict/php.dict'
  \ }
" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Define delimiter patterns
if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns.cpp = ['->', '::']
let g:neocomplcache_delimiter_patterns.php = ['->', '::', '\']
" Define include paths
if !exists('g:neocomplcache_include_paths')
  let g:neocomplcache_include_paths = {}
endif
let g:neocomplcache_include_paths.c = '.,/usr/include,/opt/local/include,/usr/local/include'
let g:neocomplcache_include_paths.cpp = '.,/usr/include,/opt/local/include,/usr/local/include'

""" neocomplcache key-mappings
" <CR>: close popup and save indent.
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  neocomplcache#smart_close_popup()."\<C-h>"
" <C-y>: close popup
inoremap <expr><C-y> neocomplcache#close_popup()
" <C-e>: cancel popup
inoremap <expr><C-e> neocomplcache#cancel_popup()

""" neosnippet
let g:neosnippet#snippets_directory = '~/.vim/snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

""" gist-vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

""" key-mappings
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <C-l> zz
nnoremap <C-[> :pop<CR>
nnoremap <Leader>m :make<CR>
inoremap <C-a> <ESC><S-i>
inoremap <C-e> <ESC><S-a>
inoremap <C-l> <ESC>
inoremap <C-o> <ESC>o
onoremap ) t)
onoremap ( t(

