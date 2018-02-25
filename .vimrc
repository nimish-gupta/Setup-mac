call plug#begin('~/.local/share/nvim/plugged')

" Main plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/deoplete.nvim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'

" Color scheme
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

call plug#end()

let mapleader=","
nnoremap ; :

" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>

" Shortcut to source (reload) THIS configuration file after editing it: (s)ource (c)onfiguraiton
nnoremap <silent> <leader>sc :source $MYVIMRC<CR>

" use ff for escape
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap ff <Esc>

set hidden
set history=100

" Whitespace
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" Exclude certain filepaths for ctrlp searching
let g:ctrlp_custom_ignore = {
  \'dir': '\.git$\|build\|node_modules\|dist\|temp'
  \ }

" Highlight found words on search
set hlsearch

" The Cody Gibb replacer special
nnoremap <Leader>sr :.,$s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" The Cody Gibb scroller special
map <c-j> j<c-e>
map <c-k> k<c-y>

" Reopen previously opened file by double tapping Leader key
nnoremap <Leader><Leader> :e#<CR>

" Show matching brackets when text indicator is over them
set showmatch

" Colors
filetype on
syntax on
colorscheme Tomorrow-Night

set colorcolumn=90
set number

" Trigger youcomplete me on . in Typescript
"if !exists("g:ycm_semantic_triggers")
 "let g:ycm_semantic_triggers = {}
 "endif
 "let g:ycm_semantic_triggers['typescript'] = ['.']

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Open NERDTree by default
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open/Close NERDTree
nnoremap <Leader>t :NERDTreeToggle<Enter>
" Close NERDTree after opening file
"let NERDTreeQuitOnOpen = 1
" Show hidden files in NERDTree
let NERDTreeShowHidden=1
