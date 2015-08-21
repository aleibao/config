"{{{1  安装插件 管理插件
set nocompatible "关闭兼容模式

filetype off     "文件类型检测

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree.git'
Plugin 'mattn/emmet-vim'
Plugin 'file:///home/alei/.vim//bundle/Alei'
call vundle#end() 

filetype plugin indent on "开启插件

let g:Align_xstrlen=3     "对齐插件Align支持中文


"{{{1  基本设置 显示行号 配色 大小写敏感 快捷键前缀
set nobackup   " 无备份
set nu         " 显示行号
color desert   " 配色方案
syntax on      " 开启语法高亮
syntax enable  " 保持语法高亮
filetype on    " 侦测文件类型
set incsearch  " 开启实时搜索功能
set ignorecase " 搜索时大小写不敏感
set wildmenu   " vim 自身命令行模式智能补全
set autochdir  " 切换到当前文件所在路径

let mapleader=";"      "定义快捷键的前缀，即<Leader>
let maplocalleader="]" "定义localleader前缀

"{{{1  <Leader>r系列快捷键 编辑配置文件 新建SQL 复制当前文件名 递增赋值等
" 编辑vimrc
noremap <Leader>rc :tabnew $MYVIMRC<cr>
noremap <leader>rn :tabnew tmp.sql<CR>

" 新建SQL文件
noremap <leader>rw :w ~/space/<C-R>=strftime('%Y%m%d%H%M')<CR>_雷明庆_
" 切换到下一缓存文件
noremap <leader>re :e! #<cr>
" 复制当前文件的相对文件名
noremap <leader>rp :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
" 复制当前文件的绝对文件名
noremap <leader>ro :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
" 递增赋值
noremap <leader>rl :let i=1 \| g/&&/s//\=i/ \| let i=i+1
" 插入当前时间
nmap <leader>rt a<C-R>=strftime('%Y-%m-%d %H:%M:%S')<CR><ESC>

"{{{1  字体 菜单 状态栏 文件编码 
"状态栏
set statusline=%f         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

"设置工具栏
if has("gui_running")
    set guioptions-=m "隐藏菜单栏
    set guioptions-=T "隐藏工具栏
    set guioptions-=L "隐藏左侧滚动条
    set guioptions-=r "隐藏右侧滚动条
    set showtabline=0 "隐藏Tab栏
endif

"编码字体设置
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,chinese,default,big5,ucs-bom

"处理consle输出乱码
language messages zh_CN.utf-8

"处理菜单及右键菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"字体
set guifont=WenQuanYI\ Micro\ Hei\ Mono\ 12

"{{{1  扩展文件 本地化 
behave mswin

source $VIMRUNTIME/mswin.vim
source ~/.vim/bundle/Alei/oracle.vim
source ~/.vim/bundle/Alei/folding.vim

"{{{1  缩进 光标 匹配 折叠  
set expandtab         " tab键转换为空格
set tabstop=2         " tab转换为2个空格
set shiftwidth=2      " 缩进为2个空格
set autoindent        " 自动缩进
set showmatch         " 匹配括号高亮
set magic             " 显示括号配对情况
set ruler             " 显示光标和状态行
set hlsearch          " 搜索匹配高亮显示
set foldenable        " 开始折叠
set foldmethod=syntax " 设置语法折叠
setlocal foldlevel=1  " 设置折叠开始的层级

"{{{1  窗口 跳转  
" 定义快捷键到行首和行尾
nmap <Leader>b 0
nmap <Leader>e $
omap <Leader>b 0
omap <Leader>e $
vmap <Leader>b 0
vmap <Leader>e $

" 在插入状态下，向右移动
imap <Localleader>\ <Esc>la

" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>nr <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>nl <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>nu <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>nd <C-W>j

" html首尾标签间跳转
runtime macros/matchit.vim 

"{{{1  多页签  
" 0 不显示， 1 两个以上，显示多页签 2 永远显示
set showtabline=1
" 给页签加上序号
set guitablabel=%N\#\ %t
"set guitablabel=%N\ \|\ %t

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

" 新页签
nmap <Leader>nt :tabnew<cr>

