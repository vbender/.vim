filetype on
"set nocompatible          

" -------------------------------
" PLUGINS (VUNDLE) --------------
" -------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe' 
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'
Plugin 'sirver/ultisnips' 
Plugin 'honza/vim-snippets'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'Yggdroot/indentLine'
"Plugin 'psliwka/vim-smoothie'
"Plugin 'ervandew/supertab'
"Plugin 'severin-lemaignan/vim-minimap'
"Plugin 'Lokaltog/powerline'
"Plugin 'arielrossanigo/dir-configs-override.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'powerline/powerline'
"Plugin 'powerline/fonts'
"Plugin 'fisadev/vim-ctrlp-cmdpalette'
"Plugin 'mattn/emmet-vim'
"Plugin 'motemen/git-vim'
"Plugin 'kien/tabman.vim'
"Plugin 'fisadev/fisa-vim-colorscheme'
"Plugin 'rosenfeld/conque-term'
"Plugin 'fisadev/FixedTaskList.vim'
"Plugin 'tpope/vim-surround'
"Plugin 'Townk/vim-autoclose'
"Plugin 'michaeljsmith/vim-indent-object'
"Plugin 'jeetsukumaran/vim-indentwise'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'mhinz/vim-signify'
"" Plugin 'fisadev/vim-isort'
"Plugin 'fisadev/dragvisuals.vim'
"Plugin 't9md/vim-choosewin'
"Plugin 'scrooloose/syntastic'
"Plugin 'lilydjwg/colorizer'
"Plugin 'mileszs/ack.vim'
"Plugin 'pignacio/vim-yapf-format'
"Plugin 'vim-scripts/IndexedSearch'
"Plugin 'vim-scripts/matchit.zip'
"Plugin 'vim-scripts/Wombat'
"Plugin 'vim-scripts/Yanking.vim'

call vundle#end()           
filetype plugin indent on    


" -------------------------------
" SETTINGS ----------------------
"" -------------------------------
syntax on
set modelines=0
set number
set relativenumber
set ruler
set visualbell
set encoding=utf-8
set wrap
set textwidth=4000
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set hidden
set ttyfast
set laststatus=2
set showmode
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set listchars=tab:▸\ ,eol:¬
set foldmethod=indent
set foldlevel=99
set t_Co=256
set spell
set spelllang=en_us



" -------------------------------
" PLUGIN OPTIONS ----------------
" -------------------------------
" Gruvbox settings
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_light = 'hard'

" set missspelling background
hi clear SpellBad
hi SpellBad ctermfg=015 ctermbg=124 cterm=none guifg=#FFFFFF guibg=#000000 gui=none



" YouCompleteMe settings
let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

" Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsExpandTrigger = '<C-i>'

let g:UltiSnipsJumpForwardTrigger = '<C-m>'
let g:UltiSnipsJumpBackwardTrigger = '<C-n>'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

""let g:minimap_show='<leader>ms'
""let g:minimap_update='<leader>mu'
""let g:minimap_close='<leader>gc'
""let g:minimap_toggle='<leader>gt'
"
"" -------------------------------
"" Functions ---------------------
"" -------------------------------
"" -------------------------------
"" REMAPPINGS --------------------
"" -------------------------------


map <leader>l :set list!<CR> " Toggle tabs and EOL

let mapleader="\<Space>"

nnoremap j gj
nnoremap k gk
nnoremap <space> za

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
nnoremap <buffer> <F9> :w<cr> :exec '!python3.11' shellescape(@%, 1)<cr>

nnoremap <leader>- <c-w><<c-w><<c-w><<c-w><<c-w><<c-w><<c-w><<c-w><
nnoremap <leader>+ <c-w>><c-w>><c-w>><c-w>><c-w>><c-w>><c-w>><c-w>>
"" nnoremap <leader>j <c-v>}kI#<esc>x
"" nnoremap <leader>k k<c-v>{I#<esc>
nnoremap <leader>v :vsplit<CR><C-w>w
nnoremap <leader>c :split<CR><C-w>j
nnoremap <leader>w <C-w>w
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>q :q<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>n n@:
nnoremap <leader>b :b#<CR>
nnoremap <leader>s mp[s1z=`p
"noremap <leader>so :w<CR> :source vimrc<CR>

"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}
"
"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((     (
"inoremap ()     ()
