if !&compatible
    set nocompatible
endif

" reset augroup
augroup vimrc
    autocmd!
augroup END


" dein settings {{{
" install dein itself automatically
let s:dein_dir = expand('~/.cache/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir . "," . &runtimepath
" read plugins and make cache
let s:toml_file = fnamemodify(expand('<sfile>'), ':h') . '/dein.toml'
let s:lazy_toml_file = fnamemodify(expand('<sfile>'), ':h') . '/dein_lazy.toml'
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml(s:toml_file)
    call dein#load_toml(s:lazy_toml_file, { 'lazy': 1 })
    call dein#end()
    call dein#save_state()
endif
" install plugins
if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}


" options
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set foldmethod=marker
set backup
set hlsearch
set incsearch
set ignorecase
set smartcase
set report=0
set relativenumber
set modeline

" store undo info {{{
if has('persistent_undo')
    set undodir=~/.cache/nvim/undo
    if !isdirectory(&undodir)
        call mkdir(&undodir)
    endif
    set undofile
endif
" }}}

" show space characters {{{
set list
set listchars=trail:_,tab:>\  "
hi ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/
"}}}

let mapleader = "\<Space>"
let localmapleader = "\<Space>"

" swap ; :
nnoremap <silent> ; :
nnoremap <silent> : ;
vnoremap <silent> ; :
vnoremap <silent> : ;

" repeat
nnoremap <silent> ;; :<C-P><CR>
