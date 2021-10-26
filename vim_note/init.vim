" 不与vi兼容
set nocompatible

"打开语法高亮
syntax on

" 显示行号
set number
" 搜索时，高亮现实匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配结果
set incsearch
" 在底部现实，当前处于命令模式还是插入模式
set showmode
" 在命令模式下，在底部现实，当前键入的命令
set showcmd
" 使用utf-8编码
set encoding=utf-8
" 启用256色
set t_Co=256
" 按下Tab键时，vim显示的空格数
" 在文本上按下>>(增加一级缩进),<<(取消一级缩进)或者==(取消全部缩进)时，每一级的字符数
" Tab 转为多少个空格
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
"set relativenumber
" 光标所在的当前行高亮。
set cursorline
" 自动折行，即太长的行分成几行显示。
set wrap
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak
" 指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2
" 垂直滚动时，光标距离顶部/底部的位置（单位：行）。
set scrolloff=2
" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2
" 在状态栏显示光标的当前位置（位于哪一行哪一列）。
set ruler
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch
" 搜索时忽略大小写
set ignorecase
" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set smartcase
" 打开英语单词的拼写检查。
set spell spelllang=en_us
" 出错时，不要发出响声。
set noerrorbells
" 出错时，发出视觉提示，通常是屏幕闪烁。
set visualbell
" Vim 需要记住多少次历史操作。
set history=1000
" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread
" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set listchars=tab:»■,trail:■
set list

filetype indent on

colorscheme snazzy

let mapleader=" "

" abbreviations配置
iabbrev mbig -- <cr>Martin<cr>mabin9802@163.com
iabbrev @@ mabin9802@163.com

nnoremap S :w<CR>
nnoremap Q :q<CR>
nnoremap H 0
nnoremap L $

" 右边分屏
nnoremap <C-l> <C-w>v
" 下边分屏
nnoremap <C-s> <C-w>s
" 移动光标至(下，右，上，左)窗口
map <LEADER>j <C-w>j
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h

" 移动多行
nnoremap J 5j
" nnoremap K 5K

" 单引号包围单词
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" 双引号包围单词
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel


" nerdtree
nnoremap <LEADER>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
call plug#end()
