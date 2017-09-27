

" -----------------------------------------------------------------------------
" Vim settings
" -----------------------------------------------------------------------------

runtime config/**/*.vim
syntax on
filetype plugin indent on

let mapleader=" "
set encoding=utf-8
set nocompatible
set number
set autowrite
set backspace=indent,eol,start
set mouse=a
set hlsearch
set autoindent
set laststatus=2
set noshowmode
set clipboard=unnamedplus

set directory=$HOME/.vim/swap//
set directory=$HOME/.vim/backups//

set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<,space:·
set list

set modeline
set modelines=5

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
let g:python_recommended_style=0

" -----------------------------------------------------------------------------
" GVim settings 
" -----------------------------------------------------------------------------

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L


" -----------------------------------------------------------------------------
" Pathogen
" -----------------------------------------------------------------------------

call pathogen#infect()
call pathogen#helptags()


" -----------------------------------------------------------------------------
" Syntastic
" -----------------------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax enable


" -----------------------------------------------------------------------------
" NERDTree 
" -----------------------------------------------------------------------------

let g:NERDTreeWinSize = 20
let g:NERDTreeDirArrowExpandable = "→"
let g:NERDTreeDirArrowCollapsible = "↓"


" -----------------------------------------------------------------------------
" Easy-Motion
" -----------------------------------------------------------------------------

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1


" -----------------------------------------------------------------------------
" Keybindings
" -----------------------------------------------------------------------------

" j/k to move up/down
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>h <Plug>(easymotion-linebackward)

" s for two chars jump
nmap <Leader>d <plug>(easymotion-s2)

" f for one char jump
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Split configuration
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Copy/Paste - X11
vmap <C-C> "+y
nmap <C-V> "+p

" Tab switching
nmap <TAB> gt
nmap <S-TAB> gT

" -----------------------------------------------------------------------------
" Lightline
" -----------------------------------------------------------------------------

let g:lightline = {'colorscheme' : 'nord'}


" -----------------------------------------------------------------------------
" YouCompleteMe
" -----------------------------------------------------------------------------

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1


" -----------------------------------------------------------------------------
" Omnifunc
" -----------------------------------------------------------------------------

au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS


" -----------------------------------------------------------------------------
" Theme
" -----------------------------------------------------------------------------

" set term=xterm
" set t_Co=16

if has('nvim')
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1
"let g:hybrid_use_Xresources = 1

let g:nord_italic_comments = 1
colorscheme nord
set background=dark
