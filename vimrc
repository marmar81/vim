" --------------------------
" PATHOGEN PLUGIN SETTIGNS 
" --------------------------
"  pathogen commands should be executed before 
"  filetype detection is enabled
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" --------------------------
" MISC
" --------------------------
set linebreak
set foldmethod=indent " more indent means a higher fold level
set foldcolumn=2 " number of spaces used to indicates folds 
set shiftwidth=2 " autoindent uses 2 spaces 
set tabstop=2 " a tabstop is 2 spaces 
set softtabstop=4 
set sw=2
set number " always show line numbers
set ssop-=options	" do not store global and local values in a session 
set ssop-=folds		" do not store folds in a session
filetype plugin on
filetype indent on


set t_Co=256 "required for mustang to work with vim
colorscheme mustang

syntax on
filetype on

" --------------------------
" C file options
" --------------------------

autocmd FileType c setlocal softtabstop=3 shiftwidth=3 expandtab formatprg=astyle\ -A1s3CSNYpjc

" --------------------------
" STATUS LINE
" --------------------------

" enable status line
set laststatus=2

" jamessan's
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


" ----------------------------------------------------
" ----------------------------------------------------
"                   PLUGIN SETTINGS
" ----------------------------------------------------
" ----------------------------------------------------

" --------------------------
"  UltiSnips 
" --------------------------

let g:UltiSnipsEditSplit = 'vertical'

" --------------------------
"  clang_complete 
" --------------------------

let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

" --------------------------
"  vim-latex 
" --------------------------

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = '/home/marcus/opt/texlive/2012/bin/x86_64-linux/pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince'
let g:tex_comment_nospell= 1

" --------------------------
"  BREAKINDENT SETTINGS
" --------------------------

set breakindent 
set showbreak=>..