"{{{1  复制 粘贴 取消 退出 保存 
" 系统复制
vnoremap <Leader>y "+y
" 系统粘贴
nmap <Leader>p "+p

" 当前buffer复制 a寄存器
vnoremap <Leader>vy "ay
" 当前buffer粘贴 a寄存器
nmap <Leader>vp "ap

" 取消
imap ;; <Esc>
vmap ;; <Esc>
cmap ;; <c-u><Esc>
map ;; <Esc>

" ;符号本身
imap ;e ;<Esc>

" 映射F4 退出
nmap <F4> :q<cr>
vmap <F4> <Esc>:q<cr>
cmap <F4> <c-u>q<cr>
imap <F4> <Esc>:q<cr>

" 映射F5 强制退出
nmap <F5> :q!<cr>
vmap <F5> <Esc>:q!<cr>
cmap <F5> <c-u>q!<cr>
imap <F5> <Esc>:q!<cr>

" 定义快捷键关闭当前窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>


"{{{1  映射常用快捷键：去除高亮 向下插入行 打开工作目录 emmet自动转换 提示
" 下一页
nmap <Leader>j <C-f>
" 上一页
nmap <Leader>k <C-b>
" 移动到屏幕中间
nmap <Leader>f <S-m>

" 取消匹配高亮
nmap <silent> <Leader>nn :nohl<CR>

" 向下插入一行，并返回到普通模式
nmap <Leader>o o<esc>

" 切换路径至常用工作区
nmap <Leader>nf :NERDTree C:/space<cr>

" 加载当前文件
nmap <Leader>ns :source %<cr>

" 打开当前文件对应的目录树
nmap <Leader>ne :NERDTree %:h<cr>

" emmet自动转换html
nmap <Leader>, <C-y>
imap <Leader>, <C-y>
omap <Leader>, <C-y>
vmap <Leader>, <C-y>

" html提示
imap <Leader>no <C-x><C-o>
nmap <Leader>no a<C-x><C-o>

"{{{1  成对的符号自动补齐 
let g:is_pair = 0
function MyPair()
  if g:is_pair == 0
    inoremap ( ()<ESC>i
    inoremap [ []<ESC>i
    inoremap { {}<ESC>i
    inoremap < <><ESC>i
    inoremap " ""<ESC>i
    inoremap ' ''<ESC>i
    let g:is_pair = 1
    if exists("g:not_first_load")
      echom "Status: pair"
    else
      let g:not_first_load = 0
    endif
  else
    inoremap ( (
    inoremap [ [
    inoremap { {
    inoremap < <
    inoremap " "
    inoremap ' '
    let g:is_pair = 0
    echom "Status: no pair"
  endif
endfunction   

" call MyPair()
 
" 开关括号引号补齐
nmap <leader>np :call MyPair()<cr>

"{{{1 功能键映射 SQL相关： 对齐 时间戳 对齐线
"映射 F6 带有别名的字段分列对齐   F7 字段分列对齐（全选）   F8 字段分列对齐
vmap <F6> :Aleis 4<cr>;nn
nmap <F7> ggVG:Alei 4<cr>;nn
vmap <F8> :Alei 4<cr>;nn

"调用firefox打开当前html
nmap <F12> :silent ! "firefox" %<cr>

" 对齐线
let g:is_show_line = 0
function ShowLine()
  if g:is_show_line == 0
    set cursorcolumn
    let g:is_show_line = 1
  else
    set nocursorcolumn
    let g:is_show_line = 0
  endif
endfunction   

nmap <leader>c :call ShowLine()<cr>

"{{{1  ruby  
augroup comments
    autocmd FileType ruby :iabbrev <buffer> iff if ()<left>
augroup END

"{{{1 autocmd 各种文件类型的注释  
augroup comments
    autocmd FileType sql        nnoremap <buffer> <localleader>c I--<esc>
    autocmd FileType xml        nnoremap <buffer> <localleader>c I<!--<esc>A--><esc>
    autocmd FileType html       nnoremap <buffer> <localleader>c I<!--<esc>A--><esc>
    autocmd FileType ruby       nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType shell      nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType java       nnoremap <buffer> <localleader>c I/*<esc>A*/<esc>
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END


"{{{1  autocmd 自动补齐
augroup auto_complete
    autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
augroup END
