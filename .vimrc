" 显示命令菜单
set wildmenu
" 不使用兼容模式
set nocompatible
" 历史记录条数
set history=50
" 在Vim窗口的右下角显示当前光标位置
set ruler
" 会在输入命令时,在屏幕底部显示出部分命令
set showcmd
" 实时匹配搜索输入
set incsearch
" 设置匹配模式,类似当输入一个左括号时会匹配相应的右括号
set showmatch
" 在底部显示当前模式
set showmode
" 对搜索词高亮显示
set hlsearch
" terminal Color,默认是8色
set t_Co=256
set cino=:0


" 打开行号
set number

" 自动缩进
set autoindent
" 开启自动缩进
set ai
"c语言缩进风格
set cindent

"打开语法高亮
colo ron
syntax on

"设置真彩色
set termguicolors
"设置配色方案
colorscheme neodark

"-- set tab \t space
set shiftwidth=4                
set backspace=2
set tabstop=4
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'KeitaNakamura/neodark.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set csto=0
" add any cscope database in current directory
if filereadable("cscope.out")
    cs add cscope.out  
"else add the database pointed to by environment variable 
elseif $CSCOPE_DB != ""
   cs add $CSCOPE_DB
endif

" show msg when any other cscope db added
set cscopeverbose  

""""""""""""" My cscope/vim key mappings
"
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
"
" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.  
"
nmap <F12>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <F12>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <F12>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <F12>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <F12>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <F12>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <F12>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <F12>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

nmap <C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>	

"nmap <C-_>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
"nmap <C-_>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
"nmap <C-_>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
"nmap <C-_>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
"nmap <C-_>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
"nmap <C-_>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
"nmap <C-_>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>d :scs find d <C-R>=expand("<cword>")<CR><CR>	

""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-n> : NERDTreeToggle<CR>

