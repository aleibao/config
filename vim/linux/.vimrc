"设定是否兼容模式
set nocp
"不显示乌干达儿童提示
set shortmess=atI
"显示行号
set nu
"配色方案
colo desert

"语法高亮
syntax enable
syntax on

filetype plugin indent on "开启插件

"启用管理插件的插件pathogen
execute pathogen#infect()

"字体
set guifont=WenQuanYI\ Micro\ Hei\ Mono\ 12

"无备份
set nobackup
"无转换文件
set noswapfile

"tab键为2个空格
set ts=2
set expandtab
"每层索进2个空格
set sw=2
"自动缩进
set autoindent

"匹配括号高亮
set showmatch

"显示光标和状态行
set ruler

"显示括号配对情况
set magic

"开始折叠
"set foldenable

"设置语法折叠
"set foldmethod=syntax

"设置折叠层数为
setlocal foldlevel=1

"设置工具栏
if has("gui_running")
    set guioptions-=m "隐藏菜单栏
    set guioptions-=T "隐藏工具栏
    set guioptions-=L "隐藏左侧滚动条
    set guioptions-=r "显示右侧滚动条
  "  set showtabline=0 "隐藏Tab栏
endif

syn on "打开代码高亮功能
filetype on "侦测文件类型

"编码字体设置
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,default,chinese,big5,ucs-bom

"处理consle输出乱码
language messages zh_CN.utf-8


"对齐插件Align支持中文
let g:Align_xstrlen=3


" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 行首增加#号注释符
nmap <Leader>g I#<Esc> 
" 行首删除#号注释符
nmap <Leader>b 0x 

" 定义快捷键到行首和行尾
nmap zb 0
nmap ze $
" 寄存器a的快捷键
nmap zyy "ayy
" 寄存器a的快捷键
nmap zyw "ayw
" 寄存器a的快捷键
nmap zp "ap
" 插入当前时间
nmap dt a<C-R>=strftime('%Y-%m-%d %H:%M:%S')<CR><ESC>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记 pair
nmap <Leader>pa %

" 给页签加上序号
set guitablabel=%N.%t

" 页签快捷键
imap <C-tab> :tabnext<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> :tabprevious<cr>
nmap <C-S-tab> :tabprevious<cr>
imap <M-1> <Esc>:tabfirst<cr>
nmap <M-1> :tabfirst<cr>
imap <M-2> <Esc>2gt
nmap <M-2> 2gt
imap <M-3> <Esc>3gt
nmap <M-3> 3gt
imap <M-4> <Esc>4gt
nmap <M-4> 4gt
imap <M-5> <Esc>5gt
nmap <M-5> 5gt
imap <M-6> <Esc>6gt
nmap <M-6> 6gt
imap <M-7> <Esc>7gt
nmap <M-7> 7gt
imap <M-8> <Esc>8gt
nmap <M-8> 8gt
imap <M-9> <Esc>9gt
nmap <M-9> 9gt
imap <M-0> <Esc>:tablast<cr>
nmap <M-0> :tablast<cr>
nmap <C-W> :q<cr>

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全
set wildmenu

ab mymail mingqing.lei@gmail.com
