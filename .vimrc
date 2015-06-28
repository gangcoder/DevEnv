" 修改leader键
let mapleader = ','
let g:mapleader = ','

"leader 配置快捷键{
"按,w保存文件
nmap <leader>w :w<CR>
"按,ev打开配置文件
nmap <silent> <leader>ev :e $MYVIMRC<CR>
"}

"exec 配置快捷键执行当前文件{
"按,p用PHP执行当前文件
nmap <leader>p :!php -f %<CR>
"按,l用lua执行当前文件
nmap <leader>l :!lua %<CR>
"按,y用python执行当前文件
nmap <leader>y :!python %<CR>
"}

"插件快捷键{
"}

"重映射ESC为jk
inoremap jk <ESC>

filetype plugin indent on
syntax on
filetype on "文件类型自动检测

set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

"ctag {
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"}

"tagbar{
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>
"}

"taglist{
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1 
nmap <F7> :TlistToggle<CR>
"}

" cursor 突出显示{
"set cursorcolumn
set cursorline          " 突出显示当前行
"}

"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
"好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=

"- 则点击光标不会换,用于复制
set mouse-=a             " 鼠标暂不启用, 键盘党....

" 去掉输入错误的提示声音
set title                " change the terminal's title
set novisualbell         " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

" For regular expressions turn magic on
set magic

" 设置新文件的编码为 UTF-8{
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B
"}

"Smart way to move between windows 分屏窗口移动{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"}

"create undo file{
if has('persistent_undo')
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set undofile                " So is persistent undo ...
set undodir=/tmp/vimundo/
endif
"}

"设置主题 theme{
set t_Co=256
colorscheme defaultconf
set background=light
"}

" 代码折叠{
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99
" 代码折叠自定义快捷键
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
if g:FoldMethod == 0
    exe "normal! zM"
    let g:FoldMethod = 1
else
    exe "normal! zR"
    let g:FoldMethod = 0
endif
endfun
"}

set number "显示序号
set nowrap "设置不自动折行

"tab 设置{
set tabstop=4 "设置tab为4
set shiftwidth=4
set softtabstop=4
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
"}

" 缩进配置{
set smartindent "设置智能对齐"
set autoindent "设置自动对齐
"}

"自动匹配{
set showmatch "括号匹配模式"
" How many tenths of a second to blink when matching brackets
set matchtime=2
"}

set ruler "显示状态行
""在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

set laststatus=2 "总是显示状态行
set autoread "文件在Vim之外修改过，自动重新读入

set nobackup "不要备份文件

set clipboard=unnamed "共享剪切板

" A buffer becomes hidden when it is abandoned{
set hidden
set wildmode=list:longest
set ttyfast
"}

" search 设置文内智能搜索提示{
" 高亮search命中的文本。
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
"}

"pathogen 插件配置{
execute pathogen#infect()
"}

"设置标题栏主题 powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

" NERDTree 设置{
autocmd vimenter * NERDTree " 设置开启时加载
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"}

" YCM 配置{
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'

" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'
"}

"indent{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1 
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'taglist'] "插件忽略列表
"}

"indentLine{
let g:indentLine_enabled = 0
"let g:indentLine_color_term = 239
"let g:indentLine_char = '|'
"}

"EasyAlign{
"Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"}

"ctrlP {
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"nmap <leader>f :CtrlP<CR>
"}

"ultisnips{
" Track the engine.  Plugin 'SirVer/ultisnips'

"Snippets are separated from the engine. Add this if you want them: Plugin 'honza/vim-snippets'

"Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/vim-snippets/UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/ultisnips/mysnip' "自定义保存路径
let g:UltiSnipsExpandTrigger="<leader><tab>"

"If you want :UltiSnipsEdit to split your window.  let g:UltiSnipsEditSplit="vertical"

"}
