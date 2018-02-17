" Vim settings {{{

runtime config/**/*.vim
syntax on
filetype plugin indent on

let mapleader=" "
set encoding=utf-8
set nocompatible
set number
set relativenumber
set autowrite
set backspace=indent,eol,start
set mouse=a
set hlsearch
set autoindent
set laststatus=2
set noshowmode
set clipboard=unnamedplus
set udf

set directory=$HOME/.vim/run/swap//
set backupdir=$HOME/.vim/run/backups//
set udir=$HOME/.vim/run/undo//

set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<,space:·
set list

set modeline
set modelines=5

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
let g:python_recommended_style=0
" }}}

" GVim settings  {{{

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
" }}}

" Pathogen {{{

call pathogen#infect()
call pathogen#helptags()
" }}}

" Syntastic {{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

syntax enable

aug filetypes
    au!
    au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
    au BufNewFile,BufRead *.jr set filetype=java
    au BufNewFile,BufRead *.rs set filetype=rust
    "au BufNewFile,BufRead *.cfy 
aug END

let g:syntastic_rust_checkers = ['cargo']
" }}}

" NERDTree {{{

let g:NERDTreeWinSize = 20
let g:NERDTreeDirArrowExpandable = "→"
let g:NERDTreeDirArrowCollapsible = "↓"
" }}}

" Easy-Motion {{{

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = "asdgklqwertzuiopyxcvbnmfj;"
" }}}

" Keybindings {{{

nnoremap <Leader>o :ls<CR>:b 

" goto definition
nnoremap <Leader>g :YcmCompleter GoTo<CR>

" reopen the file and redraw the screen
nnoremap <Leader>e :e<CR>:redraw!<CR>

" open a new terminal
nnoremap <Leader><CR> :!popem -n 1<CR><CR>

" j/k/l/h movements
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>h <Plug>(easymotion-linebackward)

" s for two chars jump
nmap <Leader>s <Plug>(easymotion-s2)

" f for one char jump
nmap <Leader>f <Plug>(easymotion-s)

nmap <Leader>w <Plug>(easymotion-w)
nmap <Leader>W <Plug>(easymotion-W)
nmap <Leader>b <Plug>(easymotion-b)
nmap <Leader>B <Plug>(easymotion-B)

" Split configuration
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab switching
nnoremap <S-H> gT
nnoremap <S-L> gt

" Copy/Paste - X11
vnoremap <C-C> "+y
nnoremap <C-V> "+p

" Edit init.vim
nnoremap <Leader>ve :tabedit $MYVIMRC<cr>
nnoremap <Leader>vs :source $MYVIMRC<cr>

" Quoting
nnoremap <Leader>qv `>a'<esc>`<i'<esc>
nnoremap <Leader>qw ea'<esc>bi'<esc>
nnoremap <Leader>Qv `>a"<esc>`<i"<esc>
nnoremap <Leader>Qw ea"<esc>bi"<esc>

" Help
nnoremap <a-h> K

" Escape
inoremap hl <esc>
vnoremap hl <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>
" }}}
"
" Commenting {{{

aug commenting
    au!
    au FileType javascript,rust,java,php,c nnoremap <buffer> <leader>c I//<esc>
    au FileType python,bash nnoremap <buffer> <leader>c I#<esc>
    au FileType vim nnoremap <buffer> <leader>c I"<esc>
aug END
" }}}

" Folding {{{

aug folding
    au!
    au FileType vim setlocal foldmethod=marker
aug END
" }}}

" Lightline {{{

let g:lightline = {'colorscheme' : 'glowtham'}
" }}}

" Rust {{{

let g:rustfmt_autosave = 1
" }}}

" YouCompleteMe {{{

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_rust_src_path = '/usr/src/rust/src'
" }}}

" Omnifunc {{{

aug omnifunc
    au!
    au FileType php setl ofu=phpcomplete#CompletePHP
    au FileType ruby,eruby setl ofu=rubycomplete#Complete
    au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
    au FileType c setl ofu=ccomplete#CompleteCpp
    au FileType css setl ofu=csscomplete#CompleteCSS
aug END
" }}}

" Theme {{{

if has('nvim')
    set termguicolors
endif

"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1
"let g:hybrid_use_Xresources = 1

"let g:nord_italic_comments = 1
colorscheme glowtham256
" }}}
