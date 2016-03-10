" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on


" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

" 配色方案
"set background=dark
"colorscheme solarized
"colorscheme molokai
"let g:molokai_original = 1


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch


" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
"let g:Powerline_symbols = 'fancy'

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable


" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" " 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>



" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" " 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" " 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" " 显示隐藏文件
let NERDTreeShowHidden=1
" " NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" "调出Tagbar
nmap <F8> :TagbarToggle<CR>

" "转到定义或声明时的显示方式，默认为gd已可用
au filetype go nmap <Leader>ds <Plug>(go-def-split)
au filetype go nmap <Leader>dv <Plug>(go-def-vertical)
au filetype go nmap <Leader>dt <Plug>(go-def-tab)


au filetype go nmap <Leader>i <Plug>(go-info)



let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" " buffer 切换快捷键
map <Leader>bn :MBEbn<cr>
map <Leader>bb :MBEbp<cr>


