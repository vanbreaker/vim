set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>


Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc|o)$' 


Bundle 'Valloric/YouCompleteMe'
" 设置跳转到方法/函数定义的快捷键 
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" 触发补全快捷键 
let g:ycm_global_ycm_extra_conf = '/home/tao/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
let g:ycm_auto_trigger = 1 
let g:ycm_confirm_extra_conf=0
" 最小自动触发补全的字符大小设置为 3 
let g:ycm_min_num_of_chars_for_completion = 3 
" YCM的previw窗口比较恼人，还是关闭比较好 
set completeopt-=preview 

set number
set helplang=cn
set ai      
set bs=2
set showmatch
set autoread
set autoindent

set syntax =on
set smartindent

set cursorline
set hls

:filetype on
:filetype plugin on
:filetype indent on

set fencs=utf-8,gbk
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
set termencoding=utf-8
