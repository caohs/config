let mapleader=" "

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
let &t_ut=''
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



" 打开多个分屏
" sr 新开分屏在右边
" su 新开分屏在上边
" sd 新开分屏在下边
map sr :set splitright<CR>:vsplit<CR>
"map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>
"st 分屏横置
"sv 分屏竖置
map sv <C-w>t<C-w>H
map st <C-w>t<C-w>K

" 标签页
" tu 打开一个新的标签页
" ti 回到上一个标签页
" tn 到达下一个标签页
map tu :tabe<CR>
map ti :-tabnext<CR>
map tn :+tabnext<CR>


map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


map sj 15j
map sk 15k
map sh 15h
map sl 15l



syntax on
set number
set relativenumber
set nocursorcolumn
"set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

noremap = nzz
noremap - Nzz


set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set nocompatible
set history=100
set confirm
set clipboard+=unnamed
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
syntax on
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
set wildmenu
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=5
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar


"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
map . <C-y>
map Q :q<CR>
map s <C-e>
map  :w<CR>
map nh :noh<CR>

map  <C-v>
map R :source $MYVIMRC<CR>
map ; :

set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'
Plug 'wakatime/vim-wakatime'

call plug#end()


" ===
" === interestingwords
" ===
"高亮word
"learder键（空格）f高亮 leader键 F取消所有高亮
" n 查找下一个 N查找上一个
let g:interestingWordsDefaultMappings = 0
let g:interestingWordsRandomiseColors = 1
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
nnoremap <silent> <leader>f :call InterestingWords('n')<cr>
vnoremap <silent> <leader>f :call InterestingWords('v')<cr>
nnoremap <silent> <leader>F :call UncolorAllWords()<cr>

nnoremap <silent> nn :call WordNavigation(1)<cr>
nnoremap <silent> NN :call WordNavigation(0)<cr>




" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

