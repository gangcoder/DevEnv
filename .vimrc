"重映射ESC为jk
inoremap jk <ESC>

filetype plugin indent on
syntax on
filetype on "文件类型自动检测

"set omnifunc=phpcomplete#CompletePHP "设置自动补全
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"colorscheme grb256 
colorscheme evening
set foldmethod=syntax "代码折叠

set encoding=utf-8 "设置字符集
set helplang=cn "设置帮助为中文
set number "显示序号

set nowrap "设置不自动折行
set smartindent "设置智能对齐"
set incsearch
set tabstop=4 "设置tab为4
set shiftwidth=4
set softtabstop=4
set autoindent "设置自动对齐

set showmatch "括号匹配模式"
set ruler "显示状态行

set laststatus=2 "总是显示状态行

"set autoread "文件在Vim之外修改过，自动重新读入

set fileencoding=utf-8 "使用utf-8打开文件

set nobackup "不要备份文件

"set clipboard+=unnamed "共享剪切板

"pathogen 插件配置{
execute pathogen#infect()
"}

"设置标题栏主题 powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
