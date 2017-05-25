set backspace=indent,eol,start
let mapleader="\<Space>"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'vim-scripts/a.vim'
nmap <Leader>a :A<CR>
autocmd VimEnter * iunmap <Space>ihn
autocmd VimEnter * iunmap <Space>ih
autocmd VimEnter * iunmap <Space>is


Bundle 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 0
nmap  <Leader>i :YcmCompleter GoToInclude<CR>
nmap <Leader>d :YcmCompleter GoTo<CR>zt
nmap <Leader>c :YcmCompleter GetType<CR>

Bundle 'majutsushi/tagbar'
nmap <Leader>t :TagbarToggle<CR>

Bundle 'uguu-org/vim-matrix-screensaver'

Bundle 'scrooloose/nerdtree'
nmap <Leader>f :NERDTreeToggle<CR>
let g:NERDTreeWinSize=30

set wildmenu " vim自身命令行模式智能补全
set ruler " 在右下角显示光标当前位置信息
set tabstop=2 " 设置制表符占用空格数
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set ai " 自动缩进
set expandtab " 空格代替tab
set number " 行号显示
set hlsearch " 高亮显示结果
set showcmd " 在命令行显示当前输入的命令
set wrap " 打开折行
set completeopt=longest,menu " 取消补全内容以分割子窗口形式出现，只显示补全列表
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1 "字符编码检测
set textwidth=0 " 关闭自动换行
set laststatus=2
syntax enable " 开启语法高亮功能
syntax on " 允许用指定语法高亮配色方案替换默认方案
filetype on " 开启文件类型侦测
filetype plugin on " 根据侦测到的不同类型加载对应的插件



set encoding=utf-8


" vim-airline
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'
let g:airline_section_z=''
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


Bundle 'altercation/vim-colors-solarized.git'

set background=dark
colorscheme solarized

" move between splits
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

" move between buffers

Bundle 'BufOnly.vim'
nnoremap <Leader>1 :BufOnly<CR>
nnoremap <C-w> :bp\|bd #<CR>
nnoremap <C-k> :bprevious<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-h> :bfirst<CR>
nnoremap <C-l> :blast<CR>

" CtrlP
" open file in project plugin
Bundle 'ctrlp.vim'
nnoremap <Leader>n :CtrlP<CR>

" vim-expand-region
Bundle 'vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" common commands
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>y "+y

vmap <Leader>d "+d

nmap <Leader>p "+p
vmap <Leader>p "+p

nmap <C-f> <C-f><S-m>
nmap <C-d> <C-d><S-m>
nmap <C-b> <C-b><S-m>
nmap <C-u> <C-u><S-m>

" cursor jump to position after pasted word
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" jump with backspace and enter keys
nnoremap <Leader><CR> G
nnoremap <Leader><BS> gg
nnoremap <CR> $
nnoremap <BS> 0

set timeoutlen=1000 ttimeoutlen=0
