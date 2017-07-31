"关闭vi兼容模式
set nocompatible  
"设置文件检测编码
set fileencodings=utf-8,gbk,gb2312,ucs-bom,chinese,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"设置内部编码
set encoding=utf-8
"设置新建文件保存编码
set fileencoding=utf-8
"搜索忽略大小写
set ignorecase smartcase  
"开启实时搜索功能
set incsearch
"高亮搜索
set hlsearch       
"显示行号 
set nu!
set relativenumber
"显示尺标
set ruler
"突出显示当前行
set cursorline
hi CursorLine  cterm=NONE ctermbg=darkred ctermbg=darkred ctermfg=white
"突出显示当前列
"set cursorcolumn
"命令打开文件类型检测功能，它相当于文件类型检测功能的开关
filetype on
"运行环境载入不同插件 indent代表不同文件类型不同的缩排方式 .vim/indent
filetype plugin indent on
"语法高亮
syntax enable
syntax on
"自动缩进
set autoindent
"table键盘4空格
set tabstop=4
"当使用移动(shift)命令时移动的字符数
set shiftwidth=4
"增强模式中的命令行自动完成操作,可以在命令行下Tab键给出命令列表
set wildmenu
set wildmode=longest:list,full 
"显示状态栏
set laststatus=2
"基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
set foldcolumn=0
"启动 vim 时关闭折叠代码
set nofoldenable
"定义快捷键的前缀，即<Leader>
let mapleader=";"
"nnoremap 普通模式(normal mode)下生效的映射 与map的区别是不会递归映射
"inoremap 插入模式(insert mode)下生效
"配色方案
"colorscheme moss

" 让 Vundle管理插件
"调用vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tomtom/tlib_vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 'f'
Bundle 'tpope/vim-surround'
Bundle 'tristen/vim-sparkup'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'pangloss/vim-javascript'
"代码存放在 vim script 上
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
Bundle 'file:///home/ducp/.vim/bundle/load_template.vim'
"
" " 代码存放在其他地方
Bundle 'git://git.wincent.com/command-t.git'
" " ...
"
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install(update) bundles
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
" " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle command are not allowed..
"

"新建文件时，自动替换变量
let g:template_load = 1 
""目录的模板文件所在目录
let g:template_path = "/home/ducp/.vim/bundle/load_template.vim/template/"
let g:template_tags_replacing = 1 
let g:T_AUTHOR = "duchunpeng"
let g:T_AUTHOR_EMAIL = "duchunpeng@baidu.com"
let g:T_AUTHOR_WEBSITE = "http://wiki.baidu.com/pages/viewpage.action?pageId=327598393"
let g:T_LICENSE = "2017"
let g:T_CREATE_DATE = getftime('expand(‘%:p’)')
"%c => Fri 22 May 2015 02:57:30 PM CST
let g:T_DATE_FORMAT = "%c" 

"设置 tagslist
"让taglist窗口出现在Vim的右边
let Tlist_Use_Right_Window = 1
"当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close = 1
"只显示一个文件中的tag，默认为显示多个
let Tlist_Show_One_File = 1
"Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
"let Tlist_Sort_Type ='name'
"Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_GainFocus_On_ToggleOpen = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"设置窗体宽度为32，可以根据自己喜好设置
let Tlist_WinWidth = 32
"这里比较重要了，设置ctags的位置
let Tlist_Ctags_Cmd ='/usr/bin/ctags'
"热键设置
"map t :TlistToggle
map <silent> <F8> :TlistToggle<cr>
map <F3> :NERDTreeToggle<CR>

set tags=tags;    "   其中 ; 不能没有
set autochdir
nnoremap <Tab> <c-w>w
nnoremap <bs> <c-w>p
